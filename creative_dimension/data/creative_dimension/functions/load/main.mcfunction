# Load one chunk for each dimension

execute in minecraft:overworld run forceload add 0 0
execute in minecraft:the_nether run forceload add 0 0
execute in minecraft:the_end run forceload add 0 0
execute in creative_dimension:creative run forceload add 0 0


# Summon an unique armor stand

execute in creative_dimension:creative run kill @e[type = minecraft:armor_stand, tag = cd_restore_inventory]
execute in creative_dimension:creative run summon minecraft:armor_stand 0 0 0 {Tags : ["cd_restore_inventory"], NoGravity : 1, Invulnerable : 1, Invisible : 1}


# Creating scoreboard variables

scoreboard objectives add cd trigger

scoreboard objectives add cd_identifier dummy
scoreboard objectives add cd_variable dummy


# Player identification system

scoreboard players set #cd_constant cd_variable 1
scoreboard players add #cd_identifier_index cd_identifier 0
execute if score #cd_identifier_index cd_identifier < #cd_constant cd_variable run scoreboard players set #cd_identifier_index cd_identifier 1


# mutual exclusion system

scoreboard players add #cd_mutual_exclusion cd_variable 0