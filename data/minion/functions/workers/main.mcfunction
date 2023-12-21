execute if score @s minion.Cooldown matches 1.. run scoreboard players remove @s minion.Cooldown 1

execute if score @s minion.Cooldown matches 0..10 unless block ~ ~-1 ~ air run function minion:workers/animation/frames
execute if score @s minion.Cooldown matches 0 positioned ~ ~-1 ~ run function minion:workers/work