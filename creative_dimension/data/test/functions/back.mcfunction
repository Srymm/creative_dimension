# Print the message

execute if entity @s[nbt = {Dimension : "minecraft:overworld"}] run tellraw @s {"text" : "", "extra" : [{"text" : "[teleport:overworld] ", "color" : "#AA0000"}, {"text" : "teleportation to minecraft:overworld failed. "}, {"text" : "You are already in this dimension.", "color" : "#AA0000"}]}
execute if entity @s[nbt = {Dimension : "dimension:creative"}] run tellraw @s {"text" : "", "extra" : [{"text" : "[teleport:overworld] ", "color" : "#00AA00"}, {"text" : "teleportation to minecraft:overworld succeeded."}]}


# Teleport the player to the dimension

execute if entity @s[nbt = {Dimension : "dimension:creative"}] run tag @s add target
execute as @e[type = minecraft:marker] if score @e[tag = target, nbt = {Dimension : "dimension:creative"}, limit = 1] id = @s id run teleport @e[tag = target, nbt = {Dimension : "dimension:creative"}, limit = 1] @s
execute as @e[type = minecraft:marker] if score @e[tag = target, limit = 1] id = @s id run kill @s
execute as @s run forceload remove ~ ~
tag @s remove target