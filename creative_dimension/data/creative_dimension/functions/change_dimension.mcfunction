# Check if there is no other player who are currently switching dimension

execute if score #cd_mutual_exclusion cd_variable matches 0 run function creative_dimension:switch


# Printing error message

execute if score #cd_mutual_exclusion cd_variable matches 1 run tellraw @s {"text" : "", "extra" : [{"text" : "[Creative Dimension] ", "color" : "#AA0000"}, {"text" : "Impossible to change dimension. Please wait a few seconds and try the command again."}]}