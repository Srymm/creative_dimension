# Print the message

execute if entity @p[nbt = {Dimension : "dimension:creative"}] run tellraw @p {"text" : "", "extra" : [{"text" : "[teleport:creative] ", "color" : "#AA0000"}, {"text" : "teleportation to dimension:creative failed. "}, {"text" : "You are already in this dimension.", "color" : "#AA0000"}]}
execute unless entity @p[nbt = {Dimension : "dimension:creative"}] run tellraw @p {"text" : "", "extra" : [{"text" : "[teleport:creative] ", "color" : "#00AA00"}, {"text" : "teleportation to dimension:creative succeeded."}]}


# Set the gamemode of the player to creative

execute unless entity @p[nbt = {Dimension : "dimension:creative"}] run gamemode creative @p


# dimension the player to the creative dimension on the creative point

execute unless entity @p[nbt = {Dimension : "dimension:creative"}] in dimension:creative run teleport @p @e[type = minecraft:armor_stand, tag = creative_point, limit = 1]