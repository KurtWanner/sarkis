local item = {
    type = "tool",
    name = "medical-science-pack",
    icon = "__flesh-planet__/graphics/items/medical-science-pack/icon.png",
    icon_size = 64,
    stack_size = 200,
    subgroup = "science-pack",
    order = "z[flesh]",
    weight = 10000,
    durability = 1,
    spoil_ticks = 60 * 60 * 60 * 10,
    spoil_result = "sarkis-dead-flesh",
}

data:extend({item})
