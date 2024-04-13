# Link the player to the marker

scoreboard players operation @e[type = minecraft:marker, tag = dimension_store, limit = 1] dimension_identifier = @s dimension_identifier


# Store inventory

data modify entity @e[type = minecraft:marker, tag = dimension_store, limit = 1] data.Inventory set from entity @s Inventory


# Store gamemode

data modify entity @e[type = minecraft:marker, tag = dimension_store, limit = 1] data.playerGameType set from entity @s playerGameType


# Store position

data modify entity @e[type = minecraft:marker, tag = dimension_store, limit = 1] data.Pos set from entity @s Pos