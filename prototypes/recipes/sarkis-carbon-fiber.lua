local recipe = {
  
  -- Creation Category
  name = "sarkis-carbon-fiber",
  type = "recipe",
  category = "flesh-processing",
  enabled = true,

  -- Inventory Ordering
  subgroup = "flesh-subgroup",

  -- Graphics
  icon = "__base__/graphics/icons/processing-unit.png",

  -- Recipe
  ingredients = {
    {type = "item", name = "sarkis-nerve-fiber", amount = 1},
    {type = "item", name = "carbon", amount = 1}
  },

  energy_required = 0.5, -- time in seconds
  results = {
    {type = "item", name = "carbon-fiber", amount = 1}
  },

}

data:extend({
  recipe
})