# Print the message

execute unless entity @s[nbt = {Dimension : "minecraft:overworld"}] run tellraw @s {"text" : "", "extra" : [{"text" : "[teleport:set_overworld_point] ", "color" : "#AA0000"}, {"text" : "setting of overworld point failed. "}, {"text" : "You are not in minecraft:overworld.", "color" : "#AA0000"}]}
execute if entity @s[nbt = {Dimension : "minecraft:overworld"}] run tellraw @s {"text" : "", "extra" : [{"text" : "[teleport:set_overworld_point] ", "color" : "#00AA00"}, {"text" : "setting of overworld point succeeded."}]}


# Remove the last overworld point

execute if entity @s[nbt = {Dimension : "minecraft:overworld"}] in minecraft:overworld run kill @e[type = minecraft:armor_stand, tag = overworld_point]
execute if entity @s[nbt = {Dimension : "minecraft:overworld"}] in minecraft:overworld run forceload remove all


# Set the new overworld point

execute if entity @s[nbt = {Dimension : "minecraft:overworld"}] in minecraft:overworld run summon minecraft:armor_stand ~ ~ ~ {Tags : ["overworld_point"], NoGravity : 1, Invulnerable : 1, Invisible : 1}
execute if entity @s[nbt = {Dimension : "minecraft:overworld"}] in minecraft:overworld run forceload add ~ ~