advancement revoke @s only minion:spawn
advancement revoke @s only minion:spawn1
tag @s add placingMinion

# --------------------------------------------------------------------------------- #

scoreboard players set .itt minion.Temp 45
execute at @s anchored eyes positioned ^ ^ ^.5 run function minion:init/recursion

# --------------------------------------------------------------------------------- #

execute unless entity @s[advancements={minion:minion_placed=true}] run playsound minecraft:ui.toast.challenge_complete master @s
advancement grant @s only minion:minion_placed
tellraw @s {"text":"Placed a minion.", "color":"gray"}
tag @s remove placingMinion