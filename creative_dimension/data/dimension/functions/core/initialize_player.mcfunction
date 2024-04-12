# Create an unique identifier

scoreboard players operation @s dimension_identifier = dimension_player dimension_identifier
scoreboard players add dimension_player dimension_identifier 1


# Create a linked marker to the player in dimension:creative

execute in dimension:creative run summon minecraft:marker 0 0 0 {Tags:["dimension_store"]}
execute in dimension:creative run scoreboard players operation @e[type = minecraft:marker, tag = dimension_store, limit = 1] dimension_identifier = @s dimension_identifier


# Set gamemode to creative

execute in dimension:creative run data modify entity @e[type = minecraft:marker, tag = dimension_store, limit = 1] data.playerGameType set value 1


# Set position to 0 0 0

execute in dimension:creative run data modify entity @e[type = minecraft:marker, tag = dimension_store, limit = 1] data.Pos_0 set value 0
execute in dimension:creative run data modify entity @e[type = minecraft:marker, tag = dimension_store, limit = 1] data.Pos_1 set value 0
execute in dimension:creative run data modify entity @e[type = minecraft:marker, tag = dimension_store, limit = 1] data.Pos_2 set value 0


# Prepare for first switch

execute in dimension:creative run tag @e[type = minecraft:marker, tag = dimension_store] add dimension_restore
execute in dimension:creative run tag @e[type = minecraft:marker, tag = dimension_store] remove dimension_store