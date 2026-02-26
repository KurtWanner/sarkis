-- Burner drill
data:extend {{
  
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
}}


-- For _, name in Pairs(Sarkis.constants.flesh_drills
--    For i, element in Pairs(Sarkis.constants[name]
--      "flesh-" + name + "-" + i
--      element[1] is blood
--      element[2] is flesh
--      element[3] is nerve
--      element[4] is bone

for _, drill in pairs(Sarkis.constants.flesh_drills) do
  local key = drill:gsub("-", "_")
  for i, ingreds in pairs(Sarkis.constants[key].recipes) do
    data:extend {{
      type = "recipe",
      name = "flesh-" .. drill .. "-" .. (i - 1),
      category = "ground-digging",
      energy_required = Sarkis.constants[key].energy_required,
      ingredients = {},
      
      results = {
        {type = "fluid",name = "sarkis-blood", amount = ingreds[1]},
        {type = "item", name = "sarkis-flesh", amount = 1, probability = ingreds[2]},
        {type = "item", name = "sarkis-nerve-fiber", amount = 1, probability = ingreds[3]},
        {type = "item", name = "sarkis-bone-fragment", amount = 1, probability = ingreds[4]}
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
      },
      hidden_in_factoriopedia = true,
      hide_from_player_crafting = true,
      factoriopedia_alternative = "flesh-drilling"
    }}
  end
end


data:extend {{
  type = "recipe",
  name = "flesh-drilling",
  category = "ground-digging",
  energy_required = 1,
  ingredients = {},
  results = {
    {type = "fluid",name = "sarkis-blood", amount = 10},
    {type = "item", name = "sarkis-flesh", amount = 1, probability = 1},
    {type = "item", name = "sarkis-nerve-fiber", amount = 1, probability = 1},
    {type = "item", name = "sarkis-bone-fragment", amount = 1, probability = 1}
  },
  enabled = false,
  show_amount_in_title = false,
  allow_decomposition = false,
  allow_productivity = true,
  maximum_productivity = 9999999,
  main_product = "sarkis-flesh",
  auto_recycle = false,
  always_show_made_in = false

}}