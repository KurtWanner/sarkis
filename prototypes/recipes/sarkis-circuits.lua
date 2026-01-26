local recipe = {
  
  -- Creation Category
  name = "sarkis-circuits",
  type = "recipe",
  category = "electronics",
  enabled = true,

  -- Inventory Ordering
  subgroup = "flesh-subgroup",

  -- Graphics
  icon = "__base__/graphics/icons/processing-unit.png",

  -- Recipe
  ingredients = {
    {type = "item", name = "sarkis-nerve-fiber", amount = 1},
    {type = "item", name = "electronic-circuit", amount = 4},
    {type = "item", name = "carbon", amount = 1}
  },

  energy_required = 2, -- time in seconds
  results = {
    {type = "item", name = "processing-unit", amount = 1}
  },

}

data:extend({
  recipe
})