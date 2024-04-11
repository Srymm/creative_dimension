# Load one chunk for each dimension

execute in minecraft:overworld run forceload add 0 0
execute in minecraft:the_nether run forceload add 0 0
execute in minecraft:the_end run forceload add 0 0
execute in dimension:creative run forceload add 0 0


# Creating scoreboard variables

scoreboard objectives add dimension_identifier dummy
scoreboard objectives add dimension_1 dummy
scoreboard objectives add dimension_x dummy
scoreboard objectives add dimension_y dummy
scoreboard objectives add dimension_z dummy


# Identification player system

scoreboard players set dimension_player dimension_1 1
scoreboard players add dimension_player dimension_identifier 0
execute if score dimension_player dimension_identifier < dimension_player dimension_1 run scoreboard players set dimension_player dimension_identifier 1

scoreboard players add @a dimension_identifier 0
execute as @a[scores = {dimension_identifier = 0}] run function dimension:core/initialize_player