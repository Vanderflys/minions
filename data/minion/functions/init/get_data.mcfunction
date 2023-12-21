# 0 = pickaxe,    1 = axe,    2 = shovel,    3 = hoe,    4 = sword   5 = fishing rod

$execute if score @s minion.Tool matches 0 run data modify entity @s HandItems[0] set value {id:"wooden_pickaxe", Count:1b, tag:{HarvestType:"$(HarvestType)"}}
$execute if score @s minion.Tool matches 1 run data modify entity @s HandItems[0] set value {id:"wooden_axe", Count:1b, tag:{HarvestType:"$(HarvestType)"}}
$execute if score @s minion.Tool matches 2 run data modify entity @s HandItems[0] set value {id:"wooden_shovel", Count:1b, tag:{HarvestType:"$(HarvestType)"}}
$execute if score @s minion.Tool matches 3 run data modify entity @s HandItems[0] set value {id:"wooden_hoe", Count:1b, tag:{HarvestType:"$(HarvestType)"}}
$execute if score @s minion.Tool matches 4 run data modify entity @s HandItems[0] set value {id:"wooden_sword", Count:1b, tag:{HarvestType:"$(HarvestType)"}}
$execute if score @s minion.Tool matches 5 run data modify entity @s HandItems[0] set value {id:"fishing_rod", Count:1b, tag:{HarvestType:"$(HarvestType)"}}

$tag @s add $(HarvestType)