# Load one chunk for each dimension

execute in minecraft:overworld run forceload add 0 0
execute in minecraft:the_nether run forceload add 0 0
execute in minecraft:the_end run forceload add 0 0
execute in creative_dimension:creative run forceload add 0 0


# Summon an unique armor stand

execute unless entity @e[type = minecraft:armor_stand, tag = cd_restore] run execute in creative_dimension:creative run summon minecraft:armor_stand 0 0 0 {Tags : ["cd_restore"], NoGravity : 1, Invulnerable : 1, Invisible : 1}

data modify entity @e[type = minecraft:armor_stand, tag = cd_restore, limit = 1] data.DefaultCreativePosition[0] set value 0d
data modify entity @e[type = minecraft:armor_stand, tag = cd_restore, limit = 1] data.DefaultCreativePosition[1] set value 0d
data modify entity @e[type = minecraft:armor_stand, tag = cd_restore, limit = 1] data.DefaultCreativePosition[2] set value 0d


# Creating scoreboard variables

scoreboard objectives add cd trigger
scoreboard objectives add cd_objective dummy


# Set all variables

scoreboard players add #cd_identifier_index cd_objective 0
execute if score #cd_identifier_index cd_objective matches 0 run scoreboard players set #cd_identifier_index cd_objective 1

scoreboard players add #cd_mutual_exclusion cd_objective 0

scoreboard players add #cd_resynchronize cd_objective 0
scoreboard players add #cd_default_overworld_position cd_objective 0
