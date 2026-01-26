--forked from Maraxsis & Muluna

data:extend {{
    type = "custom-input",
    name = "build",
    key_sequence = "",
    linked_game_control = "build"
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

for extractor in pairs(Sarkis.constants.flesh_drills) do
    if not data.raw["mining-drill"][extractor] then error("Invalid sand extractor: " .. extractor) end
    local extractor = table.deepcopy(data.raw["mining-drill"][extractor])
    extractor.type = "assembling-machine"
    extractor.crafting_categories = {"ground-digging"}
    extractor.placeable_by = {item = extractor.name, count = 1}
    extractor.localised_name = extractor.localised_name or {"entity-name." .. extractor.name}
    extractor.localised_description = extractor.localised_description or {"?", {"entity-description." .. extractor.name}, ""}
    extractor.hidden_in_factoriopedia = false
    extractor.fixed_recipe = Sarkis.constants.flesh_drills[extractor.name]
    if extractor.input_fluid_box ~= nil then
        local fluid_boxes = table.deepcopy(extractor.input_fluid_box)
        for i in pairs(fluid_boxes["pipe_connections"]) do
            fluid_boxes["pipe_connections"][i]["flow_direction"] = "output"
        end
        fluid_boxes["production_type"] = "output"
        fluid_boxes = {fluid_boxes}
        extractor.fluid_boxes = fluid_boxes
    end
    extractor.crafting_speed = extractor.mining_speed
    extractor.mining_speed = nil
    extractor.fast_replaceable_group = (extractor.fast_replaceable_group or extractor.name) .. "-flesh-drill"
    extractor.next_upgrade = nil
    extractor.allowed_effects = {"productivity", "consumption", "speed", "pollution", "quality"}
    extractor.resource_drain_rate_percent = nil
    extractor.name = extractor.name .. "-flesh-drill"
    data:extend {extractor}
end
