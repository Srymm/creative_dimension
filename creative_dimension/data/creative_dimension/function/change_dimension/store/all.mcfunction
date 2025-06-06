# Link the player to the marker

scoreboard players operation @e[type = minecraft:marker, tag = cd_store, limit = 1] cd_objective = @s cd_objective


# Store inventory

data modify entity @e[type = minecraft:marker, tag = cd_store, limit = 1] data.equipment set from entity @s equipment
data modify entity @e[type = minecraft:marker, tag = cd_store, limit = 1] data.Inventory set from entity @s Inventory


# Store enderchest

data modify entity @e[type = minecraft:marker, tag = cd_store, limit = 1] data.EnderItems set from entity @s EnderItems


# Store experience

data modify entity @e[type = minecraft:marker, tag = cd_store, limit = 1] data.XpLevel set from entity @s XpLevel
execute store result entity @e[type = minecraft:marker, tag = cd_store, limit = 1] data.XpP int 1 run xp query @s points


# Store gamemode

data modify entity @e[type = minecraft:marker, tag = cd_store, limit = 1] data.playerGameType set from entity @s playerGameType


# Store position

execute if score #cd_resynchronize cd_objective matches 0 run data modify entity @e[type = minecraft:marker, tag = cd_store, limit = 1] data.Pos set from entity @s Pos
execute if score #cd_resynchronize cd_objective matches 1 run data modify entity @e[type = minecraft:marker, tag = cd_store, limit = 1] data.Pos set from entity @e[type = minecraft:armor_stand, tag = cd_restore, limit = 1] data.DefaultOverworldPosition
execute if score #cd_resynchronize cd_objective matches 2 run data modify entity @e[type = minecraft:marker, tag = cd_store, limit = 1] data.Pos set from entity @e[type = minecraft:armor_stand, tag = cd_restore, limit = 1] data.DefaultCreativePosition