local recipe = {
  
  -- Creation Category
  name = "carbon-from-dead-flesh",
  type = "recipe",
  category = "smelting",
  enabled = true,

  -- Inventory Ordering
  subgroup = "flesh-subgroup",

  -- Graphics
  icon = "__flesh-planet__/graphics/items/sarkis-dead-flesh/icon.png",

  -- Recipe
  ingredients = {
    {type = "item", name = "sarkis-dead-flesh", amount = 1}
  },

  energy_required = 1, -- time in seconds
  results = {
    {type = "item", name = "carbon", amount = 1}
  },

}

data:extend({
  recipe
})