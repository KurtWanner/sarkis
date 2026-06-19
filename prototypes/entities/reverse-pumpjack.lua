local entity = table.deepcopy(data.raw["mining-drill"]["pumpjack"])

entity.placeable_by = {item = entity.name, count = 1}
entity.localised_name = entity.localised_name or {"entity-name." .. entity.name}
entity.localised_description = entity.localised_description or {"?", {"entity-description." .. entity.name}, ""}
entity.type = "furnace"
entity.name = "reverse-pumpjack"
entity.crafting_categories = {"fluid-injection"}
entity.crafting_speed = 1
entity.energy_source.emissions_per_minute = {
  inflammation = -10
}
entity.graphics_set.always_draw_idle_animation = true

entity.source_inventory_size = 0
entity.result_inventory_size = 0
local fluid_box = table.deepcopy(entity.output_fluid_box)
fluid_box.pipe_connections[1].flow_direction = "input"
fluid_box["production_type"] = "input"
entity.fluid_boxes = {fluid_box}
entity.output_fluid_box = nil
entity.vector_to_place_result = nil
entity.hidden_in_factoriopedia = true
entity.hidden = true
entity.factoriopedia_alternative = "pumpjack"


data:extend({entity})