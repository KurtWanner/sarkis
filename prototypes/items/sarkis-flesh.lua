local item = {
    type = "item",
    name = "sarkis-flesh",
    icon = "__flesh-planet__/graphics/items/sarkis-flesh/icon.png",
    icon_size = 64,
    stack_size = 100,
    subgroup = "flesh-subgroup",
    order = "flesh",
    spoil_ticks = 60 * 60 * 5,
    spoil_result = "sarkis-dead-flesh",
    weight = 10000
}

data:extend({item})
