scoreboard players set #cd_mutual_exclusion cd_objective 1

## Begin of critical section


# Set default overworld position at the first initialize call

execute if score #cd_default_overworld_position cd_objective matches 0 run data modify entity @e[type = minecraft:armor_stand, tag = cd_restore, limit = 1] data.DefaultOverworldPosition set from entity @s Pos
execute if score #cd_default_overworld_position cd_objective matches 0 run scoreboard players set #cd_default_overworld_position cd_objective 1


# Create an unique identifier

scoreboard players operation @s cd_objective = #cd_identifier_index cd_objective
scoreboard players add #cd_identifier_index cd_objective 1


# Create a linked marker to the player in creative dimension

execute in creative_dimension:creative run summon minecraft:marker 0 0 0 {Tags:["cd_store"]}
scoreboard players operation @e[type = minecraft:marker, tag = cd_store, limit = 1] cd_objective = @s cd_objective


# Set empty inventory

data modify entity @e[type = minecraft:marker, tag = cd_store, limit = 1] data.equipment set value {}
data modify entity @e[type = minecraft:marker, tag = cd_store, limit = 1] data.Inventory set value {}


# Set gamemode to creative

data modify entity @e[type = minecraft:marker, tag = cd_store, limit = 1] data.playerGameType set value 1


# Set position to default creative position

data modify entity @e[type = minecraft:marker, tag = cd_store, limit = 1] data.Pos set from entity @e[type = minecraft:armor_stand, tag = cd_restore, limit = 1] data.DefaultCreativePosition


# Prepare for first switch

tag @e[type = minecraft:marker, tag = cd_store] add cd_restore
tag @e[type = minecraft:marker, tag = cd_store] remove cd_store


# Change dimension tag

tag @s add cd_default_dimension


## End of critical section

scoreboard players set #cd_mutual_exclusion cd_objective 0