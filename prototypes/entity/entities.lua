-- Notes
-- Land mine arming time increased. It is more difficult to drop mines under someone unless they let it happen.
-- Bots can no longer be repaired. Actually they heal for FREE in the roboport; this stops the suicide cycle of bots running out to fix bots, getting hurt, and dragging in more bots.


data.raw["land-mine"]["land-mine"].timeout = 300 --arming time from 2 seconds to 5 seconds
data.raw["land-mine"]["land-mine"].action.action_delivery.source_effects[1].action.action_delivery.target_effects[1].damage.amount = 150 -- + 20% research, down from 300/no research
data.raw["land-mine"]["land-mine"].ammo_category="grenade"
data.raw["sticker"]["stun-sticker"].target_movement_modifier=0.3 -- up from 0
table.insert(data.raw["logistic-robot"]["logistic-robot"].flags, "not-repairable")
table.insert(data.raw["construction-robot"]["construction-robot"].flags, "not-repairable")

   -- action =
    -- {
      -- type = "direct",
      -- action_delivery =
      -- {
        -- type = "instant",
        -- source_effects =
        -- {
          -- {
            -- type = "nested-result",
            -- affects_target = true,
            -- action =
            -- {
              -- type = "area",
              -- radius = 6,
              -- force = "enemy",
              -- action_delivery =
              -- {
                -- type = "instant",
                -- target_effects =
                -- {
                  -- {
                    -- type = "damage",
                    -- damage = { amount = 300, type = "explosion"}
                  -- },
                  -- {
                    -- type = "create-sticker",
                    -- sticker = "stun-sticker"
                  -- }
                -- }
              -- }
            -- }
          -- },



-- vehicle changes
-- Tank: 2500  5000 physical health
--  5640  5700  spitter health 7142 8000
-- 1760 6660 explosion health
-- 90 self damage => 80 self damage
table.insert(data.raw["car"]["tank"], {sticker_box = {{-0.2, -1}, {0.2, 0}}})
--table.insert(data.raw["car"]["tank"].flags, "breaths-air")
data.raw["car"]["tank"].max_health = 1500 -- down from 2000
data.raw["car"]["tank"].energy_per_hit_point = 0.66 --up from 0.5
data.raw["car"]["tank"].resistances = 
    {
      { --up from 15/60
        type = "fire", --highly resistant to fire and explosive tank shells
        decrease = 6,
        percent = 90
      },
      { --down from 15/60
        type = "physical",
        decrease = 6,
        percent = 40
      },
      {
        type = "impact",
        decrease = 50,
        percent = 80
      },
      { --down from 15/70
        type = "explosion", --weak against anti armor weapons
        decrease = 5,
        percent = 15
      },
      { --up from 15/50
        type = "acid",
        decrease = 12,
        percent = 60
      },
	  { -- up from 0/0
	   type ="laser",
	   decrease = 8,
	   percent = 50
	  }
    }
	
data.raw["car"]["car"].resistances = 
    {
      { -- up from 0/50
        type = "fire", --moderately resistant to fire 
        percent = 60
      },
      { -- up from 0/0
        type = "physical",
        decrease = 2,
        percent = 20
      },
      {
        type = "impact",
        decrease = 30,
        percent = 50
      },
      { --up from 0/0
        type = "explosion", --semi vulnerable to anti armor
        decrease = 5,
        percent = 40
      },
      { -- up from 0/0
        type = "acid",
        decrease = 3,
        percent = 25
      },
	  { --up from 0/0
	   type = "laser",
	   decrease = 4,
	   percent = 35
	  }
    }

	data.raw["gate"]["gate"].resistances[4] = {type= "fire", decrease = 50, percent = 50} --fire resist