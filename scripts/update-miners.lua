
local rro = Sarkis.rro
local Public = {}

local mining_drill_prototypes = prototypes.get_entity_filtered{{filter="type",type="mining-drill"}}

function tablelength(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end


function Public.update_miner(t)

    local event = t.event
    local entity = t.entity
    local recursive = t.recursive or false

    
    -- Search for surrounding drills
    -- Based on number of drills, get new entity
    -- Destroy and rebuild drill

    game.print("Attempting to update entity")

    local surface = entity.surface
    if surface.name ~= "sarkis" then return end
    local player = game.get_player(event.player_index)
    local position = entity.position
    local quality = entity.quality
    local direction = entity.direction
    local name = entity.name
    -- Get this drill prototype
    -- Remove "-flesh-drill"
    local drill_prototype = mining_drill_prototypes[string.sub(name, 1, -13)]
    
    local range_offset = drill_prototype.get_mining_drill_radius(quality) 

    local mining_drills = surface.find_entities_filtered{ 
        area= {{position.x-range_offset,position.y-range_offset},{position.x+range_offset,position.y+range_offset}}, 
        type = {"assembling-machine"},
    }

    local num = tablelength(mining_drills)
    if num <= 2 then return end

    entity.destroy()

    local new_entity = surface.create_entity {
        name = "testing",
        position = position,
        force = player.force,
        player = player,
        quality = quality,
        direction = direction,
        raise_built = false,
        create_build_effect_smoke = false,
    }

    --game.print(tostring(num))

end

Sarkis.events.register_delayed_function("construct_flesh_extractor", Public.construct_flesh_extractor)

Sarkis.events.on_event({"build", "build-ghost", "super-forced-build"}, function(event)
    Sarkis.events.execute_later("construct_flesh_extractor", 1, event)
end)