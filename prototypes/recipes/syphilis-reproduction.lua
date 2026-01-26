local recipe = {
  
  -- Creation Category
  name = "syphilis-reproduction",
  type = "recipe",
  category = "flesh-processing",
  enabled = true,

  -- Inventory Ordering
  subgroup = "flesh-subgroup",

  -- Graphics
  icon = "__flesh-planet__/graphics/items/syphilis-syringe/icon.png",

  -- Recipe
  ingredients = {
    {type = "item", name = "blood-syringe", amount = 1},
    {type = "item", name = "syphilis-syringe", amount = 1}
  },

  energy_required = 1, -- time in seconds
  results = {
    {type = "item", name = "syphilis-syringe", amount = 2}
  },


}

data:extend({
  recipe
})