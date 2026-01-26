local recipe = {
  
  -- Creation Category
  name = "infect-flesh",
  type = "recipe",
  category = "flesh-processing",
  enabled = true,

  -- Inventory Ordering
  subgroup = "flesh-subgroup",

  -- Graphics
  icon = "__flesh-planet__/graphics/items/sarkis-infected-flesh/icon.png",

  -- Recipe
  ingredients = {
    {type = "item", name = "sarkis-flesh", amount = 1},
    {type = "item", name = "syphilis-syringe", amount = 1}
  },

  energy_required = 1, -- time in seconds
  results = {
    {type = "item", name = "sarkis-infected-flesh", amount = 1},
    {type = "item", name = "empty-syringe", amount = 1}
  },


}

data:extend({
  recipe
})