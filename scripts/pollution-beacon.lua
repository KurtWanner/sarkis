local Public = {}

function Public.generate_modules(entity, pollution)
    index = math.min(Sarkis.constants.modules.max, math.floor(pollution / Sarkis.constants.modules.range)) + 1
    modules = Sarkis.constants.modules.modules[index]
    inventory = entity.get_module_inventory() 
    inventory.clear()

    if modules[1] > 0 then
        inventory.insert({name="sarkis-speed-plus", count=modules[1]})    
    end
    
    if modules[2] > 0 then
        inventory.insert({name="sarkis-speed-minus", count=modules[2]})    
    end
    
    if modules[3] > 0 then
        inventory.insert({name="sarkis-prod-plus", count=modules[3]})    
    end

    --game.print(modules[1] .. " " .. modules[2] .. " " .. modules[3])
end

function Public.update_beacons()

    local surface = game.get_surface("sarkis")
    if not surface then return end  -- if sarkis not unlocked

    local entities = surface.find_entities_filtered({name = "inflammation-beacon"})

    for _, beacon in pairs(entities) do 
        pollution = surface.get_pollution(beacon.position) 
        -- game.print(pollution)        
        Public.generate_modules(beacon, pollution)
    end

end

function Public.place_beacons(event)
    local sarkis = event.surface
    local left_top = event.area.left_top

    sarkis.create_entity {
        name = "inflammation-beacon",
        position = {x = left_top.x + 16, y = left_top.y + 16},
        create_build_effect_smoke = false,
    }

end

Sarkis.events.on_event("on_chunk_generated", Public.place_beacons)
Sarkis.events.on_nth_tick(128, Public.update_beacons)