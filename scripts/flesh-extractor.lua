
local rro = Sarkis.rro
local Public = {}

local mining_drill_prototypes = prototypes.get_entity_filtered{{filter="type",type="mining-drill"}}

function tablelength(T)
  local count = 0
  for _, entity in pairs(T) do 
    if entity.name:find("flesh") and entity.name:find("mining--drill") then
        count = count + 1 
    end
    
end
  return count
end

function Public.update_neighbors(event)

    game.print(event.entity.name)
    local entity = event.entity
    local name = entity.name
    local position = entity.position
    local surface = entity.surface

    if not (name:find("flesh") and name:find("mining--drill")) then return end

    local range_offset = 10

    local mining_drills = surface.find_entities_filtered{ 
        area= {{position.x-range_offset,position.y-range_offset},{position.x+range_offset,position.y+range_offset}}, 
        type = {"assembling-machine"},
    }

    for _, machine in pairs(mining_drills) do
        if machine.name:find("flesh") and machine.name:find("mining--drill") and machine ~= entity then
            Sarkis.events.execute_later("update_neighbors", 1, {event=event, entity=machine, recurse=false})
        end
    end

end

function Public.update_flesh_extractor(t)

    local event, entity, recurse, sub =
        t.event,
        t.entity,
        t.recurse or false,
        t.sub or 0

    -- Search for surrounding drills
    -- Based on number of drills, get new entity
    -- Destroy and rebuild drill

    game.print("Attempting to update entity")

    local surface = entity.surface
    if surface.name ~= "sarkis" then return end
    local position = entity.position
    local quality = entity.quality
    local direction = entity.direction
    local name = entity.name
    -- Get this drill prototype
    -- Remove "-flesh-drill"
    --game.print("Entity name: " .. name)
    local drill_name = name:sub(7, -3)
    --game.print("Drill name: " .. drill_name)
    local drill_prototype = mining_drill_prototypes[drill_name]
    
    local range_offset = drill_prototype.get_mining_drill_radius(quality) 

    local mining_drills = surface.find_entities_filtered{ 
        area= {{position.x-range_offset,position.y-range_offset},{position.x+range_offset,position.y+range_offset}}, 
        type = {"assembling-machine"},
    }

    local num = math.max(0, tablelength(mining_drills) - 1 - sub)
    --game.print("Found " .. num .. " neighbors")

    local deconstruct = entity.to_be_deconstructed() 
    entity.destroy()

    local new_name = "flesh-" .. drill_name .. "-" .. math.min(num, Sarkis.constants[drill_name:gsub("-", "_")].max_neighbors)
    --game.print("Replacing with " .. new_name)

    local force
    if(event.player_index) then
        force = game.get_player(event.player_index).force
    end

    if(event.robot) then
        force = event.robot.force
    end

    local new_entity = surface.create_entity {
        name = new_name,
        position = position,
        force = force,
        quality = quality,
        direction = direction,
        raise_built = false,
        create_build_effect_smoke = false,
    }

    if deconstruct then
        new_entity.order_deconstruction(force)
    end

    if not recurse then return end

    mining_drills = surface.find_entities_filtered{ 
        area= {{position.x-range_offset,position.y-range_offset},{position.x+range_offset,position.y+range_offset}}, 
        type = {"assembling-machine"},
    }

    for _, machine in pairs(mining_drills) do
        if machine.name:find("flesh") and machine.name:find("mining--drill") and machine ~= new_entity then
            Public.update_flesh_extractor{event=event, entity=machine, recurse=false}
        end
    end

end

function Public.construct_flesh_extractor(event)
    --game.print("Constructing flesh drill...")
    local player = game.get_player(event.player_index)
    if not player or not player.valid then return end
    local surface = player.surface
    if surface.name ~= "sarkis" then return end
    local cursor_stack = player.cursor_stack
    local cursor_stack_valid = cursor_stack and cursor_stack.valid_for_read and cursor_stack.count > 0
    local force = player.force
    local quality
    local name
    if cursor_stack_valid then
        name = cursor_stack.name
        quality = cursor_stack.quality
    else
        local cursor_ghost = player.cursor_ghost
        if not cursor_ghost then return end
        name = cursor_ghost.name.name
        quality = cursor_ghost.quality
    end

    if not Sarkis.constants.flesh_drills[name] then return end
    local drill_name = "flesh-" .. name .. "-0"
    
    local position = event.cursor_position
    local direction = event.cursor_direction
    local player_position = (player.character or player).position
    local distance = math.sqrt((position.x-player_position.x)^2+(position.y-player_position.y)^2)
    if surface.get_tile(position).hidden_tile then 
        player.create_local_flying_text{
            text = {"console.can-not-place-here-unnatural-tile"},
            --position = position,
            surface = surface,
            create_at_cursor = true,
            speed = 0.01,
        }
        
        return end --If tile is unnatural, like concrete, then don't place mine. Muluna addition.
    
    local is_ghost = (not cursor_stack_valid) or event.input_name == "build-ghost" or event.input_name == "super-forced-build"
    
    if player.character and (distance >= player.character.build_distance) and not is_ghost then
        -- If unreachable, then don't place
        return end
    

    local drill_prototype = mining_drill_prototypes[name]
    
    
    local range_offset = drill_prototype.get_mining_drill_radius(quality) 

    local neighboring_resources = surface.find_entities_filtered{ --Search for resources to see if a regular mining drill would be placed.
        area= {{position.x-range_offset,position.y-range_offset},{position.x+range_offset,position.y+range_offset}}, 
        type = {"resource"},
        
    }

    --If mining drill not square, this code can't cleanly handle it, so while mod-data should ideally not contain this drill,
    --this check allows them to exist in mod-data without crashing.
    local offset_width = drill_prototype.tile_width
    local offset_height = drill_prototype.tile_height
    local margin = 0.5
    if offset_width ~= offset_height then return end 

    local colliding_entities = surface.find_entities_filtered{
            area= {{position.x-offset_width/2+margin,position.y-offset_height/2+margin},{position.x+offset_width/2-margin,position.y+offset_height/2-margin}},
            to_be_deconstructed = false,
        }
    rro.replace(colliding_entities,function(entry) return entry.type == "corpse" end,nil)
    if #colliding_entities ~= 0 then return end
    
    -- Create ghost
    local new_entity = surface.create_entity {
        name = is_ghost and "entity-ghost" or drill_name,
        inner_name = is_ghost and drill_name or nil,
        position = position,
        force = player.force,
        player = player,
        quality = quality,
        direction = direction,
        raise_built = true,
    }
    
    -- Place by hand
    if not is_ghost then
        cursor_stack.count = cursor_stack.count - 1
        force.get_entity_build_count_statistics(surface).on_flow(name,1)
    end

    Public.update_flesh_extractor{event=event, entity=new_entity,recurse=true}

end


Sarkis.events.on_event(Sarkis.events.events.on_destroyed(), Public.update_neighbors)

Sarkis.events.register_delayed_function("construct_flesh_extractor", Public.construct_flesh_extractor)
Sarkis.events.register_delayed_function("update_neighbors", Public.update_flesh_extractor)


Sarkis.events.on_event({"build", "build-ghost", "super-forced-build"}, function(event)
    Sarkis.events.execute_later("construct_flesh_extractor", 1, event)
end)