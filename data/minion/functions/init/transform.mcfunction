execute align xyz positioned ~.5 ~ ~.5 run summon armor_stand ~ ~ ~ {Tags:[Minion, New], Invulnerable:1b, NoGravity:1b, DisabledSlots:2096896, Small:1b, ShowArms:1b, NoBasePlate:1b, ArmorItems:[{id:"leather_boots", Count:1b},{id:"leather_leggings", Count:1b},{id:"leather_chestplate", Count:1b},{id:"player_head", Count:1b, tag:{SkullOwner:{}}}], Passengers:[{id:"interaction", height:-1, Tags:[MinionDetection]}]}

execute as @e[type=armor_stand, tag=Minion, tag=New, limit=1] run function minion:init/rename

# --------------------------------------------------------------------------------- #

setblock ~ ~ ~ air replace