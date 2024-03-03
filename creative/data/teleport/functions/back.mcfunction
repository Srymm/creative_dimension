
execute in minecraft:overworld run summon minecraft:armor_stand ~ ~ ~ {NoGravity : 1, Invisible : 1, Invulnerable : 1, Tags : ["destination"]}

execute store result entity @e[tag = destination, limit = 1] Pos[0] double 1 run scoreboard players get @p x
execute store result entity @e[tag = destination, limit = 1] Pos[1] double 1 run scoreboard players get @p y
execute store result entity @e[tag = destination, limit = 1] Pos[2] double 1 run scoreboard players get @p z


execute in minecraft:overworld run teleport @p @e[tag = destination, limit = 1]
kill @e[tag = destination]

forceload remove ~ ~
forceload remove ~ 0
forceload remove 0 ~


gamemode survival @p