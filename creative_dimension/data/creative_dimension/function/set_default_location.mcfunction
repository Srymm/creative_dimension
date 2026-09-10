# Choose default location to update

execute if dimension creative_dimension:creative run data modify storage creative_dimension:storage macros.location set value "creative"
execute unless dimension creative_dimension:creative run data modify storage creative_dimension:storage macros.location set value "world"
execute unless dimension creative_dimension:creative run scoreboard players set #default_world_location creative_dimension.value 1


# Update default location

data modify storage creative_dimension:storage macros.dimension set from entity @s Dimension
data modify storage creative_dimension:storage macros.x set from entity @s Pos[0]
data modify storage creative_dimension:storage macros.y set from entity @s Pos[1]
data modify storage creative_dimension:storage macros.z set from entity @s Pos[2]

function creative_dimension:set_default_location/set with storage creative_dimension:storage macros

data remove storage creative_dimension:storage macros