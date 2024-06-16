# Check if there is no other player who are currently switching dimension

execute if score #cd_mutual_exclusion cd_objective matches 0 run function creative_dimension:change_dimension/main


# Printing error message

execute if score #cd_mutual_exclusion cd_objective matches 1 run tellraw @s ["[Creative Dimension] ", {"text" : "Failed to change dimension. ", "color" : "dark_red"}, {"text" : "Do you want to try again ? "}, {"text" : "(\u2714)", "color" : "dark_green", "clickEvent": {"action": "run_command", "value" : "/trigger cd"}, "hoverEvent" : {"action" : "show_text", "contents" : "Click here to confirm"}}]