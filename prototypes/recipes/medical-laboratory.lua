data:extend({{
  
  -- Creation Category
  name = "medical-laboratory",
  type = "recipe",
  category = "crafting",
  enabled = true,

  -- Inventory Ordering
  subgroup = "flesh-subgroup",

  -- Graphics
  icon = "__flesh-planet__/graphics/items/medical-laboratory/icon.png",

  -- Recipe
  ingredients = {
    {type = "item", name = "sarkis-flesh", amount = 5},
    {type = "item", name = "iron-plate", amount = 5},
    {type = "item", name = "plastic-bar", amount = 5},
    {type = "item", name = "steel-plate", amount = 2}
  },

  energy_required = 0.5, -- time in seconds
  results = {{type = "item", name = "medical-laboratory", amount = 1}}
}})
