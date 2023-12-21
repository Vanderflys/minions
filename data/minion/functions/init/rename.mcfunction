tag @s remove New
scoreboard players set @s minion.Items 0

data modify entity @s HandDropChances set value [0.0f,0.0f]
data modify entity @s ArmorDropChances set value [0.0f,0.0f,0.0f,0.0f]

data modify entity @s ArmorItems[3].tag.SkullOwner set from block ~ ~ ~ SkullOwner

execute store result score @s minion.Tool run data get block ~ ~ ~ SkullOwner.Id[2]
execute store result score @s minion.Cooldown run data get block ~ ~ ~ SkullOwner.Id[3]
scoreboard players operation @s minion.CooldownFresh = @s minion.Cooldown

data modify storage minion id set from block ~ ~ ~ SkullOwner.Id[0]
function minion:macros/get_drop with storage minion

function minion:init/get_data with storage minion