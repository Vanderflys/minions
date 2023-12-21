execute positioned ~ ~1 ~ run summon minecraft:text_display ~ ~1.4 ~ {Tags:[Error], Invulnerable:1b, billboard:"center", default_background: 0b, background: 0, text:'{"text":"I can\'t mine this!","color":"red"}'}

tag @s add CantMine

execute as @e[type=text_display, tag=Error] unless score @s minion.Temp matches 1.. store result score @s minion.Temp run data get entity @e[type=armor_stand, limit=1, sort=nearest, tag=CantMine] ArmorItems[3].tag.SkullOwner.Id[3]

tag @s remove CantMine