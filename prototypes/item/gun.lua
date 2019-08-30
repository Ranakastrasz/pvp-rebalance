-- Shotgun has less range, but is a run/gun weapon now. 
-- Tank has minimum range.


--data.raw["gun"]["submachine-gun"].attack_parameters.range= 16

data.raw["gun"]["shotgun"].attack_parameters.movement_slow_down_factor = 0.35       --buff from 60% slow
data.raw["gun"]["shotgun"].attack_parameters.range = 14 -- Down from 20cap(~15 ammo)
data.raw["gun"]["combat-shotgun"].attack_parameters.movement_slow_down_factor = .25 --buff from 50% slow
data.raw["gun"]["combat-shotgun"].attack_parameters.range = 14 -- Down from 20cap(~15 ammo)
data.raw["gun"]["rocket-launcher"].attack_parameters.movement_slow_down_factor = 1 --Nerf from 80% slow, nuke still lets you walk though.
data.raw["gun"]["tank-cannon"].attack_parameters.min_range = 6 --16.50  turret value ignored, only projectile min_range matters
data.raw["gun"]["tank-machine-gun"].attack_parameters.cooldown=3
data.raw["gun"]["tank-machine-gun"].attack_parameters.damage_modifier=1.5
data.raw["gun"]["vehicle-machine-gun"].attack_parameters.ammo_category = "grenade"