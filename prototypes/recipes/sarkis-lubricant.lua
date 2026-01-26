local recipe = {
  
  -- Creation Category
  name = "sarkis-lubricant",
  type = "recipe",
  category = "chemistry",
  enabled = true,

  -- Inventory Ordering
  subgroup = "flesh-subgroup",

  -- Graphics
  icon = "__base__/graphics/icons/fluid/lubricant.png",

  -- Recipe
  ingredients = {
    {type = "item", name = "sarkis-bone-fragment", amount = 1},
    {type = "fluid", name = "sarkis-plasma", amount = 20}
  },

  energy_required = 1, -- time in seconds
  results = {
    {type = "fluid", name = "lubricant", amount = 10}
  },

}

data:extend({
  recipe
})