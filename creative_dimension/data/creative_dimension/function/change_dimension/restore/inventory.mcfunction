execute store result score #cd_slot cd_objective run data get entity @s data.Inventory[0].Slot
data modify entity @e[type = minecraft:armor_stand, tag = cd_restore, limit = 1] equipment.mainhand set from entity @s data.Inventory[0]


# Restore the item in the good slot

execute if score #cd_slot cd_objective matches 0 run item replace entity @a[tag = cd_target, limit = 1] hotbar.0 from entity @e[type = minecraft:armor_stand, tag = cd_restore, limit = 1] weapon.mainhand
execute if score #cd_slot cd_objective matches 1 run item replace entity @a[tag = cd_target, limit = 1] hotbar.1 from entity @e[type = minecraft:armor_stand, tag = cd_restore, limit = 1] weapon.mainhand
execute if score #cd_slot cd_objective matches 2 run item replace entity @a[tag = cd_target, limit = 1] hotbar.2 from entity @e[type = minecraft:armor_stand, tag = cd_restore, limit = 1] weapon.mainhand
execute if score #cd_slot cd_objective matches 3 run item replace entity @a[tag = cd_target, limit = 1] hotbar.3 from entity @e[type = minecraft:armor_stand, tag = cd_restore, limit = 1] weapon.mainhand
execute if score #cd_slot cd_objective matches 4 run item replace entity @a[tag = cd_target, limit = 1] hotbar.4 from entity @e[type = minecraft:armor_stand, tag = cd_restore, limit = 1] weapon.mainhand
execute if score #cd_slot cd_objective matches 5 run item replace entity @a[tag = cd_target, limit = 1] hotbar.5 from entity @e[type = minecraft:armor_stand, tag = cd_restore, limit = 1] weapon.mainhand
execute if score #cd_slot cd_objective matches 6 run item replace entity @a[tag = cd_target, limit = 1] hotbar.6 from entity @e[type = minecraft:armor_stand, tag = cd_restore, limit = 1] weapon.mainhand
execute if score #cd_slot cd_objective matches 7 run item replace entity @a[tag = cd_target, limit = 1] hotbar.7 from entity @e[type = minecraft:armor_stand, tag = cd_restore, limit = 1] weapon.mainhand
execute if score #cd_slot cd_objective matches 8 run item replace entity @a[tag = cd_target, limit = 1] hotbar.8 from entity @e[type = minecraft:armor_stand, tag = cd_restore, limit = 1] weapon.mainhand

execute if score #cd_slot cd_objective matches 9 run item replace entity @a[tag = cd_target, limit = 1] inventory.0 from entity @e[type = minecraft:armor_stand, tag = cd_restore, limit = 1] weapon.mainhand
execute if score #cd_slot cd_objective matches 10 run item replace entity @a[tag = cd_target, limit = 1] inventory.1 from entity @e[type = minecraft:armor_stand, tag = cd_restore, limit = 1] weapon.mainhand
execute if score #cd_slot cd_objective matches 11 run item replace entity @a[tag = cd_target, limit = 1] inventory.2 from entity @e[type = minecraft:armor_stand, tag = cd_restore, limit = 1] weapon.mainhand
execute if score #cd_slot cd_objective matches 12 run item replace entity @a[tag = cd_target, limit = 1] inventory.3 from entity @e[type = minecraft:armor_stand, tag = cd_restore, limit = 1] weapon.mainhand
execute if score #cd_slot cd_objective matches 13 run item replace entity @a[tag = cd_target, limit = 1] inventory.4 from entity @e[type = minecraft:armor_stand, tag = cd_restore, limit = 1] weapon.mainhand
execute if score #cd_slot cd_objective matches 14 run item replace entity @a[tag = cd_target, limit = 1] inventory.5 from entity @e[type = minecraft:armor_stand, tag = cd_restore, limit = 1] weapon.mainhand
execute if score #cd_slot cd_objective matches 15 run item replace entity @a[tag = cd_target, limit = 1] inventory.6 from entity @e[type = minecraft:armor_stand, tag = cd_restore, limit = 1] weapon.mainhand
execute if score #cd_slot cd_objective matches 16 run item replace entity @a[tag = cd_target, limit = 1] inventory.7 from entity @e[type = minecraft:armor_stand, tag = cd_restore, limit = 1] weapon.mainhand
execute if score #cd_slot cd_objective matches 17 run item replace entity @a[tag = cd_target, limit = 1] inventory.8 from entity @e[type = minecraft:armor_stand, tag = cd_restore, limit = 1] weapon.mainhand
execute if score #cd_slot cd_objective matches 18 run item replace entity @a[tag = cd_target, limit = 1] inventory.9 from entity @e[type = minecraft:armor_stand, tag = cd_restore, limit = 1] weapon.mainhand
execute if score #cd_slot cd_objective matches 19 run item replace entity @a[tag = cd_target, limit = 1] inventory.10 from entity @e[type = minecraft:armor_stand, tag = cd_restore, limit = 1] weapon.mainhand
execute if score #cd_slot cd_objective matches 20 run item replace entity @a[tag = cd_target, limit = 1] inventory.11 from entity @e[type = minecraft:armor_stand, tag = cd_restore, limit = 1] weapon.mainhand
execute if score #cd_slot cd_objective matches 21 run item replace entity @a[tag = cd_target, limit = 1] inventory.12 from entity @e[type = minecraft:armor_stand, tag = cd_restore, limit = 1] weapon.mainhand
execute if score #cd_slot cd_objective matches 22 run item replace entity @a[tag = cd_target, limit = 1] inventory.13 from entity @e[type = minecraft:armor_stand, tag = cd_restore, limit = 1] weapon.mainhand
execute if score #cd_slot cd_objective matches 23 run item replace entity @a[tag = cd_target, limit = 1] inventory.14 from entity @e[type = minecraft:armor_stand, tag = cd_restore, limit = 1] weapon.mainhand
execute if score #cd_slot cd_objective matches 24 run item replace entity @a[tag = cd_target, limit = 1] inventory.15 from entity @e[type = minecraft:armor_stand, tag = cd_restore, limit = 1] weapon.mainhand
execute if score #cd_slot cd_objective matches 25 run item replace entity @a[tag = cd_target, limit = 1] inventory.16 from entity @e[type = minecraft:armor_stand, tag = cd_restore, limit = 1] weapon.mainhand
execute if score #cd_slot cd_objective matches 26 run item replace entity @a[tag = cd_target, limit = 1] inventory.17 from entity @e[type = minecraft:armor_stand, tag = cd_restore, limit = 1] weapon.mainhand
execute if score #cd_slot cd_objective matches 27 run item replace entity @a[tag = cd_target, limit = 1] inventory.18 from entity @e[type = minecraft:armor_stand, tag = cd_restore, limit = 1] weapon.mainhand
execute if score #cd_slot cd_objective matches 28 run item replace entity @a[tag = cd_target, limit = 1] inventory.19 from entity @e[type = minecraft:armor_stand, tag = cd_restore, limit = 1] weapon.mainhand
execute if score #cd_slot cd_objective matches 29 run item replace entity @a[tag = cd_target, limit = 1] inventory.20 from entity @e[type = minecraft:armor_stand, tag = cd_restore, limit = 1] weapon.mainhand
execute if score #cd_slot cd_objective matches 30 run item replace entity @a[tag = cd_target, limit = 1] inventory.21 from entity @e[type = minecraft:armor_stand, tag = cd_restore, limit = 1] weapon.mainhand
execute if score #cd_slot cd_objective matches 31 run item replace entity @a[tag = cd_target, limit = 1] inventory.22 from entity @e[type = minecraft:armor_stand, tag = cd_restore, limit = 1] weapon.mainhand
execute if score #cd_slot cd_objective matches 32 run item replace entity @a[tag = cd_target, limit = 1] inventory.23 from entity @e[type = minecraft:armor_stand, tag = cd_restore, limit = 1] weapon.mainhand
execute if score #cd_slot cd_objective matches 33 run item replace entity @a[tag = cd_target, limit = 1] inventory.24 from entity @e[type = minecraft:armor_stand, tag = cd_restore, limit = 1] weapon.mainhand
execute if score #cd_slot cd_objective matches 34 run item replace entity @a[tag = cd_target, limit = 1] inventory.25 from entity @e[type = minecraft:armor_stand, tag = cd_restore, limit = 1] weapon.mainhand
execute if score #cd_slot cd_objective matches 35 run item replace entity @a[tag = cd_target, limit = 1] inventory.26 from entity @e[type = minecraft:armor_stand, tag = cd_restore, limit = 1] weapon.mainhand


# Prepare for next item to restore

data remove entity @s data.Inventory[0]
scoreboard players remove #cd_items cd_objective 1
execute if score #cd_items cd_objective matches 1.. run function creative_dimension:change_dimension/restore/inventory