# Restore item

data modify entity @e[type = minecraft:armor_stand, tag = creative_dimension.restore, limit = 1] equipment.mainhand set from storage creative_dimension:storage states.restore.inventory[0]

execute store result score #slot creative_dimension.value run data get storage creative_dimension:storage states.restore.inventory[0].Slot
data modify storage creative_dimension:storage macros.section set value "hotbar"
execute if score #slot creative_dimension.value matches 9.. run data modify storage creative_dimension:storage macros.section set value "inventory"
execute if score #slot creative_dimension.value matches 9.. run scoreboard players remove #slot creative_dimension.value 9

execute store result storage creative_dimension:storage macros.slot int 1 run scoreboard players get #slot creative_dimension.value
function creative_dimension:change_dimension/restore/item with storage creative_dimension:storage macros


# Prepare for next item

data remove storage creative_dimension:storage states.restore.inventory[0]
scoreboard players remove #items creative_dimension.value 1
execute if score #items creative_dimension.value matches 1.. run return run function creative_dimension:change_dimension/restore/inventory
data remove storage creative_dimension:storage macros