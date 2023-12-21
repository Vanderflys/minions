## Get the minion tier
execute store result score @s minion.Temp run data get entity @s ArmorItems[3].tag.SkullOwner.Id[1]

execute if score @s minion.Temp matches 1 run data modify entity @s ArmorItems[3].tag.SkullOwner.Id[1] set value 2
execute if score @s minion.Temp matches 1 run data modify entity @s ArmorItems[3].tag.SkullOwner.Id[1] set value 2