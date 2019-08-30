data.raw["sticker"]["fire-sticker"].duration_in_ticks = 5 *60
data.raw["sticker"]["fire-sticker"].damage_per_tick = { amount = 15 / 60, type = "fire" }
-- table.insert(data.raw["stream"]["tank-flamethrower-fire-stream"].action.action_delivery.target_effects, { {type = "create-sticker", sticker = "fire-sticker"} } ) --doesn't work?

data.raw["stream"]["tank-flamethrower-fire-stream"].action =
    {
      {
        type = "area",
        radius = 4,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = { amount = 7, type = "fire" },
              apply_damage_to_trees = true
            },
			{ 
			  type = "create-sticker",
			  sticker = "fire-sticker"
			}
          }
        }
      }
    }
	
data.raw["fluid-turret"]["flamethrower-turret"].attack_parameters.fluid_consumption=0.4 --up from 0.2
-- data.raw["fluid-turret"]["flamethrower-turret"].inventory_size=0 --doesn't do anything?
data.raw["fluid-turret"]["flamethrower-turret"].fluid_buffer_size=50
-- data.raw["fluid-turret"]["flamethrower-turret"].fluid_box.base_area=0.8