# Store current state

execute store result storage creative_dimension:storage macros.identifier int 1 run scoreboard players get @s creative_dimension.identifier
function creative_dimension:change_dimension/store with storage creative_dimension:storage macros
data remove storage creative_dimension:storage macros


# Restore last state

function creative_dimension:change_dimension/restore


# Track dimension

scoreboard players add @s creative_dimension.dimension 1
scoreboard players operation @s creative_dimension.dimension %= #2 creative_dimension.value


# Prepare for next dimension change

scoreboard players set @s cd 0
scoreboard players enable @s cd