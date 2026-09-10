# Load one chunk in creative dimension

execute in creative_dimension:creative run forceload add 0 0


# Creating scoreboard variables

scoreboard objectives add cd trigger
scoreboard objectives add creative_dimension.identifier dummy
scoreboard objectives add creative_dimension.dimension dummy
scoreboard objectives add creative_dimension.value dummy


# Set all variables

scoreboard players add #identifier_index creative_dimension.value 0
scoreboard players set #2 creative_dimension.value 2


# Set default locations

execute unless data storage creative_dimension:storage default_locations.creative run function creative_dimension:set_default_location/set { location: 'creative', dimension: 'creative_dimension:creative', x: 0, y: 0, z: 0 }
execute unless data storage creative_dimension:storage default_locations.world run function creative_dimension:set_default_location/set { location: 'world', dimension: 'minecraft:overworld', x: 0, y: 0, z: 0 }


# Run loop

schedule function creative_dimension:load/loop 5t replace