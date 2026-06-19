local item = {
    type = "sticker",
    name = "syphilis-effect",
    icon = "__flesh-planet__/graphics/items/blood-syringe/icon.png",
    icon_size = 64,
    stack_size = 100,
    subgroup = "flesh-subgroup",
    order = "flesh",
    duration_in_ticks = 60 * 60 * 60,
    damage_interval = 60 * 25,
    damage_per_tick = {amount = 0, type = "physical"},
    use_damage_substitute = false,
    
}

data:extend({item})
