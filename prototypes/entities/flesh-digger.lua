--forked from Maraxsis & Muluna

data:extend {{
    type = "custom-input",
    name = "build",
    key_sequence = "",
    linked_game_control = "build"
}}

data:extend {{
    type = "custom-input",
    name = "mine",
    key_sequence = "",
    linked_game_control = "mine"
}}

data:extend {{
    type = "custom-input",
    name = "rotate",
    key_sequence = "",
    linked_game_control = "rotate"
}}

data:extend {{
    type = "custom-input",
    name = "reverse-rotate",
    key_sequence = "",
    linked_game_control = "rotate"
}}

data:extend {{
    type = "custom-input",
    name = "build-ghost",
    key_sequence = "",
    linked_game_control = "build-ghost"
}}

data:extend {{
    type = "custom-input",
    name = "super-forced-build",
    key_sequence = "",
    linked_game_control = "super-forced-build"
}}

local entity = table.deepcopy(data.raw["mining-drill"]["burner-mining-drill"])

entity.placeable_by = {item = entity.name, count = 1}
entity.localised_name = entity.localised_name or {"entity-name." .. entity.name}
entity.localised_description = entity.localised_description or {"?", {"entity-description." .. entity.name}, ""}
entity.type = "assembling-machine"
entity.crafting_categories = {"ground-digging"}
entity.placeable_by = {item = entity.name, count = 1}
entity.hidden_in_factoriopedia = true
entity.hidden = true
entity.factoriopedia_alternative = "burner-mining-drill"
entity.name = "flesh-burner-mining-drill-0"
entity.fixed_recipe = "flesh-burner-mining-drill-0"
entity.emissions_per_second = {
    inflammation = 3
}
entity.crafting_speed = entity.mining_speed
entity.mining_speed = nil
entity.next_upgrade = nil
entity.resource_drain_rate_percent = nil

data:extend({entity})


for _, drill in pairs(Sarkis.constants.flesh_drills) do
    if not data.raw["mining-drill"][drill] then error("Invalid sand extractor: " .. drill) end
    local key = drill:gsub("-", "_")
    for i=0,Sarkis.constants[key].max_neighbors do
        if Sarkis.constants[key].max_neighbors == 0 then
            break
        end
    
        local extractor = table.deepcopy(data.raw["mining-drill"][drill])
        extractor.type = "assembling-machine"
        extractor.graphics_set = extractor.wet_mining_graphics_set
        extractor.crafting_categories = {"ground-digging"}
        extractor.placeable_by = {item = extractor.name, count = 1}
        extractor.localised_name = extractor.localised_name or {"entity-name." .. extractor.name}
        extractor.localised_description = extractor.localised_description or {"?", {"entity-description." .. extractor.name}, ""}
        extractor.hidden_in_factoriopedia = true
        extractor.hidden = true
        extractor.factoriopedia_alternative = drill
        extractor.allowed_module_categories = {"sarkis-module", "speed", "efficiency", "productivity", "quality"}
        extractor.allowed_effects = {"productivity", "consumption", "speed", "pollution", "quality"}
        extractor.name = "flesh-" .. drill .. "-" .. i
        extractor.fixed_recipe = extractor.name
        if extractor.input_fluid_box ~= nil then
            local fluid_boxes = table.deepcopy(extractor.input_fluid_box)
            for i in pairs(fluid_boxes["pipe_connections"]) do
                fluid_boxes["pipe_connections"][i]["flow_direction"] = "input-output"
            end
            fluid_boxes["production_type"] = "output"
            fluid_boxes = {fluid_boxes}
            extractor.fluid_boxes = fluid_boxes
        end
        extractor.emissions_per_second = {
            inflammation = 3
        }
        extractor.fluid_boxes_off_when_no_fluid_recipe = false
        extractor.crafting_speed = extractor.mining_speed
        extractor.mining_speed = nil
        extractor.next_upgrade = nil
        extractor.resource_drain_rate_percent = nil
        data:extend {extractor}
    end
end
