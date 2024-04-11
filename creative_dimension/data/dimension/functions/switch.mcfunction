# Store player state

summon minecraft:marker 0 0 0 {Tags:["dimension_store"]}
function dimension:core/store


# Restore last player state

tag @s add dimension_target
execute as @e[type = minecraft:marker, tag = dimension_restore] run function dimension:core/restore
tag @s remove dimension_target


# Prepare for next switch

tag @e[type = minecraft:marker, tag = dimension_store] add dimension_restore
tag @e[type = minecraft:marker, tag = dimension_store] remove dimension_store