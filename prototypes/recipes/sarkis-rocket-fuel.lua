local recipe = {
  
  -- Creation Category
  name = "sarkis-rocket-fuel",
  type = "recipe",
  category = "crafting-with-fluid",
  enabled = true,

  -- Inventory Ordering
  subgroup = "flesh-subgroup",

  -- Graphics
  icon = "__base__/graphics/icons/rocket-fuel.png",

  -- Recipe
  ingredients = {
    {type = "item", name = "iron-plate", amount = 1},
    {type = "item", name = "carbon", amount = 6},
    {type = "fluid", name = "sarkis-plasma", amount = 50}
    
  },

  energy_required = 2, -- time in seconds
  results = {
    {type = "item", name = "rocket-fuel", amount = 1}
  },

}

data:extend({
  recipe
})