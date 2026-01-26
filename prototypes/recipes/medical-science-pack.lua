local recipe = {
  
  -- Creation Category
  name = "medical-science-packk",
  type = "recipe",
  category = "flesh-processing",
  enabled = true,

  -- Inventory Ordering
  subgroup = "flesh-subgroup",

  -- Graphics
  icon = "__flesh-planet__/graphics/items/medical-science-pack/icon.png",

  -- Recipe
  ingredients = {
    {type = "item", name = "sarkis-dead-flesh", amount = 5},
    {type = "item", name = "sarkis-infected-flesh", amount = 1},
    {type = "item", name = "sarkis-penicillin", amount = 1},
    {type = "item", name = "sarkis-nerve-fiber", amount = 2},
    {type = "fluid", name = "sarkis-plasma", amount = 50}
  },

  energy_required = 1, -- time in seconds
  results = {
    {type = "item", name = "medical-science-pack", amount = 1}
  },
  crafting_machine_tint = {
    primary = {1,0,0},
    secondary = {1,0,0},
    tertiary = {1,0,0},
    quaternary = {1,0,0}
  }

}

data:extend({
  recipe
})