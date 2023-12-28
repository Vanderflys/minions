tellraw @a [{"text": "Vanderflys","color": "gold"},{"text":": Thank you for using","color":"white"},{"text": " Minions+","color": "green"}]
execute as @a run function minion:settings

data modify storage minion names set value [{"name":"Cobblestone","id":0},{"name":"Dirt","id":1},{"name":"Clay","id":2},{"name":"Sand","id":3},{"name":"Gravel","id":4},{"name":"Snow","id":5},{"name":"Moss","id":6},{"name":"Deepslate","id":7},{"name":"Endstone","id":8},{"name":"Netherrack","id":9},{"name":"Glowstone","id":10},{"name":"Ice","id":11},{"name":"Coal","id":12},{"name":"Redstone","id":13},{"name":"Gold","id":14},{"name":"Iron","id":15},{"name":"Lapis","id":16},{"name":"Emerald","id":17},{"name":"Quartz","id":18},{"name":"Oak","id":19},{"name":"Spruce","id":20},{"name":"Birch","id":21},{"name":"Jungle","id":22},{"name":"Acacia","id":23},{"name":"Crimson","id":24},{"name":"Mangrove","id":25},{"name":"Cherry","id":26},{"name":"Warped","id":27},{"name":"Dark Oak","id":28}]

data modify storage minion harvests set value [{"name":"cobblestone","id":0},{"name":"dirt","id":1},{"name":"clay","id":2},{"name":"sand","id":3},{"name":"gravel","id":4},{"name":"snow_block","id":5},{"name":"moss_block","id":6},{"name":"deepslate","id":7},{"name":"end_stone","id":8},{"name":"netherrack","id":9},{"name":"glowstone","id":10},{"name":"packed_ice","id":11},{"name":"coal_ore","id":12},{"name":"redstone_ore","id":13},{"name":"gold_ore","id":14},{"name":"iron_ore","id":15},{"name":"lapis_ore","id":16},{"name":"emerald_ore","id":17},{"name":"nether_quartz_ore","id":18},{"name":"oak_log","id":19},{"name":"spruce_log","id":20},{"name":"birch_log","id":21},{"name":"jungle_log","id":22},{"name":"acacia_log","id":23},{"name":"crimson_stem","id":24},{"name":"mangrove_log","id":25},{"name":"cherry_log","id":26},{"name":"warped_stem","id":27},{"name":"dark_oak_log","id":28}]
data modify storage minion drops set value {id:0, tier:1, ID:[0,1,0,400], Properties:{textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWE3NzBhYTU3NTgzNWU0ZTgwMGUzYjNjZjY2MTY1OWYyNTQwZmNlY2Q1YmE0YWRkMzUyYzU1MmYyN2ExNjIxZiJ9fX0="}]}}


# Default minion settings
execute unless data storage minion settings run data modify storage minion settings.error set value 1b


# Fix older minion versions
execute as @e[type=armor_stand, tag=Minion] unless score @s minion.Tier matches 1.. run scoreboard players set @s minion.Tier 1


scoreboard objectives add minion.Temp dummy

scoreboard objectives add minion.Tier dummy
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
# 0 = pickaxe,1 = axe,2 = shovel,3 = hoe,4 = sword 5 = fishing rod



# give @p player_head{SkullOwner:{Name:"Minion",Id:[I;3,1,2,4000],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODE4ZTA1NDJiZDFjMzI3ZTNlMmQ2OTQwM2E5ZjQ3OTdjMTU5MzFlNTg1ZmM1YWMzNDg4ZmQ2MTY5ZThmYTdlYyJ9fX0="}]}},display:{Name:'{"extra":[{"italic":false,"color":"gray","text":"Clay Minion T1"}],"text":""}'}}