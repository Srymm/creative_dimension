# Create an unique identifier

scoreboard players operation @s cd_objective = #cd_identifier_index cd_objective
scoreboard players add #cd_identifier_index cd_objective 1


# Create a linked marker to the player in cd:creative

execute in creative_dimension:creative run summon minecraft:marker 0 0 0 {Tags:["cd_store"]}
execute in creative_dimension:creative run scoreboard players operation @e[type = minecraft:marker, tag = cd_store, limit = 1] cd_objective = @s cd_objective


# Set empty inventory

execute in creative_dimension:creative run data modify entity @e[type = minecraft:marker, tag = cd_store, limit = 1] data.equipment set value {}
execute in creative_dimension:creative run data modify entity @e[type = minecraft:marker, tag = cd_store, limit = 1] data.Inventory set value {}


# Set gamemode to creative

execute in creative_dimension:creative run data modify entity @e[type = minecraft:marker, tag = cd_store, limit = 1] data.playerGameType set value 1


# Set position to 0 0 0

execute in creative_dimension:creative run data modify entity @e[type = minecraft:marker, tag = cd_store, limit = 1] data.Pos[0] set value 0d
execute in creative_dimension:creative run data modify entity @e[type = minecraft:marker, tag = cd_store, limit = 1] data.Pos[1] set value 0d
execute in creative_dimension:creative run data modify entity @e[type = minecraft:marker, tag = cd_store, limit = 1] data.Pos[2] set value 0d


# Prepare for first switch

execute in creative_dimension:creative run tag @e[type = minecraft:marker, tag = cd_store] add cd_restore
execute in creative_dimension:creative run tag @e[type = minecraft:marker, tag = cd_store] remove cd_store