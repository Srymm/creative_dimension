# Set default creative position

execute if dimension creative_dimension:creative run data modify entity @e[type = minecraft:armor_stand, tag = cd_restore, limit = 1] data.DefaultCreativePosition set from entity @s Pos
execute if dimension creative_dimension:creative run tellraw @s ["",{text:"[Creative Dimension] ",color:"gray",click_event:{action:"open_url",url:"https://github.com/Srymm/creative_dimension/tree/master"},hover_event:{action:"show_text",value:[{text:"Open GitHub",italic:true}]}},{text:"Default creative position ",color:"gold"},{text:"has been set successfully",color:"green"}]


# Set default overworld position

execute if dimension minecraft:overworld run data modify entity @e[type = minecraft:armor_stand, tag = cd_restore, limit = 1] data.DefaultOverworldPosition set from entity @s Pos
execute if dimension minecraft:overworld run tellraw @s ["",{text:"[Creative Dimension] ",color:"gray",click_event:{action:"open_url",url:"https://github.com/Srymm/creative_dimension/tree/master"},hover_event:{action:"show_text",value:[{text:"Open GitHub",italic:true}]}},{text:"Default overworld position ",color:"gold"},{text:"has been set successfully",color:"green"}]


# Print error

execute unless dimension creative_dimension:creative run execute unless dimension minecraft:overworld run tellraw @s ["",{text:"[Creative Dimension] ",color:"gray",click_event:{action:"open_url",url:"https://github.com/Srymm/creative_dimension/tree/master"},hover_event:{action:"show_text",value:[{text:"Open GitHub",italic:true}]}},{text:"Failed to set ",color:"red"},{text:"default position",color:"gold"},{text:"\n"},{text:"This action is only allowed in Creative or Overworld dimensions",color:"gray"}]