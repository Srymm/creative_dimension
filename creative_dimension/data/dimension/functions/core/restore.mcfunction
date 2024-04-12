# Restore gamemode

execute if score @s dimension_identifier = @a[tag = dimension_target, limit = 1] dimension_identifier run execute store result score @s dimension_variable run data get entity @s data.playerGameType

execute if score @s dimension_identifier = @a[tag = dimension_target, limit = 1] dimension_identifier run execute if score @s dimension_variable matches 0 run gamemode survival @a[tag = dimension_target, limit = 1]
execute if score @s dimension_identifier = @a[tag = dimension_target, limit = 1] dimension_identifier run execute if score @s dimension_variable matches 1 run gamemode creative @a[tag = dimension_target, limit = 1]
execute if score @s dimension_identifier = @a[tag = dimension_target, limit = 1] dimension_identifier run execute if score @s dimension_variable matches 2 run gamemode adventure @a[tag = dimension_target, limit = 1]
execute if score @s dimension_identifier = @a[tag = dimension_target, limit = 1] dimension_identifier run execute if score @s dimension_variable matches 3 run gamemode spectator @a[tag = dimension_target, limit = 1]


# Restore position

execute if score @s dimension_identifier = @a[tag = dimension_target, limit = 1] dimension_identifier run data modify entity @s Pos[0] set from entity @s data.Pos_0
execute if score @s dimension_identifier = @a[tag = dimension_target, limit = 1] dimension_identifier run data modify entity @s Pos[1] set from entity @s data.Pos_1
execute if score @s dimension_identifier = @a[tag = dimension_target, limit = 1] dimension_identifier run data modify entity @s Pos[2] set from entity @s data.Pos_2

execute if score @s dimension_identifier = @a[tag = dimension_target, limit = 1] dimension_identifier run teleport @a[tag = dimension_target, limit = 1] @s


# End of restore

execute if score @s dimension_identifier = @a[tag = dimension_target, limit = 1] dimension_identifier run kill @s