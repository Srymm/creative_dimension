# Link the player to the marker

scoreboard players operation @e[type = minecraft:marker, tag = dimension, tag = store] id = @s id


# Store position

execute store result score @e[type = minecraft:marker, tag = dimension, tag = store] x run data get entity @s Pos[0]
execute store result score @e[type = minecraft:marker, tag = dimension, tag = store] y run data get entity @s Pos[1]
execute store result score @e[type = minecraft:marker, tag = dimension, tag = store] z run data get entity @s Pos[2]