# Link the player to the marker

scoreboard players operation @e[type = minecraft:marker, tag = dimension_store, limit = 1] dimension_identifier = @s dimension_identifier


# Store gamemode

data modify entity @e[type = minecraft:marker, tag = dimension_store, limit = 1] data.playerGameType set from entity @s playerGameType


# Store position

data modify entity @e[type = minecraft:marker, tag = dimension_store, limit = 1] data.Pos_0 set from entity @s Pos[0]
data modify entity @e[type = minecraft:marker, tag = dimension_store, limit = 1] data.Pos_1 set from entity @s Pos[1]
data modify entity @e[type = minecraft:marker, tag = dimension_store, limit = 1] data.Pos_2 set from entity @s Pos[2]