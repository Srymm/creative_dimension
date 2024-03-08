# Set the overworld point

# Remove the last overworld point

execute in minecraft:overworld run kill @e[type = minecraft:armor_stand, tag = overworld_point]
execute in minecraft:overworld run forceload remove all


# Set the new overworld point

execute in minecraft:overworld run summon minecraft:armor_stand ~ ~ ~ {Tags : ["overworld_point"], NoGravity : 1, Invulnerable : 1, Invisible : 1}
execute in minecraft:overworld run forceload add ~ ~


# Set the creative point

# Remove the last creative point

execute in dimension:creative run kill @e[type = minecraft:armor_stand, tag = creative_point]
execute in dimension:creative run forceload remove all


# Set the new creative point

execute in dimension:creative run summon minecraft:armor_stand ~ 0 ~ {Tags : ["creative_point"], NoGravity : 1, Invulnerable : 1, Invisible : 1}
execute in dimension:creative run forceload add ~ ~