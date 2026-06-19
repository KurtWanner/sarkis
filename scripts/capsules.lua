local Public = {}

function Public.hasSyphilis(player)
    local syphilis = false
    if player.stickers then
        for _, sticker in ipairs(player.stickers) do
            if sticker and sticker.valid and sticker.name == "syphilis-effect" then 
                syphilis = true
                break
            end
        end
    end
    return syphilis
end

function Public.update_health(event)
    local player = game.get_player(event.player_index).character
    local hasSyphilis = Public.hasSyphilis(player)

    if not hasSyphilis then return end
    
    if player.get_health_ratio() > 0.5 then
        player.health = player.max_health * 0.5 
    elseif player.health > 6 then
        player.health = player.health - 5
    else 
        player.die()
        return
    end
    
    Sarkis.events.execute_later("update_health", 60*10, event)
end

function Public.empty_syringe(event)
    if event.item.name ~= "empty-syringe" then return end

    local player = game.get_player(event.player_index).character
    local surface = player.surface
    local position = event.position
    local offset = 5
    -- Determine if player has syphilis

    local item = "blood-syringe"

    if Public.hasSyphilis(player) then
        item = "syphilis-syringe"
    end

    local inventory = player.get_main_inventory() 

    if inventory.can_insert({name=item, count=1}) then
        inventory.insert({name=item, count=1})
    else 
        surface.spill_item_stack(position, {name=item, count=1})
    end

    if player.health > 21 then
        player.health = player.health - 20
    else 
        player.die()
    end

end

function Public.penicillin(event)
    local player = game.get_player(event.player_index).character
    if not Public.hasSyphilis(player) then return end
    if event.item.name ~= "sarkis-penicillin" then return end

    for _, sticker in ipairs(player.stickers) do
        if sticker and sticker.valid and sticker.name == "syphilis-effect" then 
            sticker.destroy()
        end
    end

end

Sarkis.events.register_delayed_function("update_health", Public.update_health)

Sarkis.events.on_event({"on_player_used_capsule"}, function(event)
    Sarkis.events.execute_later("update_health", 5, event)
end)

Sarkis.events.on_event("on_player_used_capsule", Public.empty_syringe)
Sarkis.events.on_event({"on_player_used_capsule"}, Public.penicillin)
