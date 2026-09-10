data modify entity @e[type = minecraft:armor_stand, tag = creative_dimension.restore, limit = 1] equipment.head set from storage creative_dimension:storage states.restore.equipment.head
data modify entity @e[type = minecraft:armor_stand, tag = creative_dimension.restore, limit = 1] equipment.chest set from storage creative_dimension:storage states.restore.equipment.chest
data modify entity @e[type = minecraft:armor_stand, tag = creative_dimension.restore, limit = 1] equipment.legs set from storage creative_dimension:storage states.restore.equipment.legs
data modify entity @e[type = minecraft:armor_stand, tag = creative_dimension.restore, limit = 1] equipment.feet set from storage creative_dimension:storage states.restore.equipment.feet
data modify entity @e[type = minecraft:armor_stand, tag = creative_dimension.restore, limit = 1] equipment.offhand set from storage creative_dimension:storage states.restore.equipment.offhand

item replace entity @s armor.head from entity @e[type = minecraft:armor_stand, tag = creative_dimension.restore, limit = 1] armor.head
item replace entity @s armor.chest from entity @e[type = minecraft:armor_stand, tag = creative_dimension.restore, limit = 1] armor.chest
item replace entity @s armor.legs from entity @e[type = minecraft:armor_stand, tag = creative_dimension.restore, limit = 1] armor.legs
item replace entity @s armor.feet from entity @e[type = minecraft:armor_stand, tag = creative_dimension.restore, limit = 1] armor.feet
item replace entity @s weapon.offhand from entity @e[type = minecraft:armor_stand, tag = creative_dimension.restore, limit = 1] weapon.offhand