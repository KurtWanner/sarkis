local entity = table.deepcopy(data.raw["beacon"]["beacon"])

--entity["type"] = "beacon"
--entity["supply_area_distance"] = 6
--entity["distribution_effectivity"] = 0.5
entity["allowed_effects"] = {
    "consumption",
    "speed",
    "pollution"
}
entity["name"] = "pumpjack-beacon"
entity["energy_source"] = {
  type = "fluid",
  burns_fluid = true,
  scale_fluid_usage = true,
  fluid_box = {
      filter = "sarkis-blood",
      volume = 1000,
      production_type = "input",
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        {
          direction = defines.direction.north,
          flow_direction = "input",
          position = { 0, -1 },
        }
      },
      secondary_draw_orders = {
        north = -1,
        west = -1,
        east = -1
      }
    }
}
entity["minable"]["result"] = "pumpjack-beacon"

data:extend({entity})