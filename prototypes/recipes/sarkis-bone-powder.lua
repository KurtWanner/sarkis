local recipe = {
  
  -- Creation Category
  name = "sarkis-bone-powder",
  type = "recipe",
  category = "crafting",
  enabled = true,

  -- Inventory Ordering
  subgroup = "flesh-subgroup",

  -- Graphics
  icon = "__flesh-planet__/graphics/items/sarkis-bone-powder/icon.png",

  -- Recipe
  ingredients = {
    {type = "item", name = "sarkis-bone-fragment", amount = 1}
  },

  energy_required = 0.5, -- time in seconds
  results = {
    {type = "item", name = "sarkis-bone-powder", amount = 2}
  },

}

data:extend({
  recipe
})