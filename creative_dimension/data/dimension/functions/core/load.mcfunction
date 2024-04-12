# Load one chunk for each dimension

execute in minecraft:overworld run forceload add 0 0
execute in minecraft:the_nether run forceload add 0 0
execute in minecraft:the_end run forceload add 0 0
execute in dimension:creative run forceload add 0 0


# Creating scoreboard variables

scoreboard objectives add dimension_identifier dummy
scoreboard objectives add dimension_variable dummy


# Player identification system

scoreboard players set dimension_player dimension_variable 1
scoreboard players add dimension_player dimension_identifier 0
execute if score dimension_player dimension_identifier < dimension_player dimension_variable run scoreboard players set dimension_player dimension_identifier 1

scoreboard players add @a dimension_identifier 0
execute as @a[scores = {dimension_identifier = 0}] run function dimension:core/initialize_player