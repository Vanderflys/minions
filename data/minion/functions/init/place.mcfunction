advancement revoke @s only minion:spawn
advancement revoke @s only minion:spawn1
tag @s add placingMinion

# --------------------------------------------------------------------------------- #

scoreboard players set .itt minion.Temp 45
execute at @s anchored eyes positioned ^ ^ ^.5 run function minion:init/recursion

# --------------------------------------------------------------------------------- #

tellraw @s {"text":"Place a minion.", "color":"gray"}
tag @s remove placingMinion