local indentured_housing = {
    type = "assembling-machine",
    name = "indentured-housing",

    -- Graphics
    icon = "__flesh-planet__/graphics/items/indentured-housing/icon.png",
    icon_size = 64,

    graphics_set = {
      working_visualisations = {{
        constant_speed = true,
        always_draw = true,
        animation =
        {
          layers = {
            util.sprite_load("__space-age__/graphics/entity/heating-tower/heating-tower-working-fire", {
            frame_count = 24,
            scale = 0.65,
            blend_mode = "additive",
            draw_as_glow = true,
            animation_speed = 0.333
            }),
            util.sprite_load("__space-age__/graphics/entity/heating-tower/heating-tower-working-light", {
            frame_count = 1,
            repeat_count = 24,
            scale = 0.65,
            blend_mode = "additive",
            draw_as_glow = true
            })
            }
        },
      }}
      
    },


    -- Entity Properties

    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "indentured-housing"},
    max_health = 1000,
    corpse = "medium-small-remnants",
    allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
    module_slots = 4,
    dying_explosion = "chemical-plant-explosion",
    impact_category = "metal-large",
    match_animation_speed_to_activity = true,
    heating_energy = "1MW",

    -- Crafting
    crafting_categories = {"basic-crafting", "electronics"},
    crafting_speed = 1,

    -- Energy
    energy_usage = "10MW",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
    },

    -- Hitbox
    collision_box = { { -1.25, -1.25 }, { 1.25, 1.25 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    fast_replaceable_group = "",

    
}

data:extend({
    indentured_housing
})