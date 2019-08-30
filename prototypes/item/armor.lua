-- all armors have laser defense added.

 table.insert(data.raw["armor"]["light-armor"].resistances, {type = "laser", decrease = 2, percent = 15})


data.raw["armor"]["heavy-armor"].resistances[2] = {type = "explosion", decrease = 5, percent = 30}
data.raw["armor"]["modular-armor"].resistances[3] =  {type = "explosion", decrease = 8, percent = 40}
data.raw["armor"]["power-armor"].resistances[3] =  {type = "explosion", decrease = 12, percent = 50}
data.raw["armor"]["power-armor-mk2"].resistances[3] = {type = "explosion", decrease = 15, percent = 60}


table.insert(data.raw["armor"]["heavy-armor"].resistances, {type = "laser", decrease = 3, percent = 25})
table.insert(data.raw["armor"]["modular-armor"].resistances, {type = "laser", decrease = 4, percent = 35})
table.insert(data.raw["armor"]["power-armor"].resistances, {type = "laser", decrease = 6, percent = 45})
table.insert(data.raw["armor"]["power-armor-mk2"].resistances, {type = "laser", decrease = 8, percent = 55})

