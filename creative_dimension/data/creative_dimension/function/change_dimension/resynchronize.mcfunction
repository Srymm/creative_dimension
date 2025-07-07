scoreboard players set #cd_mutual_exclusion cd_objective 1

## Begin of critical section


# Set resynchronize mode

execute if dimension creative_dimension:creative run scoreboard players set #cd_resynchronize cd_objective 1
execute unless dimension creative_dimension:creative run scoreboard players set #cd_resynchronize cd_objective 2


# Run change dimension to retrieve state

function creative_dimension:change_dimension/main


# Reset tags

tag @s remove cd_creative_dimension
tag @s remove cd_default_dimension

execute if dimension creative_dimension:creative run tag @s add cd_creative_dimension
execute unless dimension creative_dimension:creative run tag @s add cd_default_dimension


# Print message

execute if score #cd_resynchronize cd_objective matches 1 run tellraw @s ["",{text:"[Creative Dimension] ",color:"gray",click_event:{action:"open_url",url:"https://github.com/Srymm/creative_dimension/tree/master"},hover_event:{action:"show_text",value:[{text:"Open GitHub",italic:true}]}},{text:"Your state has been resynchronized",color:"green"},{text:"\n"},{text:"Your next dimension change will use the ",color:"gray"},{text:"default overworld position",color:"gold"}]
execute if score #cd_resynchronize cd_objective matches 2 run tellraw @s ["",{text:"[Creative Dimension] ",color:"gray",click_event:{action:"open_url",url:"https://github.com/Srymm/creative_dimension/tree/master"},hover_event:{action:"show_text",value:[{text:"Open GitHub",italic:true}]}},{text:"Your state has been resynchronized",color:"green"},{text:"\n"},{text:"Your next dimension change will use the ",color:"gray"},{text:"default creative position",color:"gold"}]


# Reset resynchronize mode

scoreboard players set #cd_resynchronize cd_objective 0


## End of critical section

scoreboard players set #cd_mutual_exclusion cd_objective 0