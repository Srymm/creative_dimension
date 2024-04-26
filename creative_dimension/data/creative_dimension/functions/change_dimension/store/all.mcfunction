# Link the player to the marker

scoreboard players operation @e[type = minecraft:marker, tag = cd_store, limit = 1] cd_objective = @s cd_objective


# Store inventory

data modify entity @e[type = minecraft:marker, tag = cd_store, limit = 1] data.Inventory set from entity @s Inventory


# Store enderchest

data modify entity @e[type = minecraft:marker, tag = cd_store, limit = 1] data.EnderItems set from entity @s EnderItems


# Store experience

data modify entity @e[type = minecraft:marker, tag = cd_store, limit = 1] data.XpLevel set from entity @s XpLevel
execute store result entity @e[type = minecraft:marker, tag = cd_store, limit = 1] data.XpP int 1 run xp query @s points


# Store gamemode

data modify entity @e[type = minecraft:marker, tag = cd_store, limit = 1] data.playerGameType set from entity @s playerGameType


# Store position

data modify entity @e[type = minecraft:marker, tag = cd_store, limit = 1] data.Pos set from entity @s Pos