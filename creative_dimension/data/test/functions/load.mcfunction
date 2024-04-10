scoreboard objectives add id dummy
scoreboard objectives add 1 dummy
scoreboard players set $id 1 1
scoreboard players add $id id 0
execute if score $id id < $id 1 run scoreboard players operation $id id = $id 1

scoreboard players add @a id 0
execute as @a[scores = {id = 0}] run function test:initialize_id