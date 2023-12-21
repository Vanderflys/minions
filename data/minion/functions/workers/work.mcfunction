scoreboard players operation @s minion.Cooldown = @s minion.CooldownFresh

# --------------------------------------------------------------------------------- #

execute if data storage minion settings.error unless block ~ ~ ~ #minion_blocks run function minion:workers/checks/bad_place
execute if block ~ ~ ~ #minion_blocks run function minion:workers/checks/get_block