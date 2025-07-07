scoreboard players set #cd_mutual_exclusion cd_objective 1

## Begin of critical section


# Change dimension tags

tag @s remove cd_creative_dimension
tag @s remove cd_default_dimension

execute unless dimension creative_dimension:creative run tag @s add cd_creative_dimension 
execute if dimension creative_dimension:creative run tag @s add cd_default_dimension


# Store player state

execute if score #cd_resynchronize cd_objective matches 0 run summon minecraft:marker 0 0 0 {Tags:["cd_store"]}
execute if score #cd_resynchronize cd_objective matches 1 run execute in minecraft:overworld run summon minecraft:marker 0 0 0 {Tags:["cd_store"]}
execute if score #cd_resynchronize cd_objective matches 2 run execute in creative_dimension:creative run summon minecraft:marker 0 0 0 {Tags:["cd_store"]}

function creative_dimension:change_dimension/store/all


# Restore last player state

tag @s add cd_target
execute as @e[type = minecraft:marker, tag = cd_restore] run function creative_dimension:change_dimension/restore/all
tag @s remove cd_target


# Prepare for next switch

tag @e[type = minecraft:marker, tag = cd_store] add cd_restore
tag @e[type = minecraft:marker, tag = cd_store] remove cd_store


## End of critical section

scoreboard players set #cd_mutual_exclusion cd_objective 0