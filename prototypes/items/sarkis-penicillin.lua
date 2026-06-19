local item = {
    type = "capsule",
    name = "sarkis-penicillin",
    icon = "__flesh-planet__/graphics/items/sarkis-penicillin/icon.png",
    icon_size = 64,
    stack_size = 100,
    subgroup = "flesh-subgroup",
    order = "flesh",
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
