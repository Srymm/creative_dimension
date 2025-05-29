# Initialize player who are not already

scoreboard players add @a cd_objective 0
execute as @a[scores = {cd_objective = 0}] run execute as @s at @s run execute if score #cd_mutual_exclusion cd_objective matches 0 run function creative_dimension:change_dimension/initialize


# Trigger cd detection 

scoreboard players enable @a cd
execute as @a[scores = {cd = 1}] run execute as @s at @s run function cd:change_dimension
scoreboard players set @a cd 0


# Resynchronization system

execute as @a[tag = cd_default_dimension] run execute as @s at @s if dimension creative_dimension:creative run execute if score #cd_mutual_exclusion cd_objective matches 0 run function creative_dimension:change_dimension/resynchronize
execute as @a[tag = cd_creative_dimension] run execute as @s at @s unless dimension creative_dimension:creative run execute if score #cd_mutual_exclusion cd_objective matches 0 run function creative_dimension:change_dimension/resynchronize