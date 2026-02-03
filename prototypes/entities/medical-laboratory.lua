local entity = table.deepcopy(data.raw["assembling-machine"]["foundry"])

entity["type"] = "assembling-machine"
entity["name"] = "medical-laboratory"
entity["minable"]["result"] = "medical-laboratory"
entity["crafting_categories"] = {"flesh-processing"}
entity["icon"] = "__flesh-planet__/graphics/items/medical-laboratory/icon.png"
entity["ingredient_count"] = 5
entity["fast_replaceable_group"] = ""
entity["crafting_speed"] = 1

entity["tile_width"] = 5
entity["tile_height"] = 5
entity["graphics_set"] = {
    animation = {
      layers = {
        {
          animation_speed = 0.5,
          scale = 0.32,
          filenames = {
            "__flesh-planet__/graphics/entities/medical-laboratory/pathogen-lab-hr-animation-1.png",
          },
          blend_mode = "normal",
          width = 500,
          height = 500,
          line_length = 8,
          lines_per_file = 8,
          frame_count = 60,
          shift = util.by_pixel_hr(0, 0),
          tint = { r = 1, g = 1, b = 1, a = 1 },
        },
        {
          animation_speed = 0.5,
          scale = 0.32,
          filenames = {
            "__flesh-planet__/graphics/entities/medical-laboratory/pathogen-lab-hr-emission-1.png",
          },
          blend_mode = "additive-soft",
          width = 500,
          height = 500,
          line_length = 8,
          lines_per_file = 8,
          frame_count = 60,
          shift = util.by_pixel_hr(0, 0),
          tint = { r = 1, g = 1, b = 1, a = 1 },
        },
      },
    },
  }
entity["circuit_connector"] = circuit_connector_definitions.create_vector(
    universal_connector_template,
    {
      {
        variation = 10,
        main_offset = util.by_pixel_hr(130, 90),
        shadow_offset = util.by_pixel_hr(0, 0),
        show_shadow = true,
      },
      {
        variation = 10,
        main_offset = util.by_pixel_hr(130, 90),
        shadow_offset = util.by_pixel_hr(0, 0),
        show_shadow = true,
      },
      {
        variation = 10,
        main_offset = util.by_pixel_hr(130, 90),
        shadow_offset = util.by_pixel_hr(0, 0),
        show_shadow = true,
      },
      {
        variation = 10,
        main_offset = util.by_pixel_hr(130, 90),
        shadow_offset = util.by_pixel_hr(0, 0),
        show_shadow = true,
      },
    }
  )

local pipes = {
        north = {
          layers = {
            {
              scale = 0.5,
              filename = "__space-age__/graphics/entity/electromagnetic-plant/pipe-connections/electromagnetic-plant-pipe-north.png",
              blend_mode = "normal",
              width = 60,
              height = 74,
              shift = util.by_pixel_hr(0, 50),
              tint = { r = 1, g = 1, b = 1, a = 1 },
              position = { 0, 0 },
            },
          },
        },
        east = {
          layers = {
            {
              scale = 0.5,
              filename = "__space-age__/graphics/entity/electromagnetic-plant/pipe-connections/electromagnetic-plant-pipe-east.png",
              blend_mode = "normal",
              width = 32,
              height = 56,
              shift = util.by_pixel_hr(-42, 0),
              tint = { r = 1, g = 1, b = 1, a = 1 },
              position = { 0, 0 },
            },
          },
        },
        south = {
          layers = {
            {
              scale = 0.5,
              filename = "__space-age__/graphics/entity/electromagnetic-plant/pipe-connections/electromagnetic-plant-pipe-south.png",
              blend_mode = "normal",
              width = 54,
              height = 58,
              shift = util.by_pixel_hr(0, -43),
              tint = { r = 1, g = 1, b = 1, a = 1 },
              position = { 0, 0 },
            },
          },
        },
        west = {
          layers = {
            {
              scale = 0.5,
              filename = "__space-age__/graphics/entity/electromagnetic-plant/pipe-connections/electromagnetic-plant-pipe-west.png",
              blend_mode = "normal",
              width = 38,
              height = 62,
              shift = util.by_pixel_hr(45, 4),
              tint = { r = 1, g = 1, b = 1, a = 1 },
              position = { 0, 0 },
            },
          },
        },
}
entity["fluid_boxes"] = {
    {
      volume = 1000,
      production_type = "input",
      pipe_covers = pipecoverspictures(),
      pipe_picture = table.deepcopy(pipes),
      pipe_connections = {
        {
          direction = defines.direction.south,
          flow_direction = "input",
          position = { -1, 2 },
        }
      },
      secondary_draw_orders = {
        north = -1,
        west = -1,
        east = -1
      }
    },
    {
      volume = 1000,
      production_type = "input",
      pipe_covers = pipecoverspictures(),
      pipe_picture = table.deepcopy(pipes),
      pipe_connections = {
        {
          direction = defines.direction.south,
          flow_direction = "input",
          position = { 1, 2 },
        }
      },
      secondary_draw_orders = {
        north = -1,
        west = -1,
        east = -1
      }
    },
    {
      volume = 1000,
      production_type = "output",
      pipe_covers = pipecoverspictures(),
      pipe_picture = table.deepcopy(pipes),
      pipe_connections = {
        {
          direction = defines.direction.west,
          flow_direction = "output",
          position = { -2, 1 },
        }
      },
      secondary_draw_orders = {
        north = -1,
        west = -1,
        east = -1
      }
    },
    {
      volume = 1000,
      production_type = "output",
      pipe_covers = pipecoverspictures(),
      pipe_picture = table.deepcopy(pipes),
      pipe_connections = {
        {
          direction = defines.direction.east,
          flow_direction = "output",
          position = { 2, 1 },
        }
      },
      secondary_draw_orders = {
        north = -1,
        west = -1,
        east = -1
    }
  }
}

entity["energy_source"] = {
  type = "fluid",
  burns_fluid = true,
  scale_fluid_usage = true,
  fluid_box = {
      filter = "sarkis-blood",
      volume = 1000,
      production_type = "input",
      pipe_covers = pipecoverspictures(),
      pipe_picture = table.deepcopy(pipes),
      pipe_connections = {
        {
          direction = defines.direction.north,
          flow_direction = "input",
          position = { 0, -2 },
        }
      },
      secondary_draw_orders = {
        north = -1,
        west = -1,
        east = -1
      }
    }
}
entity["energy_usage"] = "300kW"

data:extend({entity})