execute if score @s creative_dimension.identifier matches 0.. run return fail


# Initialize default world location 

execute unless score #default_world_location creative_dimension.value matches 0.. run execute unless dimension creative_dimension:creative run function creative_dimension:set_default_location


# Create an unique identifier

scoreboard players operation @s creative_dimension.identifier = #identifier_index creative_dimension.value
scoreboard players add #identifier_index creative_dimension.value 1


# Create default state

execute store result storage creative_dimension:storage macros.identifier int 1 run scoreboard players get @s creative_dimension.identifier
function creative_dimension:initialize_player/state with storage creative_dimension:storage macros
data remove storage creative_dimension:storage macros


# Initialize dimension tracking

scoreboard players set @s creative_dimension.dimension 0


# Prepare for first dimension change

scoreboard players set @s cd 0
scoreboard players enable @s cd