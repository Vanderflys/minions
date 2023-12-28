kill @e[type=interaction, tag=MinionDetection, predicate=!minion:passenger]
execute as @e[type=interaction, tag=MinionDetection, predicate=minion:passenger] if data entity @s attack run data remove entity @s attack
execute as @e[type=interaction, tag=MinionDetection, predicate=minion:passenger] if data entity @s interaction run data remove entity @s interaction

# --------------------------------------------------------------------------------- #

execute as @e[type=armor_stand, tag=Minion, scores={minion.Tier=1, minion.Items=..575}] at @s run function minion:workers/main
execute as @e[type=armor_stand, tag=Minion, scores={minion.Tier=1, minion.Items=576}] at @s run function minion:workers/checks/full

execute as @e[type=armor_stand, tag=Minion, scores={minion.Tier=2, minion.Items=..959}] at @s run function minion:workers/main
execute as @e[type=armor_stand, tag=Minion, scores={minion.Tier=2, minion.Items=960}] at @s run function minion:workers/checks/full

execute as @e[type=armor_stand, tag=Minion, scores={minion.Tier=3, minion.Items=..1279}] at @s run function minion:workers/main
execute as @e[type=armor_stand, tag=Minion, scores={minion.Tier=3, minion.Items=1280}] at @s run function minion:workers/checks/full


execute as @e[type=text_display, tag=Error] if score @s minion.Temp matches 1.. run scoreboard players remove @s minion.Temp 1
execute as @e[type=text_display, tag=Error] if score @s minion.Temp matches 0 run kill @s

# --------------------------------------------------------------------------------- #

# For v1.1.0
execute as @a at @s as @e[type=item, distance=..6, nbt={PickupDelay:20s}, nbt=!{Item:{tag:{Enchantments:[{id:"minecraft:protection",lvl:1s}]}}}, nbt={Item:{Count:64b}}] at @s if data entity @s Thrower run function minion:crafting/normal_to_enchanted

execute as @a at @s as @e[type=item, distance=..6, nbt={PickupDelay:20s}, nbt={Item:{tag:{Enchantments:[{id:"minecraft:protection",lvl:1s}]}}}] at @s if data entity @s Thrower run function minion:crafting/minions