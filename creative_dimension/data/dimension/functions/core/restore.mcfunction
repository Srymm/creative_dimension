# Restore position

execute if score @s id = @a[tag = target, limit = 1] id run execute store result entity @s Pos[0] double 1 run scoreboard players get @s x
execute if score @s id = @a[tag = target, limit = 1] id run execute store result entity @s Pos[1] double 1 run scoreboard players get @s y
execute if score @s id = @a[tag = target, limit = 1] id run execute store result entity @s Pos[2] double 1 run scoreboard players get @s z
execute if score @s id = @a[tag = target, limit = 1] id run teleport @a[tag = target, limit = 1] @s


# End of restore

execute if score @s id = @a[tag = target, limit = 1] id run kill @s