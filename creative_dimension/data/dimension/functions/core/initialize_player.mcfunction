scoreboard players operation @s id = #id id
scoreboard players add #id id 1

execute in dimension:creative run summon minecraft:marker 0 0 0 {Tags:["dimension", "store"]}
execute in dimension:creative run scoreboard players operation @e[type = minecraft:marker, tag = dimension, tag = store] id = @s id
execute in dimension:creative run tag @e[type = minecraft:marker, tag = dimension, tag = store] add restore
execute in dimension:creative run tag @e[type = minecraft:marker, tag = dimension, tag = store] remove store