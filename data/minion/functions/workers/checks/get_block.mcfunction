execute as @s[tag=cobblestone] if block ~ ~ ~ cobblestone run function minion:workers/checks/mine
execute as @s[tag=dirt] if block ~ ~ ~ dirt run function minion:workers/checks/mine
execute as @s[tag=clay] if block ~ ~ ~ clay run function minion:workers/checks/mine

execute unless entity @s[tag=Working] if block ~ ~ ~ air run function minion:workers/checks/replenish

tag @s remove Working