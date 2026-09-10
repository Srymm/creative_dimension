# Restore item

data modify entity @e[type = minecraft:armor_stand, tag = creative_dimension.restore, limit = 1] equipment.mainhand set from storage creative_dimension:storage states.restore.enderchest[0]

data modify storage creative_dimension:storage macros.slot set from storage creative_dimension:storage states.restore.enderchest[0].Slot
function creative_dimension:change_dimension/restore/item with storage creative_dimension:storage macros


# Prepare for next item

data remove storage creative_dimension:storage states.restore.enderchest[0]
scoreboard players remove #items creative_dimension.value 1
execute if score #items creative_dimension.value matches 1.. run return run function creative_dimension:change_dimension/restore/enderchest
data remove storage creative_dimension:storage macros