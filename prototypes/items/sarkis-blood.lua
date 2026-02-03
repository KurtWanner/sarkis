local item = {
    type = "fluid",
    name = "sarkis-blood",
    icon = "__flesh-planet__/graphics/items/sarkis-blood/icon.png",
    icon_size = 64,
    default_temperature = 98.6,
    base_color = {102, 0, 0}, -- Blood red
    flow_color = {102, 0, 0},
    subgroup = "flesh-subgroup",
    order = "flesh",
    fuel_value = "10kJ"
}

data:extend({item})
