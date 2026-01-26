local item_sounds = require("__base__.prototypes.item_sounds")

local indentured_housing = {
    type = "item",
    name = "indentured-housing",
    stack_size = 10,
    
    -- Graphics
    icon = "__flesh-planet__/graphics/indentured-housing/icons/indentured-housing.png",
    icon_size = 64,
    
    
    -- Inventory Ordering
    subgroup = "flesh-subgroup",
    order = "indentured-housing",

    -- Entity 
    place_result = "indentured-housing",

    -- Sounds
    inventory_move_sound = item_sounds.metal_small_inventory_move,
    pick_sound = item_sounds.metal_small_inventory_pickup,
    drop_sound = item_sounds.metal_small_inventory_move,
}

data:extend({
    indentured_housing
})