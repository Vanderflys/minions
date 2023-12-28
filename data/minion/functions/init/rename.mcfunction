tag @s remove New
scoreboard players set @s minion.Items 0

data modify entity @s HandDropChances set value [0.0f,0.0f]
data modify entity @s ArmorDropChances set value [0.0f,0.0f,0.0f,0.0f]

data modify entity @s ArmorItems[3].tag.SkullOwner set from block ~ ~ ~ SkullOwner

execute store result score @s minion.Tier run data get block ~ ~ ~ SkullOwner.Id[1]
execute store result score @s minion.Tool run data get block ~ ~ ~ SkullOwner.Id[2]
execute store result score @s minion.Cooldown run data get block ~ ~ ~ SkullOwner.Id[3]
scoreboard players operation @s minion.CooldownFresh = @s minion.Cooldown

execute if score @s minion.Tier matches 2 run data modify entity @s ArmorItems[2].id set value "iron_chestplate"
execute if score @s minion.Tier matches 2 run data modify entity @s ArmorItems[1].id set value "iron_leggings"
execute if score @s minion.Tier matches 2 run data modify entity @s ArmorItems[0].id set value "iron_boots"

execute if score @s minion.Tier matches 3 run data modify entity @s ArmorItems[2].id set value "diamond_chestplate"
execute if score @s minion.Tier matches 3 run data modify entity @s ArmorItems[1].id set value "diamond_leggings"
execute if score @s minion.Tier matches 3 run data modify entity @s ArmorItems[0].id set value "diamond_boots"

data modify storage minion id set from block ~ ~ ~ SkullOwner.Id[0]

function minion:macros/get_drop with storage minion
function minion:init/get_data with storage minion