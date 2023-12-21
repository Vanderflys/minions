advancement revoke @s only minion:check
tag @s add CheckMinion

# --------------------------------------------------------------------------------- #

execute as @e[type=interaction, tag=MinionDetection, predicate=minion:passenger] if data entity @s interaction on vehicle run tellraw @a[tag=CheckMinion] [{"text":"[Minion] ","color":"green"},{"text":"I have ","color":"white"},{"score":{"name":"@s", "objective":"minion.Items"}, "extra": [{"text": " "}]},{"entity":"@s", "nbt":"HandItems[0].tag.HarvestType"},{"text":".","color":"white"}]

# --------------------------------------------------------------------------------- #

tag @s remove CheckMinion