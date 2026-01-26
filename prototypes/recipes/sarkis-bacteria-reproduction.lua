local recipe = {
  
  -- Creation Category
  name = "sarkis-bacteria-reproduction",
  type = "recipe",
  category = "flesh-processing",
  enabled = true,

  -- Inventory Ordering
  subgroup = "flesh-subgroup",

  -- Graphics
  icon = "__flesh-planet__/graphics/items/sarkis-blood/icon.png",

  -- Recipe
  ingredients = {
    {type = "item", name = "sarkis-bacteria", amount = 1},
    {type = "fluid", name = "sarkis-blood", amount = 20},
    {type = "fluid", name = "sarkis-plasma", amount = 10}
  },

  energy_required = 1, -- time in seconds
  results = {
    {type = "item", name = "sarkis-bacteria", amount = 3},
  },
  crafting_machine_tint = {
    primary = {1,0,0},
    secondary = {1,1,0},
    tertiary = {0,1,0},
  }

}

data:extend({
  recipe
})