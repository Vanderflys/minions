advancement revoke @s only minion:remove
tag @s add RemoveMinion
tag @s add ClaimMinion

# --------------------------------------------------------------------------------- #

execute as @e[type=interaction, tag=MinionDetection, predicate=minion:passenger] if data entity @s attack on vehicle run function minion:util/check_claim
execute as @e[type=interaction, tag=MinionDetection, predicate=minion:passenger] if data entity @s attack on vehicle run function minion:macros/set_drops with storage minion drops

# --------------------------------------------------------------------------------- #

tellraw @s {"text":"Removed a minion.", "color":"gray"}
tag @s remove RemoveMinion
tag @s remove ClaimMinion