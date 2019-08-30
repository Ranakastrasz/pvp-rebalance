data.raw["projectile"]["piercing-shotgun-pellet"].action.action_delivery.target_effects.damage.amount = 10
data.raw["projectile"]["cannon-projectile"].action.action_delivery.target_effects[1].damage = {amount = 200 , type = "explosion"}
data.raw["projectile"]["cannon-projectile"].action.action_delivery.target_effects[2].damage = {amount = 100 , type = "fire"}
data.raw["projectile"]["uranium-cannon-projectile"].action.action_delivery.target_effects[1].damage = {amount = 400 , type = "explosion"}
data.raw["projectile"]["uranium-cannon-projectile"].action.action_delivery.target_effects[2].damage = {amount = 200 , type = "fire"}
data.raw["projectile"]["explosive-uranium-cannon-projectile"].action.action_delivery.target_effects[1].damage = {amount = 100 , type = "explosion"} --down from 300
data.raw["projectile"]["explosive-uranium-cannon-projectile"].final_action.action_delivery.target_effects[2].action.action_delivery.target_effects[1].damage = {amount = 200, type = "fire"}
table.insert(data.raw["projectile"]["explosive-uranium-cannon-projectile"].final_action.action_delivery.target_effects[2].action.action_delivery.target_effects, {type = "damage", damage = {amount = 100, type = "physical"}})


data.raw["projectile"]["explosive-cannon-projectile"].action.action_delivery.target_effects[1].damage = {amount = 50 , type = "explosion"} --down from 150
data.raw["projectile"]["explosive-cannon-projectile"].final_action.action_delivery.target_effects[2].action.action_delivery.target_effects[1].damage = {amount = 100, type = "fire"}
table.insert(data.raw["projectile"]["explosive-cannon-projectile"].final_action.action_delivery.target_effects[2].action.action_delivery.target_effects, {type = "damage", damage = {amount = 50, type = "physical"}})



--data.raw["projectile"]["grenade"].action[2].action_delivery.target_effects[1].damage = {amount = 15, type = "physical"}
--table.insert(data.raw["projectile"]["grenade"].action[2].action_delivery.target_effects, {type = "damage", damage = {amount = 20, type = "explosion"}})

-- land mine stuff
-- data:extend(
   -- type = "projectile",
    -- name = "grenade",
    -- flags = {"not-on-map"},
    -- acceleration = 0.005,
    -- action =
    -- {
      -- {
        -- type = "direct",
        -- action_delivery =
        -- {
          -- type = "instant",
          -- target_effects =
          -- {
            -- {
              -- type = "create-entity",
              -- entity_name = "medium-explosion"
            -- },
            -- {
              -- type = "create-entity",
              -- entity_name = "small-scorchmark",
              -- check_buildability = true
            -- }
          -- }
        -- }
      -- },
      -- {
        -- type = "area",
        -- radius = 6.5,
        -- action_delivery =
        -- {
          -- type = "instant",
          -- target_effects =
          -- {
            -- {
            -- type = "damage",
            -- damage = {amount = 35, type = "explosion"}
            -- },
            -- {
            -- type = "create-entity",
            -- entity_name = "explosion"
            -- }
          -- }
        -- }
      -- }
    -- }