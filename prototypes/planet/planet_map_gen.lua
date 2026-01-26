local planet_map_gen = require("__base__/prototypes/planet/planet-map-gen")

planet_map_gen.sarkis = function()
    return
    {
      aux_climate_control = false,
      moisture_climate_control = false,
      property_expression_names = {
       },
      cliff_settings = {
        name = "sarkis-cliff",
        richness = 0
      },
      autoplace_controls = {
      },
      autoplace_settings = {
        ["tile"] =
        {
          settings =
          {
            ["sarkis-red-desert"] = {},
            ["sarkis-dirt-1"] = {},

          }
        },
        ["decorative"] = {
          settings =
          {
            ["medium-rock"] = {},
            ["small-rock"] = {},
            ["tiny-rock"] = {},
            ["crater-small"] = {},
                
          }
        },
        ["entity"] =
        {
          settings =
          {
            ["stone"] = {},
            
          }
        }
      }
    }
  end

  return planet_map_gen