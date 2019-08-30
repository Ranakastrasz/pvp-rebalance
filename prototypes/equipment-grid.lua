-- replaces vanilla armor grid parameters.
-- Overall low tier armor buff, despite less slots.
-- Before: 
	-- Modular armor 4 items, or 1 fusion and nothing else
	-- Power armor 9 items, or 1 fusion/1 exo/3 other+batteries
	-- Mk2 25 items
-- Now: 
	-- Modular armor 6 items, 1 fusion and 2 other (no fusion/exo)
	-- Power armor 12 items, or 2 fusions/2 exo 

data:extend(
{
  {
    type = "equipment-grid",
    name = "small-equipment-grid",
    width = 4,
    height = 6,
    equipment_categories = {"armor"}
  },
  {
    type = "equipment-grid",
    name = "medium-equipment-grid",
    width = 6,
    height = 8,
    equipment_categories = {"armor"}
  },
  {
    type = "equipment-grid",
    name = "large-equipment-grid",
    width = 10,
    height = 10,
    equipment_categories = {"armor"}
  }
}
)
