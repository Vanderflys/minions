tellraw @a [{"text": "Vanderflys","color": "gold"},{"text":": Thank you for using","color":"white"},{"text": " Minions+", "color": "green"}]
execute as @a run function minion:settings

data modify storage minion names set value [{name:"Cobblestone",id:0},{name:"Dirt", id:1},{name:"Clay", id:2},{name:"Sand", id:3},{name:"Gravel", id:4}]
data modify storage minion harvests set value [{name:"cobblestone",id:0},{name:"dirt", id:1},{name:"clay", id:2},{name:"sand", id:3},{name:"gravel", id:4}]
data modify storage minion drops set value {id:0, tier:1, ID:[0,1,0,400], Properties:{textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWE3NzBhYTU3NTgzNWU0ZTgwMGUzYjNjZjY2MTY1OWYyNTQwZmNlY2Q1YmE0YWRkMzUyYzU1MmYyN2ExNjIxZiJ9fX0="}]}}


# Default minion settings
data modify storage minion settings.error set value 1b


scoreboard objectives add minion.Temp dummy

scoreboard objectives add minion.Tool dummy
scoreboard objectives add minion.Items dummy
scoreboard objectives add minion.Cooldown dummy
scoreboard objectives add minion.CooldownFresh dummy


# Minion setup
# Id:[a, b, c, d]
# a = Minion type
# b = Minion level
# c = Minion tool
# d = Minion cooldown

# Minion Tools
# 0 = pickaxe,    1 = axe,    2 = shovel,    3 = hoe,    4 = sword   5 = fishing rod



# give @p player_head{SkullOwner:{Name:"Minion",Id:[I;3,1,2,4000],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODE4ZTA1NDJiZDFjMzI3ZTNlMmQ2OTQwM2E5ZjQ3OTdjMTU5MzFlNTg1ZmM1YWMzNDg4ZmQ2MTY5ZThmYTdlYyJ9fX0="}]}},display:{Name:'{"extra":[{"italic":false,"color":"gray","text":"Clay Minion T1"}],"text":""}'}}