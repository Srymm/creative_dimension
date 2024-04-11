# Create an unique identifier

scoreboard players operation @s dimension_identifier = dimension_player dimension_identifier
scoreboard players add dimension_player dimension_identifier 1


# Create an empty state in creative dimension

execute in dimension:creative run summon minecraft:marker 0 0 0 {Tags:["dimension_store"]}
execute in dimension:creative run scoreboard players operation @e[type = minecraft:marker, tag = dimension_store] dimension_identifier = @s dimension_identifier
execute in dimension:creative run tag @e[type = minecraft:marker, tag = dimension_store] add dimension_restore
execute in dimension:creative run tag @e[type = minecraft:marker, tag = dimension_store] remove dimension_store