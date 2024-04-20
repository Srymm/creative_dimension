# Restore inventory

execute if score @s cd_identifier = @a[tag = cd_target, limit = 1] cd_identifier run execute store result score #cd_items cd_variable run data get entity @s data.Inventory

execute if score @s cd_identifier = @a[tag = cd_target, limit = 1] cd_identifier run clear @a[tag = cd_target, limit = 1]
execute if score @s cd_identifier = @a[tag = cd_target, limit = 1] cd_identifier run execute if score #cd_items cd_variable matches 1.. run function creative_dimension:change_dimension/restore/inventory


# Restore enderchest

execute if score @s cd_identifier = @a[tag = cd_target, limit = 1] cd_identifier run execute store result score #cd_items cd_variable run data get entity @s data.EnderItems

execute if score @s cd_identifier = @a[tag = cd_target, limit = 1] cd_identifier run execute as @a[tag = cd_target, limit = 1] run function creative_dimension:change_dimension/restore/clear_enderchest
execute if score @s cd_identifier = @a[tag = cd_target, limit = 1] cd_identifier run execute if score #cd_items cd_variable matches 1.. run function creative_dimension:change_dimension/restore/enderchest
execute if score @s cd_identifier = @a[tag = cd_target, limit = 1] cd_identifier run data modify entity @e[type = minecraft:armor_stand, tag = cd_restore, limit = 1] HandItems[0] set value {}


# Restore gamemode

execute if score @s cd_identifier = @a[tag = cd_target, limit = 1] cd_identifier run execute store result score #cd_gamemode cd_variable run data get entity @s data.playerGameType

execute if score @s cd_identifier = @a[tag = cd_target, limit = 1] cd_identifier run execute if score #cd_gamemode cd_variable matches 0 run gamemode survival @a[tag = cd_target, limit = 1]
execute if score @s cd_identifier = @a[tag = cd_target, limit = 1] cd_identifier run execute if score #cd_gamemode cd_variable matches 1 run gamemode creative @a[tag = cd_target, limit = 1]
execute if score @s cd_identifier = @a[tag = cd_target, limit = 1] cd_identifier run execute if score #cd_gamemode cd_variable matches 2 run gamemode adventure @a[tag = cd_target, limit = 1]
execute if score @s cd_identifier = @a[tag = cd_target, limit = 1] cd_identifier run execute if score #cd_gamemode cd_variable matches 3 run gamemode spectator @a[tag = cd_target, limit = 1]


# Restore experience

execute if score @s cd_identifier = @a[tag = cd_target, limit = 1] cd_identifier run execute store result score #cd_experience_levels cd_variable run data get entity @s data.XpLevel
execute if score @s cd_identifier = @a[tag = cd_target, limit = 1] cd_identifier run execute store result score #cd_experience_points cd_variable run data get entity @s data.XpP

execute if score @s cd_identifier = @a[tag = cd_target, limit = 1] cd_identifier run xp set @a[tag = cd_target, limit = 1] 0 levels
execute if score @s cd_identifier = @a[tag = cd_target, limit = 1] cd_identifier run execute as @a[tag = cd_target, limit = 1] if score #cd_experience_levels cd_variable matches 1.. run function creative_dimension:change_dimension/restore/experience_levels

execute if score @s cd_identifier = @a[tag = cd_target, limit = 1] cd_identifier run xp set @a[tag = cd_target, limit = 1] 0 points
execute if score @s cd_identifier = @a[tag = cd_target, limit = 1] cd_identifier run execute as @a[tag = cd_target, limit = 1] if score #cd_experience_points cd_variable matches 1.. run function creative_dimension:change_dimension/restore/experience_points


# Restore position

execute if score @s cd_identifier = @a[tag = cd_target, limit = 1] cd_identifier run data modify entity @s Pos[0] set from entity @s data.Pos[0]
execute if score @s cd_identifier = @a[tag = cd_target, limit = 1] cd_identifier run data modify entity @s Pos[1] set from entity @s data.Pos[1]
execute if score @s cd_identifier = @a[tag = cd_target, limit = 1] cd_identifier run data modify entity @s Pos[2] set from entity @s data.Pos[2]

execute if score @s cd_identifier = @a[tag = cd_target, limit = 1] cd_identifier run teleport @a[tag = cd_target, limit = 1] @s


# End of restore

execute if score @s cd_identifier = @a[tag = cd_target, limit = 1] cd_identifier run kill @s