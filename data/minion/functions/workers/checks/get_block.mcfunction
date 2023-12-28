execute as @s[tag=cobblestone] if block ~ ~ ~ cobblestone run function minion:workers/checks/mine
execute as @s[tag=dirt] if block ~ ~ ~ dirt run function minion:workers/checks/mine
execute as @s[tag=clay] if block ~ ~ ~ clay run function minion:workers/checks/mine
execute as @s[tag=gravel] if block ~ ~ ~ gravel run function minion:workers/checks/mine
execute as @s[tag=sand] if block ~ ~ ~ sand run function minion:workers/checks/mine
execute as @s[tag=snow_block] if block ~ ~ ~ snow_block run function minion:workers/checks/mine
execute as @s[tag=moss_block] if block ~ ~ ~ moss_block run function minion:workers/checks/mine
execute as @s[tag=deepslate] if block ~ ~ ~ deepslate run function minion:workers/checks/mine
execute as @s[tag=end_stone] if block ~ ~ ~ end_stone run function minion:workers/checks/mine
execute as @s[tag=netherrack] if block ~ ~ ~ netherrack run function minion:workers/checks/mine
execute as @s[tag=glowstone] if block ~ ~ ~ glowstone run function minion:workers/checks/mine
execute as @s[tag=packed_ice] if block ~ ~ ~ packed_ice run function minion:workers/checks/mine

execute as @s[tag=coal_ore] if block ~ ~ ~ coal_ore run function minion:workers/checks/mine
execute as @s[tag=redstone_ore] if block ~ ~ ~ redstone_ore run function minion:workers/checks/mine
execute as @s[tag=gold_ore] if block ~ ~ ~ gold_ore run function minion:workers/checks/mine
execute as @s[tag=iron_ore] if block ~ ~ ~ iron_ore run function minion:workers/checks/mine
execute as @s[tag=lapis_ore] if block ~ ~ ~ lapis_ore run function minion:workers/checks/mine
execute as @s[tag=emerald_ore] if block ~ ~ ~ emerald_ore run function minion:workers/checks/mine
execute as @s[tag=nether_quartz_ore] if block ~ ~ ~ nether_quartz_ore run function minion:workers/checks/mine

execute as @s[tag=oak_log] if block ~ ~ ~ oak_log run function minion:workers/checks/mine
execute as @s[tag=spruce_log] if block ~ ~ ~ spruce_log run function minion:workers/checks/mine
execute as @s[tag=birch_log] if block ~ ~ ~ birch_log run function minion:workers/checks/mine
execute as @s[tag=jungle_log] if block ~ ~ ~ jungle_log run function minion:workers/checks/mine
execute as @s[tag=acaacacia_logcia] if block ~ ~ ~ acacia_log run function minion:workers/checks/mine
execute as @s[tag=crimcrimson_stemson] if block ~ ~ ~ crimson_stem run function minion:workers/checks/mine
execute as @s[tag=mangrove_log] if block ~ ~ ~ mangrove_log run function minion:workers/checks/mine
execute as @s[tag=cherrcherry_logy] if block ~ ~ ~ cherry_log run function minion:workers/checks/mine
execute as @s[tag=warped_stem] if block ~ ~ ~ warped_stem run function minion:workers/checks/mine
execute as @s[tag=dark_oak_log] if block ~ ~ ~ dark_oak_log run function minion:workers/checks/mine


execute unless entity @s[tag=Working] if block ~ ~ ~ air run function minion:workers/checks/replenish

tag @s remove Working