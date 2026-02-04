local entity = table.deepcopy(data.raw["mining-drill"]["pumpjack"])

entity.type = "furnace"
entity.name = "reverse-pumpjack"
entity.crafting_categories = {"fluid-injection"}
entity.crafting_speed = 1
entity.energy_source.emissions_per_minute = {
  inflammation = -10
}
entity.source_inventory_size = 0
entity.result_inventory_size = 0
local fluid_box = table.deepcopy(entity.output_fluid_box)
fluid_box.pipe_connections[1].flow_direction = "input"
fluid_box["production_type"] = "input"
entity.fluid_boxes = {fluid_box}
entity.output_fluid_box = nil

data:extend({entity})