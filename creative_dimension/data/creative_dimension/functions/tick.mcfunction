scoreboard players enable @a cd
execute as @a[scores = {cd = 1}] run execute as @s at @s run function cd:change_dimension
scoreboard players set @a cd 0