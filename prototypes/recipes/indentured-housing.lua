local recipe = {
  
  -- Creation Category
  name = "indentured-housing",
  type = "recipe",
  category = "crafting",
  enabled = true,

  -- Inventory Ordering
  subgroup = "flesh-subgroup",

  -- Graphics
  icon = "__flesh-planet__/graphics/items/indentured-housing/icon.png",

  -- Recipe
  ingredients = {
    {type = "item", name = "steel-plate", amount = 20},
    {type = "item", name = "concrete", amount = 10}
  },
  energy_required = 1, -- time in seconds
  results = {{type = "item", name = "indentured-housing", amount = 1}}
}

data:extend({
  recipe
})