local basic = {
  
  type = "recipe",
  name = "sarkis-flesh-digging-basic",
  category = "ground-digging",
  energy_required = 1,
  ingredients = {},
  results = {
    {type = "item", name = "sarkis-flesh", amount = 3},

  },
  enabled = false,
  show_amount_in_title = false,
  allow_decomposition = false,
  allow_productivity = true,
  maximum_productivity = 9999999,
  auto_recycle = false,
  crafting_machine_tint = {
    primary = {1,0,0},
    secondary = {1,0,0},
    tertiary = {1,0,0},
    quaternary = {1,0,0}
  }
}

local digging = {
  
  type = "recipe",
  name = "sarkis-flesh-digging",
  category = "ground-digging",
  energy_required = 1,
  ingredients = {},
  results = {
    {type = "item", name = "sarkis-flesh", amount = 5},
    {type = "fluid",name = "sarkis-blood", amount=50}

  },
  enabled = false,
  show_amount_in_title = false,
  allow_decomposition = false,
  allow_productivity = true,
  maximum_productivity = 9999999,
  main_product = "sarkis-flesh",
  auto_recycle = false,
  crafting_machine_tint = {
    primary = {1,0,0},
    secondary = {1,0,0},
    tertiary = {1,0,0},
    quaternary = {1,0,0}
  }
}

local advanced = {
  
  type = "recipe",
  name = "sarkis-flesh-digging-advanced",
  category = "ground-digging",
  energy_required = 5,
  ingredients = {},
  results = {
    {type = "item", name = "sarkis-flesh", amount = 1},
    {type = "item", name = "sarkis-bone-fragment", amount = 3},
    {type = "item", name = "sarkis-nerve-fiber", amount = 5, probability = 0.1},
    {type = "fluid",name = "sarkis-blood", amount = 10}

  },
  enabled = false,
  show_amount_in_title = false,
  allow_decomposition = false,
  allow_productivity = true,
  maximum_productivity = 9999999,
  main_product = "sarkis-flesh",
  auto_recycle = false,
  crafting_machine_tint = {
    primary = {1,0,0},
    secondary = {1,0,0},
    tertiary = {1,0,0},
    quaternary = {1,0,0}
  }
}

data:extend({
  basic, digging, advanced
})
