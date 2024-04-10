# Print the message

execute if entity @s[nbt = {Dimension : "dimension:creative"}] run tellraw @s {"text" : "", "extra" : [{"text" : "[teleport:in] ", "color" : "#AA0000"}, {"text" : "teleportation to dimension:creative failed. "}, {"text" : "You are already in this dimension.", "color" : "#AA0000"}]}
execute unless entity @s[nbt = {Dimension : "dimension:creative"}] run tellraw @s {"text" : "", "extra" : [{"text" : "[teleport:in] ", "color" : "#00AA00"}, {"text" : "teleportation to dimension:creative succeeded."}]}


# Store player information

execute unless entity @s[nbt = {Dimension : "dimension:creative"}] run forceload add ~ ~
execute unless entity @s[nbt = {Dimension : "dimension:creative"}] run summon minecraft:marker ~ ~ ~ {Tags:["temporary"]}
execute unless entity @s[nbt = {Dimension : "dimension:creative"}] run scoreboard players operation @e[tag = temporary] id = @s id
execute unless entity @s[nbt = {Dimension : "dimension:creative"}] run tag @e[tag = temporary] remove temporary


# Teleport the player to the dimension

execute unless entity @s[nbt = {Dimension : "dimension:creative"}] in dimension:creative run teleport @s ~ 0 ~