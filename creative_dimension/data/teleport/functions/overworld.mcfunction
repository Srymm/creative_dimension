# Print the message

execute if entity @p[nbt = {Dimension : "minecraft:overworld"}] run tellraw @p {"text" : "", "extra" : [{"text" : "[teleport:overworld] ", "color" : "#AA0000"}, {"text" : "teleportation to minecraft:overworld failed. "}, {"text" : "You are already in this dimension.", "color" : "#AA0000"}]}
execute if entity @p[nbt = {Dimension : "minecraft:the_nether"}] run tellraw @p {"text" : "", "extra" : [{"text" : "[teleport:overworld] ", "color" : "#AA0000"}, {"text" : "teleportation to minecraft:overworld failed. "}, {"text" : "You can't teleport from this dimension.", "color" : "#AA0000"}]}
execute if entity @p[nbt = {Dimension : "minecraft:the_end"}] run tellraw @p {"text" : "", "extra" : [{"text" : "[teleport:overworld] ", "color" : "#AA0000"}, {"text" : "teleportation to minecraft:overworld failed. "}, {"text" : "You can't teleport from this dimension.", "color" : "#AA0000"}]}
execute if entity @p[nbt = {Dimension : "dimension:creative"}] run tellraw @p {"text" : "", "extra" : [{"text" : "[teleport:overworld] ", "color" : "#00AA00"}, {"text" : "teleportation to minecraft:overworld succeeded."}]}


# Set the gamemode of the player to survival

execute if entity @p[nbt = {Dimension : "dimension:creative"}] run gamemode survival @p


# Teleport the player to the overworld dimension on the overworld point

execute if entity @p[nbt = {Dimension : "dimension:creative"}] in minecraft:overworld run teleport @p @e[type = minecraft:armor_stand, tag = overworld_point, limit = 1]