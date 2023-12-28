scoreboard players remove .itt minion.Temp 1

# --------------------------------------------------------------------------------- #

execute if block ~ ~ ~ player_head{SkullOwner:{Name:"Minion"}} run scoreboard players set .itt Temp 0
execute if block ~ ~ ~ player_head{SkullOwner:{Name:"Minion"}} run function minion:init/transform

execute if block ~ ~ ~ player_wall_head{SkullOwner:{Name:"Minion"}} run scoreboard players set .itt Temp 0
execute if block ~ ~ ~ player_wall_head{SkullOwner:{Name:"Minion"}} run function minion:init/transform

# --------------------------------------------------------------------------------- #

execute if score .itt minion.Temp matches 1.. positioned ^ ^ ^.1 run function minion:init/recursion