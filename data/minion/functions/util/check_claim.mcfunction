execute if score @s minion.Items matches 1.. run tellraw @a[tag=ClaimMinion] [{"text":"You just collected ","color":"gray"},{"score":{"name":"@s", "objective":"minion.Items"}, "extra": [{"text": " "}]},{"entity":"@s", "nbt":"HandItems[0].tag.HarvestType"},{"text":".","color":"gray"}]

execute if score @s minion.Items matches 0 run tellraw @a[tag=ClaimMinion] [{"text":"This minion has no items to claim.","color":"gray"}]

# --------------------------------------------------------------------------------- #

execute store result storage minion claim.amount int 1 run scoreboard players get @s minion.Items
data modify storage minion claim.type set from entity @s HandItems[0].tag.HarvestType

execute as @a[tag=ClaimMinion] run function minion:macros/claim_minion with storage minion claim

scoreboard players set @s minion.Items 0