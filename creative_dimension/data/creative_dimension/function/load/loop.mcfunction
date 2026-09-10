# Trigger cd detection 

execute as @a[scores = {cd = 1}] at @s run function creative_dimension:change_dimension


# Resynchronization system

execute as @a[scores = { creative_dimension.dimension = 0 }] at @s if dimension creative_dimension:creative run function creative_dimension:change_dimension/resynchronize
execute as @a[scores = { creative_dimension.dimension = 1 }] at @s unless dimension creative_dimension:creative run function creative_dimension:change_dimension/resynchronize


# Loop

schedule function creative_dimension:load/loop 5t replace