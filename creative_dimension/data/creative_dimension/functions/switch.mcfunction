scoreboard players set #cd_mutual_exclusion cd_variable 1

## Begin of critical section


# Initialize the player if he is not already

scoreboard players add @s cd_identifier 0
execute if score @s cd_identifier matches 0 run function creative_dimension:initialize_player


# Store player state

summon minecraft:marker 0 0 0 {Tags:["cd_store"]}
function creative_dimension:store


# Restore last player state

tag @s add cd_target
execute as @e[type = minecraft:marker, tag = cd_restore] run function creative_dimension:restore
tag @s remove cd_target


# Prepare for next switch

tag @e[type = minecraft:marker, tag = cd_store] add cd_restore
tag @e[type = minecraft:marker, tag = cd_store] remove cd_store


## End of critical section


scoreboard players set #cd_mutual_exclusion cd_variable 0