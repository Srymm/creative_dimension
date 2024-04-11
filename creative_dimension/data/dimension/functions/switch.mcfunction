# Store player state

summon minecraft:marker 0 0 0 {Tags:["dimension", "store"]}
function dimension:core/store


# Restore last player state

tag @s add target
execute as @e[type = minecraft:marker, tag = dimension, tag = restore] run function dimension:core/restore
tag @s remove target


# Prepare for next switch

tag @e[type = minecraft:marker, tag = dimension, tag = store] add restore
tag @e[type = minecraft:marker, tag = dimension, tag = store] remove store