local source = "__flesh-planet__/graphics/planet/tiles/skin-2.png"
local tile = {
    name = "sarkis-skin-2",
    type = "tile",
    order = "b[natural]-c[sand]-a[sand-2]",
    subgroup = "sarkis-tiles",
    collision_mask = {
        layers = {
            ground_tile = true
        }
    },
    map_color = {66, 39, 0},
    scorch_mark_color = {
        r = 0.588,
        g = 0.450,
        b = 0.272,
        a = 1
    },
    absorptions_per_second = {
        inflammation = 0.0001
    },
    destroys_dropped_items = true,
    allows_being_covered = false,
    effect_color_secondary = {120, 1, 1},

    autoplace = {
        probability_expression = "max(expression_in_range_base(-10, -10, 0.25, 0.15),expression_in_range(5, inf, elevation, aux, -1.5, 0.5, 1.5, 1)) +noise_layer_noise(36)"
    },
    layer = 10,
    variants = {
        main = {{
            picture = source,
            count = 16,
            size = 1,
            y = 0,
            line_length = 16,
            scale = 0.5,
            weights = {0.085, 0.085, 0.085, 0.085, 0.087, 0.085, 0.065, 0.085, 0.045, 0.045, 0.045, 0.045, 0.005, 0.025,
                       0.045, 0.045}
        }, {
            picture = source,
            count = 16,
            size = 2,
            y = 128,
            line_length = 16,
            scale = 0.5,
            probability = 0.39,
            weights = {0.025,
              0.01,
              0.013000000000000000444089209850062616169452667236328125,
              0.025,
              0.025,
              0.1,
              0.1,
              0.005,
              0.01,
              0.01,
              0.005,
              0.005,
              0.001,
              0.015,
              0.02,
              0.02}
        }, {
            picture = source,
            count = 16,
            size = 4,
            y = 320,
            line_length = 16,
            scale = 0.5,
            probability = 0.39,
            weights = {0.025,
              0.01,
              0.013,
              0.025,
              0.025,
              0.1,
              0.1,
              0.005,
              0.01,
              0.01,
              0.005,
              0.005,
              0.001,
              0.015,
              0.02,
              0.02}
        }},
        transition = {
            spritesheet = "__base__/graphics/terrain/masks/transition-4.png",
            layout = {
                scale = 0.5,
                count = 8,
                double_side_count = 0,
                u_transition_count = 1,
                o_transition_count = 1,
                u_transition_line_length = 1,
                o_transition_line_length = 2,
                outer_corner_x = 576,
                side_x = 1152,
                u_transition_x = 1728,
                o_transition_x = 2304,
                mask = {
                    y_offset = 0
                }
            }
        }
    },
    factoriopedia_alternative = "sarkis-skin-1",
    transitions = {{
        to_tiles = {"water", "deepwater", "water-green", "deepwater-green", "water-shallow", "water-mud", "water-wube",
                    "oil-ocean-shallow", "oil-ocean-deep", "wetland-yumako", "wetland-jellynut",
                    "wetland-light-green-slime", "wetland-green-slime", "wetland-light-dead-skin", "wetland-dead-skin",
                    "wetland-pink-tentacle", "wetland-red-tentacle", "oil-ocean-shallow", "oil-ocean-deep",
                    "ammoniacal-ocean", "ammoniacal-ocean-2", "brash-ice", "lava-hot", "lava",
                    "wetland-light-dead-skin", "wetland-dead-skin", "wetland-light-green-slime", "wetland-green-slime",
                    "wetland-pink-tentacle", "wetland-red-tentacle", "wetland-blue-slime", "wetland-yumako",
                    "wetland-jellynut", "gleba-deep-lake", "oil-ocean-shallow", "oil-ocean-deep"},
        transition_group = 1,
        background_layer_group = "water",
        background_layer_offset = -5,
        masked_background_layer_offset = 1,
        offset_background_layer_by_tile_layer = false,
        spritesheet = "__base__/graphics/terrain/water-transitions/sand.png",
        layout = {
            scale = 0.5,
            inner_corner_count = 16,
            outer_corner_count = 16,
            side_count = 16,
            u_transition_count = 4,
            o_transition_count = 8,
            inner_corner_y = 0,
            outer_corner_y = 576,
            side_y = 1152,
            u_transition_y = 1728,
            o_transition_y = 2304,
            overlay = {
                x_offset = 0
            },
            mask = {
                x_offset = 2176
            },
            background = {
                x_offset = 1088
            }
        },
        background_enabled = false,
        effect_map_layout = {
            spritesheet = "__base__/graphics/terrain/effect-maps/water-sand-mask.png",
            inner_corner_tile_height = 2,
            outer_corner_tile_height = 2,
            side_tile_height = 2,
            u_transition_tile_height = 2,
            o_transition_count = 1
        },
        background_mask_layout = {
            spritesheet = "__core__/graphics/white-square.png",
            x = 0,
            y = 0,
            count = 1,
            scale = 32
        }
    }, {
        to_tiles = {"out-of-map", "empty-space"},
        transition_group = 2,
        background_layer_offset = 1,
        background_layer_group = "zero",
        offset_background_layer_by_tile_layer = true,
        spritesheet = "__base__/graphics/terrain/out-of-map-transition/out-of-map-transition.png",
        layout = {
            scale = 0.5,
            inner_corner_count = 4,
            outer_corner_count = 4,
            side_count = 8,
            u_transition_count = 1,
            o_transition_count = 1,
            inner_corner_y = 0,
            outer_corner_y = 576,
            side_y = 1152,
            u_transition_y = 1728,
            o_transition_y = 2304,
            inner_corner_tile_height = 2,
            outer_corner_tile_height = 2,
            side_tile_height = 2,
            u_transition_tile_height = 2,
            overlay = {
                x_offset = 0
            },
            mask = {
                x_offset = 2176
            },
            background = {
                x_offset = 1088
            }
        },
        overlay_enabled = false
    }},
    transitions_between_transitions = {{
        transition_group1 = 0,
        transition_group2 = 1,
        spritesheet = "__base__/graphics/terrain/water-transitions/sand-transition.png",
        layout = {
            scale = 0.5,
            inner_corner_count = 3,
            outer_corner_count = 3,
            side_count = 3,
            u_transition_count = 1,
            o_transition_count = 0,
            inner_corner_y = 0,
            outer_corner_y = 576,
            side_y = 1152,
            u_transition_y = 1728,
            o_transition_y = 2304,
            u_transition_tile_height = 2,
            overlay = {
                x_offset = 0
            },
            mask = {
                x_offset = 2176
            },
            background = {
                x_offset = 1088
            }
        },
        background_enabled = false,
        effect_map_layout = {
            spritesheet = "__base__/graphics/terrain/effect-maps/water-sand-to-land-mask.png",
            inner_corner_tile_height = 2,
            outer_corner_tile_height = 2,
            side_tile_height = 2,
            o_transition_count = 0
        },
        water_patch = {
            filename = "__base__/graphics/terrain/water-transitions/water-patch.png",
            scale = 0.5,
            width = 64,
            height = 64
        }
    }, {
        transition_group1 = 0,
        transition_group2 = 2,
        background_layer_offset = 1,
        background_layer_group = "zero",
        offset_background_layer_by_tile_layer = true,
        spritesheet = "__base__/graphics/terrain/out-of-map-transition/sand-out-of-map-transition.png",
        layout = {
            scale = 0.5,
            inner_corner_count = 3,
            outer_corner_count = 3,
            side_count = 3,
            u_transition_count = 1,
            o_transition_count = 0,
            inner_corner_y = 0,
            outer_corner_y = 576,
            side_y = 1152,
            u_transition_y = 1728,
            o_transition_y = 2304,
            inner_corner_tile_height = 2,
            outer_corner_tile_height = 2,
            side_tile_height = 2,
            u_transition_tile_height = 2,
            overlay = {
                x_offset = 0
            },
            mask = {
                x_offset = 2176
            },
            background = {
                x_offset = 1088
            }
        },
        overlay_enabled = false
    }, {
        transition_group1 = 1,
        transition_group2 = 2,
        background_layer_group = "water",
        background_layer_offset = -5,
        masked_background_layer_offset = 1,
        offset_background_layer_by_tile_layer = false,
        spritesheet = "__base__/graphics/terrain/out-of-map-transition/sand-shore-out-of-map-transition.png",
        layout = {
            scale = 0.5,
            inner_corner_count = 3,
            outer_corner_count = 3,
            side_count = 3,
            u_transition_count = 1,
            o_transition_count = 0,
            inner_corner_y = 0,
            outer_corner_y = 576,
            side_y = 1152,
            u_transition_y = 1728,
            o_transition_y = 2304,
            inner_corner_tile_height = 2,
            outer_corner_tile_height = 2,
            side_tile_height = 2,
            u_transition_tile_height = 2,
            overlay = {
                x_offset = 0
            },
            mask = {
                x_offset = 2176
            },
            background = {
                x_offset = 1088
            }
        },
        effect_map_layout = {
            spritesheet = "__base__/graphics/terrain/effect-maps/water-sand-to-out-of-map-mask.png",
            o_transition_count = 0
        },
        background_mask_layout = {
            spritesheet = "__base__/graphics/terrain/masks/sand-water-edge-3-way-transition.png",
            scale = 0.5,
            tile_height = 1,
            x = 0,
            count = 0,
            inner_corner_count = 3,
            outer_corner_count = 3,
            side_count = 3,
            u_transition_count = 1,
            o_transition_count = 0,
            inner_corner_y = 0,
            outer_corner_y = 576,
            side_y = 1152,
            u_transition_y = 1728,
            o_transition_y = 2304
        },
        draw_simple_outer_corner_over_diagonal = false,
        apply_waving_effect_on_background_mask = true,
        waving_effect_time_scale = 0.0135,
        water_patch = {
            filename = "__base__/graphics/terrain/water-transitions/water-patch.png",
            scale = 0.5,
            width = 64,
            height = 64
        }
    }},
    walking_sound = {
        variations = {{
            filename = "__base__/sound/walking/sand-1.ogg",
            volume = 0.8,
            modifiers = {
                type = "main-menu",
                volume_multiplier = 2.9
            }
        }, {
            filename = "__base__/sound/walking/sand-2.ogg",
            volume = 0.8,
            modifiers = {
                type = "main-menu",
                volume_multiplier = 2.9
            }
        }, {
            filename = "__base__/sound/walking/sand-3.ogg",
            volume = 0.8,
            modifiers = {
                type = "main-menu",
                volume_multiplier = 2.9
            }
        }, {
            filename = "__base__/sound/walking/sand-4.ogg",
            volume = 0.8,
            modifiers = {
                type = "main-menu",
                volume_multiplier = 2.9
            }
        }, {
            filename = "__base__/sound/walking/sand-5.ogg",
            volume = 0.8,
            modifiers = {
                type = "main-menu",
                volume_multiplier = 2.9
            }
        }, {
            filename = "__base__/sound/walking/sand-6.ogg",
            volume = 0.8,
            modifiers = {
                type = "main-menu",
                volume_multiplier = 2.9
            }
        }, {
            filename = "__base__/sound/walking/sand-7.ogg",
            volume = 0.8,
            modifiers = {
                type = "main-menu",
                volume_multiplier = 2.9
            }
        }, {
            filename = "__base__/sound/walking/sand-8.ogg",
            volume = 0.8,
            modifiers = {
                type = "main-menu",
                volume_multiplier = 2.9
            }
        }, {
            filename = "__base__/sound/walking/sand-9.ogg",
            volume = 0.8,
            modifiers = {
                type = "main-menu",
                volume_multiplier = 2.9
            }
        }},
        advanced_volume_control = {
            fades = {
                fade_in = {
                    curve_type = "cosine",
                    from = {
                        control = 0.3,
                        volume_percentage = 0
                    },
                    to = {
                        control = 0.6,
                        volume_percentage = 100
                    }
                }
            }
        }
    },
    driving_sound = {
        sound = {
            filename = "__base__/sound/driving/vehicle-surface-sand.ogg",
            volume = 0.8,
            advanced_volume_control = {
                fades = {
                    fade_in = {
                        curve_type = "cosine",
                        from = {
                            control = 0.3,
                            volume_percentage = 0
                        },
                        to = {
                            control = 0.6,
                            volume_percentage = 100
                        }
                    }
                }
            }
        },
        fade_ticks = 6
    },

 

    vehicle_friction_modifier = 1.8,
    trigger_effect = {{
        type = "create-particle",
        repeat_count = 20,
        repeat_count_deviation = 5,
        show_in_tooltip = false,
        particle_name = "sand-1-stone-particle-small",
        offset_deviation = {{-0.5, -0.5977}, {0.5, 0.5977}},
        initial_height = 0.2,
        initial_height_deviation = 0.22,
        initial_vertical_speed = 0.1,
        initial_vertical_speed_deviation = 0.041,
        speed_from_center = 0.05,
        speed_from_center_deviation = 0.05
    }, {
        type = "create-particle",
        repeat_count = 7,
        repeat_count_deviation = 2,
        show_in_tooltip = false,
        particle_name = "sand-1-stone-particle-medium",
        offset_deviation = {{-0.2, -0.2}, {0.3, 0.3}},
        initial_height = 0.2,
        initial_height_deviation = 0.5,
        initial_vertical_speed = 0.125,
        initial_vertical_speed_deviation = 0.042,
        speed_from_center = 0.03,
        speed_from_center_deviation = 0.05
    }, {
        type = "create-particle",
        repeat_count = 7,
        repeat_count_deviation = 2,
        show_in_tooltip = false,
        particle_name = "sand-1-stone-lower-particle-medium",
        offset_deviation = {
            left_top = {-0.3984, -0.7969},
            right_bottom = {0.3984, 0.7969}
        },
        initial_height = 0.2,
        initial_height_deviation = 0.2,
        initial_vertical_speed = 0.125,
        initial_vertical_speed_deviation = 0.042,
        speed_from_center = 0.03,
        speed_from_center_deviation = 0.05
    }, {
        type = "create-particle",
        repeat_count = 15,
        repeat_count_deviation = 4,
        show_in_tooltip = false,
        particle_name = "sand-1-stone-particle-tiny",
        offset_deviation = {{-0.4, -0.4}, {0.4, 0.4}},
        initial_height = 0.2,
        initial_height_deviation = 0.5,
        initial_vertical_speed = 0.1,
        initial_vertical_speed_deviation = 0.05,
        speed_from_center = 0.03,
        speed_from_center_deviation = 0.02
    }},
    landing_steps_sound = {
        variations = {{
            filename = "__space-age__/sound/entity/mech-armor/mech-armor-land-sand-1.ogg",
            volume = 1,
            modifiers = {
                type = "main-menu",
                volume_multiplier = 2.9
            }
        }, {
            filename = "__space-age__/sound/entity/mech-armor/mech-armor-land-sand-2.ogg",
            volume = 1,
            modifiers = {
                type = "main-menu",
                volume_multiplier = 2.9
            }
        }, {
            filename = "__space-age__/sound/entity/mech-armor/mech-armor-land-sand-3.ogg",
            volume = 1,
            modifiers = {
                type = "main-menu",
                volume_multiplier = 2.9
            }
        }},
        advanced_volume_control = {
            fades = {
                fade_in = {
                    curve_type = "cosine",
                    from = {
                        control = 0.3,
                        volume_percentage = 0
                    },
                    to = {
                        control = 0.6,
                        volume_percentage = 100
                    }
                }
            }
        }
    }
}

data:extend{tile}
