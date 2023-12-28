## Get the minion tier
# tellraw @a [{"text":"[DEBUG] ","color":"yellow"},{"text":"Tier ","color":"gray"},{"score":{"name":"@s","objective":"minion.Tier"}}]
# tellraw @a [{"text":"[DEBUG] ","color":"yellow"},{"text":"Armor Tier ","color":"gray"},{"entity":"@s","nbt":"ArmorItems[3].tag.SkullOwner.Id[1]"}]
# execute if score @s minion.Tier matches 2 run say upgraded to lvl 3
# execute if score @s minion.Tier matches 1 run say upgraded to lvl 2

execute if score @s minion.Tier matches 2 run scoreboard players set @s minion.Tier 3
execute if score @s minion.Tier matches 1 run scoreboard players set @s minion.Tier 2

execute store result entity @s ArmorItems[3].tag.SkullOwner.Id[1] int 1 run scoreboard players get @s minion.Tier


# Remove 10 seconds of cooldown each upgrade
scoreboard players operation @s minion.Temp = @s minion.CooldownFresh
scoreboard players remove @s minion.Temp 200

scoreboard players operation @s minion.CooldownFresh = @s minion.Temp
scoreboard players operation @s minion.Cooldown = @s minion.Temp
execute store result entity @s ArmorItems[3].tag.SkullOwner.Id[3] int 1 run scoreboard players get @s minion.Temp


# Change the appearance of the minion to deflect the tier
data modify entity @s[scores={minion.Tier=2}] ArmorItems[2].id set value "iron_chestplate"
data modify entity @s[scores={minion.Tier=2}] ArmorItems[1].id set value "iron_leggings"
data modify entity @s[scores={minion.Tier=2}] ArmorItems[0].id set value "iron_boots"

data modify entity @s[scores={minion.Tier=3}] ArmorItems[2].id set value "diamond_chestplate"
data modify entity @s[scores={minion.Tier=3}] ArmorItems[1].id set value "diamond_leggings"
data modify entity @s[scores={minion.Tier=3}] ArmorItems[0].id set value "diamond_boots"


tellraw @a[distance=..5] [{"text":"[Minion] ","color":"yellow"},{"text":"has been upgraded to tier ","extra": [{"score": {"name":"@s","objective":"minion.Tier"}}],"color":"gray"}]
playsound minecraft:entity.player.levelup master @a[distance=..5] ~ ~ ~ 1 2

kill @e[nbt={Item:{Count:64b}, PickupDelay:20s}]