-- Armor Module stuff.
-- Notes:
-- Solar panels multiplied into a 2x2 item, effectively reducing their cost to be on par with other low tier modules. Also 50% stronger per tile, making them 2/9 as strong as fusion. They should be a worthy entry tier module now.
-- Night vision has enough internal energy storage to last 1 night. Barely.
-- Roboports can always input enough energy to keep their internal buffer full. They still drain in single file but the last one should never fully discharge on battery power.
-- Roboport range reduced 33% Mk1, 25% Mk2. This should play out as a buff in practice by making their construction zones tighter and more efficient.
-- Roboport energy storage dramatically reduced. Roboports are more dependent on batteries, but you can remove them without killing batteries now.

--table.insert(data.raw["night-vision-equipment"].energy_source, {buffer_capacity="1GJ"})
data.raw["night-vision-equipment"]["night-vision-equipment"].energy_source.buffer_capacity= "1200kJ"
data.raw["night-vision-equipment"]["night-vision-equipment"].energy_source.input_flow_limit= "100kW"
data.raw["solar-panel-equipment"]["solar-panel-equipment"].shape = {width=2, height=2, type="full"}
data.raw["solar-panel-equipment"]["solar-panel-equipment"].power = "60kW"
data.raw["solar-panel-equipment"]["solar-panel-equipment"].sprite = {filename = "__pvp-rebalance__/graphics/equipment/modsolar.png", width=64, height=64, priority = "medium"}
data.raw["roboport-equipment"]["personal-roboport-equipment"].construction_radius = 10 --down from 15
data.raw["roboport-equipment"]["personal-roboport-equipment"].energy_source= { 
      type = "electric",
      buffer_capacity = "5MJ", --down from 35MJ
      input_flow_limit = "2000KW", --down from 3500kw
      usage_priority = "secondary-input"
    }
data.raw["roboport-equipment"]["personal-roboport-mk2-equipment"].construction_radius = 15 --down from 20	
data.raw["roboport-equipment"]["personal-roboport-mk2-equipment"].energy_source= { 
      type = "electric",
      buffer_capacity = "10MJ", --down from 35MJ
      input_flow_limit = "4000KW", --up from 3500kw
      usage_priority = "secondary-input"
    }

-- personal laser turret
data.raw["active-defense-equipment"]["personal-laser-defense-equipment"].attack_parameters.damage_modifier = 4
data.raw["active-defense-equipment"]["personal-laser-defense-equipment"].attack_parameters.cooldown = 30
data.raw["active-defense-equipment"]["personal-laser-defense-equipment"].attack_parameters.ammo_type.category = "laser-turret"