-- Major notes:
-- All ammo type stack sizes reduced to 50. This makes it easier to provision reasonable amounts of ammo in multiplayer. It is expecially important for loading turrets, because newbies can't overload them with 200 stacks of ammo (and then they obviously blow up with 190 ammo). The 50 size makes it very easy to control turret ammo stacks, for example you can ctrl-right click 25 ammo per turret which is enough for them to fend off a heavy assault.
-- Bullet magazine size buffed to 12. Buy 10 bullets get 2 free! Great for bullet lovers everywhere.
-- Shotgun ammo reduced from 10 to 6. This is sad but the shotgun is still a very resource efficient ammo.
-- Shotgun ammo range moderately reduced from 15 to 12. You'll be running so much faster with the shotgun you won't care.

data.raw["ammo"]["piercing-rounds-magazine"].magazine_size = 12
data.raw["ammo"]["piercing-rounds-magazine"].stack_size= 50
data.raw["ammo"]["uranium-rounds-magazine"].magazine_size = 12
data.raw["ammo"]["uranium-rounds-magazine"].stack_size= 50
data.raw["ammo"]["uranium-rounds-magazine"].ammo_type.action.action_delivery.target_effects[2].damage.amount = 16
data.raw["ammo"]["flamethrower-ammo"].stack_size = 50
data.raw["ammo"]["rocket"].stack_size = 50
data.raw["ammo"]["explosive-rocket"].stack_size = 50
data.raw["ammo"]["shotgun-shell"].stack_size = 50
data.raw["ammo"]["shotgun-shell"].magazine_size = 4
data.raw["ammo"]["shotgun-shell"].ammo_type.action[2].action_delivery.max_range=12
--data.raw["ammo"]["shotgun-shell"].ammo_type.action[2].action_delivery.range_deviation=.3
-- data.raw["ammo"]["shotgun-shell"].ammo_type.action =
    -- {
        -- {
          -- type = "direct",
          -- action_delivery =
          -- {
            -- type = "instant",
            -- source_effects =
            -- {
              -- {
                -- type = "create-explosion",
                -- entity_name = "explosion-gunshot"
              -- }
            -- }
          -- }
        -- },
        -- {
          -- type = "direct",
          -- repeat_count = 12,
          -- action_delivery =
          -- {
            -- type = "projectile",
            -- projectile = "shotgun-pellet",
            -- starting_speed = 1,
            -- direction_deviation = 0.3,
            -- range_deviation = 0.3,
            -- max_range = 15 -- only value changed
          -- }
        -- }
	-- }
data.raw["ammo"]["piercing-shotgun-shell"].stack_size= 50
data.raw["ammo"]["piercing-shotgun-shell"].magazine_size= 4
-- data.raw["ammo"]["piercing-shotgun-shell"].ammo_type.action =
-- {
        -- {
          -- type = "direct",
          -- action_delivery =
          -- {
            -- type = "instant",
            -- source_effects =
            -- {
              -- {
                -- type = "create-explosion",
                -- entity_name = "explosion-gunshot"
              -- }
            -- }
          -- }
        -- },
        -- {
          -- type = "direct",
          -- repeat_count = 16,
          -- action_delivery =
          -- {
            -- type = "projectile",
            -- projectile = "piercing-shotgun-pellet",
            -- starting_speed = 1,
            -- direction_deviation = 0.3,
            -- range_deviation = 0.3,
            -- max_range = 15
          -- }
        -- }
-- }
data.raw["ammo"]["piercing-shotgun-shell"].ammo_type.action[2].action_delivery.max_range=12
data.raw["ammo"]["piercing-shotgun-shell"].ammo_type.action[2].repeat_count=12
data.raw["ammo"]["cannon-shell"].stack_size= 50 
data.raw["ammo"]["explosive-cannon-shell"].stack_size= 50 
data.raw["ammo"]["uranium-cannon-shell"].stack_size= 50 
data.raw["ammo"]["explosive-uranium-cannon-shell"].stack_size= 50
data.raw["ammo"]["explosive-cannon-shell"].ammo_type.action.action_delivery.min_range = 6
data.raw["ammo"]["explosive-uranium-cannon-shell"].ammo_type.action.action_delivery.min_range = 6

--data.raw["ammo"]["explosive-uranium-cannon-shell"].ammo_type.action.action_delivery.projectile = "distractor-capsule" --muahahahaha
-- data.raw["ammo"]["explosive-uranium-cannon-shell"]. ammo_type =
    -- {
      -- category = "cannon-shell",
      -- target_type = "direction",
      -- action =
      -- {
        -- type = "direct",
		--repeat_count = 12,
        -- action_delivery =
        -- {
          -- type = "projectile",
          -- projectile = "explosive-uranium-cannon-projectile",
          -- starting_speed = 1,
          -- direction_deviation = 0.1,
          -- range_deviation = 0.1,
          -- max_range = 30,
		  -- min_range = 6,
          -- source_effects =
          -- {
            -- type = "create-explosion",
            -- entity_name = "explosion-gunshot"
          -- }
        -- }
      -- }
    -- },
    