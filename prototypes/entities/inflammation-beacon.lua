data:extend({{
  type = "beacon",
  name = "inflammation-beacon",
  energy_usage = "1MW",
  energy_source = {type = "void"},
  supply_area_distance = 16,
  distribution_effectivity = 1,
  remove_decoratives = "false",
  flags = {"placeable-player", "not-selectable-in-game", "not-on-map", "no-automated-item-removal", "no-automated-item-insertion", "not-blueprintable", "not-deconstructable"},
  protected_from_tile_building = false,
  selectable_in_game = false,
  collision_mask = {layers = {}},  
  module_slots = 10,
  icon = "__flesh-planet__/graphics/planet/sarkis.png",
  allowed_module_categories = {"sarkis-module"},
  allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"}

}})
