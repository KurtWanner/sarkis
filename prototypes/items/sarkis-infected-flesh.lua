local item = {
    type = "capsule",
    name = "sarkis-infected-flesh",
    icon = "__flesh-planet__/graphics/items/sarkis-infected-flesh/icon.png",
    icon_size = 64,
    stack_size = 100,
    subgroup = "flesh-subgroup",
    order = "flesh",
    spoil_ticks = 60 * 60,
    spoil_result = "sarkis-dead-flesh",
    weight = 10000,
    capsule_action = {
        type = "use-on-self",
        attack_parameters = {
          type = "projectile",
          activation_type = "consume",
          ammo_category = "capsule",
          cooldown = 0,
          range = 0,
          ammo_type = {
            target_type = "position",
            action = {
              type = "direct",
              action_delivery = {
                type = "instant",
                target_effects = {
                  {
                    type = "create-entity",
                    entity_name = "syphilis-effect",
                    probability = 0.1
                  },
                  {
                    type = "damage",
                    damage = {
                      type = "physical",
                      amount = -10
                    },
                    use_substitute = false
                  },
                  {
                    type = "play-sound",
                    sound = {
                      {
                        filename = "__base__/sound/eat-1.ogg",
                        volume = 0.6
                      },
                      {
                        filename = "__base__/sound/eat-2.ogg",
                        volume = 0.6
                      },
                      {
                        filename = "__base__/sound/eat-3.ogg",
                        volume = 0.6
                      },
                      {
                        filename = "__base__/sound/eat-4.ogg",
                        volume = 0.6
                      },
                      {
                        filename = "__base__/sound/eat-5.ogg",
                        volume = 0.6
                      }
                    }
                  }
                }
              }
            }
          }
        }
    }
}

data:extend({item})
