local recipe = {
  
  -- Creation Category
  name = "sarkis-penicillin",
  type = "recipe",
  category = "flesh-processing",
  enabled = true,

  -- Inventory Ordering
  subgroup = "flesh-subgroup",

  -- Graphics
  icon = "__flesh-planet__/graphics/items/sarkis-penicillin/icon.png",

  -- Recipe
  ingredients = {
    {type = "item", name = "sarkis-bacteria", amount = 2},
    {type = "fluid", name = "sarkis-plasma", amount = 10}
  },

  energy_required = 1, -- time in seconds
  results = {
    {type = "item", name = "sarkis-penicillin", amount = 1},
  },
  crafting_machine_tint = {
    primary = {1,0,0},
    secondary = {0,1,0},
    tertiary = {0,0,1},
    quaternary = {1,1,1}
  }

}

data:extend({
  recipe
})