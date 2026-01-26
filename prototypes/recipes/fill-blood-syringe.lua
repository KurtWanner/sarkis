local recipe = {
  
  -- Creation Category
  name = "fill-blood-syringe",
  type = "recipe",
  category = "flesh-processing",
  enabled = true,

  -- Inventory Ordering
  subgroup = "flesh-subgroup",

  -- Graphics
  icon = "__flesh-planet__/graphics/items/blood-syringe/icon.png",

  -- Recipe
  ingredients = {
    {type = "item", name = "empty-syringe", amount = 1},
    {type = "fluid", name = "sarkis-blood", amount = 10}
  },

  energy_required = 1, -- time in seconds
  results = {
    {type = "item", name = "blood-syringe", amount = 1}
  },


}

data:extend({
  recipe
})