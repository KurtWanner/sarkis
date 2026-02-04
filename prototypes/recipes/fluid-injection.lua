data:extend {{
  
  -- Creation Category
  name = "inject-blood",
  type = "recipe",
  category = "fluid-injection",
  enabled = true,
	hide_from_player_crafting = true,

  -- Inventory Ordering
  subgroup = "flesh-subgroup",

  -- Graphics
  icon = "__flesh-planet__/graphics/items/sarkis-blood/icon.png",

  -- Recipe
  ingredients = {
    {type = "fluid", name = "sarkis-blood", amount = 10},
  },
  emissions_multiplier = 1,
  energy_required = 1, -- time in seconds
  results = {},

}}

data:extend {{
  
  -- Creation Category
  name = "inject-water",
  type = "recipe",
  category = "fluid-injection",
  enabled = true,
	hide_from_player_crafting = true,

  -- Inventory Ordering
  subgroup = "flesh-subgroup",

  -- Graphics
  icon = "__base__/graphics/icons/fluid/water.png",

  -- Recipe
  ingredients = {
    {type = "fluid", name = "water", amount = 10},
  },
  emissions_multiplier = 0.5,
  energy_required = 1, -- time in seconds
  results = {},

}}

data:extend {{
  
  -- Creation Category
  name = "inject-plasma",
  type = "recipe",
  category = "fluid-injection",
  enabled = true,
	hide_from_player_crafting = true,

  -- Inventory Ordering
  subgroup = "flesh-subgroup",

  -- Graphics
  icon = "__flesh-planet__/graphics/items/sarkis-plasma/icon.png",

  -- Recipe
  ingredients = {
    {type = "fluid", name = "sarkis-plasma", amount = 10},
  },
  emissions_multiplier = 2,
  energy_required = 1, -- time in seconds
  results = {},

}}

data:extend {{
  
  -- Creation Category
  name = "inject-lubricant",
  type = "recipe",
  category = "fluid-injection",
  enabled = true,
	hide_from_player_crafting = true,

  -- Inventory Ordering
  subgroup = "flesh-subgroup",

  -- Graphics
  icon = "__base__/graphics/icons/fluid/lubricant.png",

  -- Recipe
  ingredients = {
    {type = "fluid", name = "lubricant", amount = 10},
  },
  emissions_multiplier = 4,
  energy_required = 1, -- time in seconds
  results = {},

}}