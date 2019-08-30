-- Player given 50% explosive and fire resistance innate
-- This establishes 3 major classes of weapons: Anti personnel (piercing), Anti vehicle (explosion) and anti biter(fire).
-- Players and vehicles have high fire resistance
-- Only players have high explosive resistance

-- innate resists
data.raw["player"]["player"].resistances = { {type = "explosion", decrease = 0, percent = 30}, {type = "fire", decrease=0, percent = 50}}

-- mining time 
data.raw["character-corpse"]["character-corpse"].minable.mining_time = 1 

-- removes "nonflammable" property from player.
function tablefind(tab,el)
    for index, value in pairs(tab) do
		if value == el then
			return index
		end
	end
end
table.remove(data.raw["player"]["player"].flags, tablefind(data.raw["player"]["player"].flags, "non-flammable")) 

data.raw["wall"]["stone-wall"].resistances[4] = {type = "fire", decrease = 50, percent = 50} -- fire resist