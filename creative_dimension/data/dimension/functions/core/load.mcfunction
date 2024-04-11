execute in minecraft:overworld run forceload add 0 0
execute in minecraft:the_nether run forceload add 0 0
execute in minecraft:the_end run forceload add 0 0
execute in dimension:creative run forceload add 0 0

scoreboard objectives add id dummy
scoreboard objectives add 1 dummy
scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy


scoreboard players set #id 1 1
scoreboard players add #id id 0
execute if score #id id < #id 1 run scoreboard players operation #id id = #id 1

scoreboard players add @a id 0
execute as @a[scores = {id = 0}] run function dimension:core/initialize_player