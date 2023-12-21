execute unless entity @s[tag=Working] run scoreboard players add @s minion.Items 1
tag @s add Working

execute unless score @s minion.Items matches 576 run setblock ~ ~ ~ air replace