local recipe = {
  
  -- Creation Category
  name = "empty-blood-syringe",
  type = "recipe",
  category = "crafting-with-fluid",
  enabled = true,
  allow_productivity = false,

  -- Inventory Ordering
  subgroup = "flesh-subgroup",

  -- Graphics
  icon = "__flesh-planet__/graphics/items/blood-syringe/icon.png",

  -- Recipe
  ingredients = {
    {type = "item", name = "blood-syringe", amount = 1}
  },

  energy_required = 1, -- time in seconds
  results = {
    {type = "item", name = "empty-syringe", amount = 1},
    {type = "fluid", name = "sarkis-blood", amount = 10}
  },


}

data:extend({
  recipe
})