advancement revoke @s only minion:claim
tag @s add ClaimMinion

# --------------------------------------------------------------------------------- #

execute as @e[type=interaction, tag=MinionDetection, predicate=minion:passenger] if data entity @s interaction on vehicle run function minion:util/check_claim

# --------------------------------------------------------------------------------- #

tag @s remove ClaimMinion