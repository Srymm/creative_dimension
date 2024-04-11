# Restore position

execute if score @s dimension_identifier = @a[tag = dimension_target, limit = 1] dimension_identifier run execute store result entity @s Pos[0] double 1 run scoreboard players get @s dimension_x
execute if score @s dimension_identifier = @a[tag = dimension_target, limit = 1] dimension_identifier run execute store result entity @s Pos[1] double 1 run scoreboard players get @s dimension_y
execute if score @s dimension_identifier = @a[tag = dimension_target, limit = 1] dimension_identifier run execute store result entity @s Pos[2] double 1 run scoreboard players get @s dimension_z
execute if score @s dimension_identifier = @a[tag = dimension_target, limit = 1] dimension_identifier run teleport @a[tag = dimension_target, limit = 1] @s


# End of restore

execute if score @s dimension_identifier = @a[tag = dimension_target, limit = 1] dimension_identifier run kill @s