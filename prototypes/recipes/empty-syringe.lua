local recipe = {
  
  -- Creation Category
  name = "empty-syringe",
  type = "recipe",
  category = "crafting",
  enabled = true,

  -- Inventory Ordering
  subgroup = "flesh-subgroup",

  -- Graphics
  icon = "__flesh-planet__/graphics/items/empty-syringe/icon.png",

  -- Recipe
  ingredients = {
    {type = "item", name = "iron-plate", amount = 1}
  },

  energy_required = 0.5, -- time in seconds
  results = {
    {type = "item", name = "empty-syringe", amount = 1}
  },

}

data:extend({
  recipe
})