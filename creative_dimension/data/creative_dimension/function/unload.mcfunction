# Unload chunk

execute in creative_dimension:creative run forceload remove 0 0


# Remove scoreboards

scoreboard objectives remove cd
scoreboard objectives remove creative_dimension.identifier
scoreboard objectives remove creative_dimension.dimension
scoreboard objectives remove creative_dimension.value


# Remove storages

data remove storage creative_dimension:storage default_locations
data remove storage creative_dimension:storage macros
data remove storage creative_dimension:storage states


# Stop loop

schedule clear creative_dimension:load/loop


# Disable datapack

datapack disable "file/creative_dimension"
datapack disable "file/creative_dimension.zip"