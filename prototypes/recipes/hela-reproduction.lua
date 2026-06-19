local recipe = {
  
  -- Creation Category
  name = "hela-reproduction",
  type = "recipe",
  category = "flesh-processing",
  enabled = true,

  -- Inventory Ordering
  subgroup = "flesh-subgroup",

  -- Graphics
  icon = "__flesh-planet__/graphics/items/petri-dish/icon_1.png",

  -- Recipe
  ingredients = {
    {type = "item", name = "sarkis-hela-cell", amount = 1},
    {type = "item", name = "sarkis-flesh", amount = 1}
  },

  energy_required = 5, -- time in seconds
  results = {
    {type = "item", name = "sarkis-hela-cell", amount = 2}
  },

}

data:extend({
  recipe
})