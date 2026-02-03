local item = {
    type = "airborne-pollutant",
    name = "inflammation",
    affects_evolution = false,
    affects_water_tint = false,
    chart_color = {
      r = 120,
      g = 1,
      b = 1,
      a = 149
    },
    icon = {
      filename = "__core__/graphics/icons/mip/side-map-menu-buttons.png",
      priority = "high",
      size = 64,
      mipmap_count = 2,
      y = 192,
      flags = {
        "gui-icon"
      }
    },
}

data:extend({
  item
})