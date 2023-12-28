data modify storage minion drops.id set from entity @s ArmorItems[3].tag.SkullOwner.Id[0]
data modify storage minion drops.tier set from entity @s ArmorItems[3].tag.SkullOwner.Id[1]

data modify storage minion drops.ID set from entity @s ArmorItems[3].tag.SkullOwner.Id
data modify storage minion drops.Properties set from entity @s ArmorItems[3].tag.SkullOwner.Properties

function minion:macros/set_variables with storage minion drops
function minion:macros/remove_minion with storage minion drops