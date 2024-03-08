# Print the message

execute unless entity @s[nbt = {Dimension : "dimension:creative"}] run tellraw @s {"text" : "", "extra" : [{"text" : "[teleport:set_creative_point] ", "color" : "#AA0000"}, {"text" : "setting of creative point failed. "}, {"text" : "You are not in dimension:creative.", "color" : "#AA0000"}]}
execute if entity @s[nbt = {Dimension : "dimension:creative"}] run tellraw @s {"text" : "", "extra" : [{"text" : "[teleport:set_creative_point] ", "color" : "#00AA00"}, {"text" : "setting of creative point succeeded."}]}


# Remove the last creative point

execute if entity @s[nbt = {Dimension : "dimension:creative"}] in dimension:creative run kill @e[type = minecraft:armor_stand, tag = creative_point]
execute if entity @s[nbt = {Dimension : "dimension:creative"}] in dimension:creative run forceload remove all


# Set the new creative point

execute if entity @s[nbt = {Dimension : "dimension:creative"}] in dimension:creative run summon minecraft:armor_stand ~ ~ ~ {Tags : ["creative_point"], NoGravity : 1, Invulnerable : 1, Invisible : 1}
execute if entity @s[nbt = {Dimension : "dimension:creative"}] in dimension:creative run forceload add ~ ~