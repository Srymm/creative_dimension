# Kill all entity

kill @e[type = minecraft:marker, tag = cd_store]
kill @e[type = minecraft:marker, tag = cd_restore]
kill @e[type = minecraft:armor_stand, tag = cd_restore_inventory]


# Remove all scoreboard variables

scoreboard objectives remove cd

scoreboard objectives remove cd_identifier
scoreboard objectives remove cd_variable


# Unload one chunk for each dimension

execute in minecraft:overworld run forceload remove 0 0
execute in minecraft:the_nether run forceload remove 0 0
execute in minecraft:the_end run forceload remove 0 0
execute in creative_dimension:creative run forceload remove 0 0