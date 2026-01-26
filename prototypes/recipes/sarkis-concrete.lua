local recipe = {
  
  -- Creation Category
  name = "sarkis-concrete",
  type = "recipe",
  category = "crafting-with-fluid",
  enabled = true,

  -- Inventory Ordering
  subgroup = "flesh-subgroup",

  -- Graphics
  icon = "__base__/graphics/icons/concrete.png",

  -- Recipe
  ingredients = {
    {type = "item", name = "sarkis-bone-powder", amount = 5},
    {type = "fluid", name = "sarkis-plasma", amount = 50}
  },

  energy_required = 3, -- time in seconds
  results = {
    {type = "item", name = "concrete", amount = 10}
  },

}

data:extend({
  recipe
})