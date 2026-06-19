local recipe = {
  
  -- Creation Category
  name = "sarkis-plastic",
  type = "recipe",
  category = "flesh-processing",
  enabled = true,
  allow_productivity = false,

  -- Inventory Ordering
  subgroup = "flesh-subgroup",

  -- Graphics
  icon = "__base__/graphics/icons/plastic-bar.png",

  -- Recipe
  ingredients = {
    {type = "item", name = "syphilis-syringe", amount = 1},
    {type = "item", name = "sarkis-dead-flesh", amount = 3}
  },

  energy_required = 2, -- time in seconds
  results = {
    {type = "item", name = "plastic-bar", amount = 3},
    {type = "item", name = "empty-syringe", amount = 1}
  },

}

data:extend({
  recipe
})