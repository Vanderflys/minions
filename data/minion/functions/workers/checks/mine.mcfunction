execute unless entity @s[tag=Working] run scoreboard players add @s minion.Items 1
tag @s add Working


execute if score @s minion.Tier matches 1 unless score @s minion.Items matches 576 run setblock ~ ~ ~ air replace
execute if score @s minion.Tier matches 2 unless score @s minion.Items matches 960 run setblock ~ ~ ~ air replace
execute if score @s minion.Tier matches 3 unless score @s minion.Items matches 1280 run setblock ~ ~ ~ air replace