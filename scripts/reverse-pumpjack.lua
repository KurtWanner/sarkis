
local rro = Sarkis.rro
local Public = {}

local mining_drill_prototypes = prototypes.get_entity_filtered{{filter="type",type="mining-drill"}}

function Public.construct_reverse_pumpjack(event)
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

    if not Sarkis.constants.pumpjacks[name] then return end
    local drill_name = "reverse-" .. name
    
    local position = event.cursor_position
    local direction = event.cursor_direction
    local player_position = (player.character or player).position
    local distance = math.sqrt((position.x-player_position.x)^2+(position.y-player_position.y)^2)
    if surface.entity_prototype_collides(drill_name, position, false) then return end
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
    surface.create_entity {
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
end


Sarkis.events.register_delayed_function("construct_reverse_pumpjack", Public.construct_reverse_pumpjack)

Sarkis.events.on_event({"build", "build-ghost", "super-forced-build"}, function(event)
    Sarkis.events.execute_later("construct_reverse_pumpjack", 1, event)
end)