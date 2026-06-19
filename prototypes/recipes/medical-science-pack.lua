data:extend({{
  -- Creation Category
  name = "medical-science-pack-1",
  type = "recipe",
  category = "flesh-processing",
  enabled = true,
  allow_productivity = false,

  -- Inventory Ordering
  subgroup = "flesh-subgroup",

  -- Graphics
  icon = "__flesh-planet__/graphics/items/medical-science-pack/icon.png",

  -- Recipe
  ingredients = {
    {type = "item", name = "sarkis-flesh", amount = 5},
    {type = "fluid", name = "sarkis-blood", amount = 10}
  },

  energy_required = 1, -- time in seconds
  results = {
    {type = "item", name = "medical-science-pack", amount = 1, percent_spoiled = 0.96}
  },
  crafting_machine_tint = {
    primary = {1,0,0},
    secondary = {1,0,0},
    tertiary = {1,0,0},
    quaternary = {1,0,0}
  }

}})

data:extend({{
  -- Creation Category
  name = "medical-science-pack-2",
  type = "recipe",
  category = "flesh-processing",
  enabled = true,
  allow_productivity = false,

  -- Inventory Ordering
  subgroup = "flesh-subgroup",

  -- Graphics
  icon = "__flesh-planet__/graphics/items/medical-science-pack/icon.png",

  -- Recipe
  ingredients = {
    {type = "item", name = "medical-science-pack", amount = 1},
    {type = "item", name = "sarkis-infected-flesh", amount = 1},
    {type = "fluid", name = "sarkis-plasma", amount = 10},
  },

  energy_required = 1, -- time in seconds
  results = {
    {type = "item", name = "medical-science-pack", amount = 1, percent_spoiled = 0.8}
  },
  crafting_machine_tint = {
    primary = {1,0,0},
    secondary = {1,0,0},
    tertiary = {1,0,0},
    quaternary = {1,0,0}
  }

}})

data:extend({{
  -- Creation Category
  name = "medical-science-pack-3",
  type = "recipe",
  category = "flesh-processing",
  enabled = true,

  -- Inventory Ordering
  subgroup = "flesh-subgroup",

  -- Graphics
  icon = "__flesh-planet__/graphics/items/medical-science-pack/icon.png",

  -- Recipe
  ingredients = {
    {type = "item", name = "medical-science-pack", amount = 1},
    {type = "item", name = "sarkis-nerve-fiber", amount = 1},
    {type = "item", name = "sarkis-bone-powder", amount = 3},
    {type = "item", name = "sarkis-hela-cell", amount = 3},
    

  },

  energy_required = 1, -- time in seconds
  results = {
    {type = "item", name = "medical-science-pack", amount = 1, percent_spoiled = 0}
  },
  crafting_machine_tint = {
    primary = {1,0,0},
    secondary = {1,0,0},
    tertiary = {1,0,0},
    quaternary = {1,0,0}
  }

}})
