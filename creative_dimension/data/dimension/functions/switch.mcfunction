# Initialize the player if he is not already

scoreboard players add @s dimension_identifier 0
execute as @s[scores = {dimension_identifier = 0}] run function dimension:initialize_player


# Store player state

summon minecraft:marker 0 0 0 {Tags:["dimension_store"]}
function dimension:store


# Restore last player state

tag @s add dimension_target
execute as @e[type = minecraft:marker, tag = dimension_restore] run function dimension:restore
tag @s remove dimension_target


# Prepare for next switch

tag @e[type = minecraft:marker, tag = dimension_store] add dimension_restore
tag @e[type = minecraft:marker, tag = dimension_store] remove dimension_store