local recipe = {
  
  -- Creation Category
  name = "blood-to-iron",
  type = "recipe",
  category = "flesh-processing",
  enabled = true,

  -- Inventory Ordering
  subgroup = "flesh-subgroup",

  -- Graphics
  icon = "__flesh-planet__/graphics/items/sarkis-blood/icon.png",

  -- Recipe
  ingredients = {
    {type = "fluid", name = "sarkis-blood", amount = 100}
  },

  energy_required = 1, -- time in seconds
  results = {
    {type = "item", name = "iron-plate", amount = 5},
    {type = "fluid", name = "sarkis-plasma", amount = 50},
    {type = "fluid", name = "water", amount = 50}
  },
  main_product = "iron-plate",
  crafting_machine_tint = {
    primary = {1,0,0},
    secondary = {1,0,0},
    tertiary = {1,0,0},
    quaternary = {1,0,0}
  }

}

data:extend({
  recipe
})