# Link the player to the marker

scoreboard players operation @e[type = minecraft:marker, tag = dimension_store] dimension_identifier = @s dimension_identifier


# Store position

execute store result score @e[type = minecraft:marker, tag = dimension_store] dimension_x run data get entity @s Pos[0]
execute store result score @e[type = minecraft:marker, tag = dimension_store] dimension_y run data get entity @s Pos[1]
execute store result score @e[type = minecraft:marker, tag = dimension_store] dimension_z run data get entity @s Pos[2]