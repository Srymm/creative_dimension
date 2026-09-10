# Restore inventory and equipment

execute in creative_dimension:creative run summon minecraft:armor_stand 0 0 0 { Tags : ["creative_dimension.restore"], NoGravity : 1, Invulnerable : 1, Invisible : 1 }

clear @s

execute store result score #items creative_dimension.value run data get storage creative_dimension:storage states.restore.inventory
execute if score #items creative_dimension.value matches 1.. run function creative_dimension:change_dimension/restore/inventory

execute if data storage creative_dimension:storage states.restore.equipment run function creative_dimension:change_dimension/restore/equipment


# Restore enderchest

function creative_dimension:change_dimension/restore/enderchest/clear

execute store result score #items creative_dimension.value run data get storage creative_dimension:storage states.restore.enderchest
execute if score #items creative_dimension.value matches 1.. run data modify storage creative_dimension:storage macros.section set value "enderchest"
execute if score #items creative_dimension.value matches 1.. run function creative_dimension:change_dimension/restore/enderchest

kill @e[type = minecraft:armor_stand, tag = creative_dimension.restore]


# Restore gamemode

execute store result score #gamemode creative_dimension.value run data get storage creative_dimension:storage states.restore.gamemode

execute if score #gamemode creative_dimension.value matches 0 run gamemode survival @s
execute if score #gamemode creative_dimension.value matches 1 run gamemode creative @s
execute if score #gamemode creative_dimension.value matches 2 run gamemode adventure @s
execute if score #gamemode creative_dimension.value matches 3 run gamemode spectator @s


# Restore experience

function creative_dimension:change_dimension/restore/experience with storage creative_dimension:storage states.restore.experience


# Restore location

execute if score #resynchronize creative_dimension.value matches 0.. run return run data remove storage creative_dimension:storage states.restore

execute if data storage creative_dimension:storage states.restore.location.default_world_location run data modify storage creative_dimension:storage states.restore.location set from storage creative_dimension:storage default_locations.world
execute if data storage creative_dimension:storage states.restore.location.default_creative_location run data modify storage creative_dimension:storage states.restore.location set from storage creative_dimension:storage default_locations.creative

function creative_dimension:change_dimension/restore/location with storage creative_dimension:storage states.restore.location

data remove storage creative_dimension:storage states.restore