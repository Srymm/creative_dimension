# Check if there is no other player who are currently switching dimension

execute if score #cd_mutual_exclusion cd_objective matches 0 run function creative_dimension:change_dimension/main


# Printing error message

execute if score #cd_mutual_exclusion cd_objective matches 1 run tellraw @s ["",{text:"[Creative Dimension] ",color:"gray",click_event:{action:"open_url",url:"https://github.com/Srymm/creative_dimension/tree/master"},hover_event:{action:"show_text",value:[{text:"Open GitHub",italic:true}]}},{text:"Failed to change dimension",color:"red"},{text:"\n"},{text:"Please try again",color:"gray"}]