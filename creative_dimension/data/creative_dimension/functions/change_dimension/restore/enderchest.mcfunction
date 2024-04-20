execute store result score #cd_slot cd_variable run data get entity @s data.EnderItems[0].Slot
data modify entity @e[type = minecraft:armor_stand, tag = cd_restore_inventory, limit = 1] HandItems[0] set from entity @s data.EnderItems[0]


# Restore the item in the good slot

execute if score #cd_slot cd_variable matches 0 run item replace entity @a[tag = cd_target, limit = 1] enderchest.0 from entity @e[type = minecraft:armor_stand, tag = cd_restore_inventory, limit = 1] weapon.mainhand
execute if score #cd_slot cd_variable matches 1 run item replace entity @a[tag = cd_target, limit = 1] enderchest.1 from entity @e[type = minecraft:armor_stand, tag = cd_restore_inventory, limit = 1] weapon.mainhand
execute if score #cd_slot cd_variable matches 2 run item replace entity @a[tag = cd_target, limit = 1] enderchest.2 from entity @e[type = minecraft:armor_stand, tag = cd_restore_inventory, limit = 1] weapon.mainhand
execute if score #cd_slot cd_variable matches 3 run item replace entity @a[tag = cd_target, limit = 1] enderchest.3 from entity @e[type = minecraft:armor_stand, tag = cd_restore_inventory, limit = 1] weapon.mainhand
execute if score #cd_slot cd_variable matches 4 run item replace entity @a[tag = cd_target, limit = 1] enderchest.4 from entity @e[type = minecraft:armor_stand, tag = cd_restore_inventory, limit = 1] weapon.mainhand
execute if score #cd_slot cd_variable matches 5 run item replace entity @a[tag = cd_target, limit = 1] enderchest.5 from entity @e[type = minecraft:armor_stand, tag = cd_restore_inventory, limit = 1] weapon.mainhand
execute if score #cd_slot cd_variable matches 6 run item replace entity @a[tag = cd_target, limit = 1] enderchest.6 from entity @e[type = minecraft:armor_stand, tag = cd_restore_inventory, limit = 1] weapon.mainhand
execute if score #cd_slot cd_variable matches 7 run item replace entity @a[tag = cd_target, limit = 1] enderchest.7 from entity @e[type = minecraft:armor_stand, tag = cd_restore_inventory, limit = 1] weapon.mainhand
execute if score #cd_slot cd_variable matches 8 run item replace entity @a[tag = cd_target, limit = 1] enderchest.8 from entity @e[type = minecraft:armor_stand, tag = cd_restore_inventory, limit = 1] weapon.mainhand
execute if score #cd_slot cd_variable matches 9 run item replace entity @a[tag = cd_target, limit = 1] enderchest.9 from entity @e[type = minecraft:armor_stand, tag = cd_restore_inventory, limit = 1] weapon.mainhand
execute if score #cd_slot cd_variable matches 10 run item replace entity @a[tag = cd_target, limit = 1] enderchest.10 from entity @e[type = minecraft:armor_stand, tag = cd_restore_inventory, limit = 1] weapon.mainhand
execute if score #cd_slot cd_variable matches 11 run item replace entity @a[tag = cd_target, limit = 1] enderchest.11 from entity @e[type = minecraft:armor_stand, tag = cd_restore_inventory, limit = 1] weapon.mainhand
execute if score #cd_slot cd_variable matches 12 run item replace entity @a[tag = cd_target, limit = 1] enderchest.12 from entity @e[type = minecraft:armor_stand, tag = cd_restore_inventory, limit = 1] weapon.mainhand
execute if score #cd_slot cd_variable matches 13 run item replace entity @a[tag = cd_target, limit = 1] enderchest.13 from entity @e[type = minecraft:armor_stand, tag = cd_restore_inventory, limit = 1] weapon.mainhand
execute if score #cd_slot cd_variable matches 14 run item replace entity @a[tag = cd_target, limit = 1] enderchest.14 from entity @e[type = minecraft:armor_stand, tag = cd_restore_inventory, limit = 1] weapon.mainhand
execute if score #cd_slot cd_variable matches 15 run item replace entity @a[tag = cd_target, limit = 1] enderchest.15 from entity @e[type = minecraft:armor_stand, tag = cd_restore_inventory, limit = 1] weapon.mainhand
execute if score #cd_slot cd_variable matches 16 run item replace entity @a[tag = cd_target, limit = 1] enderchest.16 from entity @e[type = minecraft:armor_stand, tag = cd_restore_inventory, limit = 1] weapon.mainhand
execute if score #cd_slot cd_variable matches 17 run item replace entity @a[tag = cd_target, limit = 1] enderchest.17 from entity @e[type = minecraft:armor_stand, tag = cd_restore_inventory, limit = 1] weapon.mainhand
execute if score #cd_slot cd_variable matches 18 run item replace entity @a[tag = cd_target, limit = 1] enderchest.18 from entity @e[type = minecraft:armor_stand, tag = cd_restore_inventory, limit = 1] weapon.mainhand
execute if score #cd_slot cd_variable matches 19 run item replace entity @a[tag = cd_target, limit = 1] enderchest.19 from entity @e[type = minecraft:armor_stand, tag = cd_restore_inventory, limit = 1] weapon.mainhand
execute if score #cd_slot cd_variable matches 20 run item replace entity @a[tag = cd_target, limit = 1] enderchest.20 from entity @e[type = minecraft:armor_stand, tag = cd_restore_inventory, limit = 1] weapon.mainhand
execute if score #cd_slot cd_variable matches 21 run item replace entity @a[tag = cd_target, limit = 1] enderchest.21 from entity @e[type = minecraft:armor_stand, tag = cd_restore_inventory, limit = 1] weapon.mainhand
execute if score #cd_slot cd_variable matches 22 run item replace entity @a[tag = cd_target, limit = 1] enderchest.22 from entity @e[type = minecraft:armor_stand, tag = cd_restore_inventory, limit = 1] weapon.mainhand
execute if score #cd_slot cd_variable matches 23 run item replace entity @a[tag = cd_target, limit = 1] enderchest.23 from entity @e[type = minecraft:armor_stand, tag = cd_restore_inventory, limit = 1] weapon.mainhand
execute if score #cd_slot cd_variable matches 24 run item replace entity @a[tag = cd_target, limit = 1] enderchest.24 from entity @e[type = minecraft:armor_stand, tag = cd_restore_inventory, limit = 1] weapon.mainhand
execute if score #cd_slot cd_variable matches 25 run item replace entity @a[tag = cd_target, limit = 1] enderchest.25 from entity @e[type = minecraft:armor_stand, tag = cd_restore_inventory, limit = 1] weapon.mainhand
execute if score #cd_slot cd_variable matches 26 run item replace entity @a[tag = cd_target, limit = 1] enderchest.26 from entity @e[type = minecraft:armor_stand, tag = cd_restore_inventory, limit = 1] weapon.mainhand


# Prepare for next item to restore

data remove entity @s data.EnderItems[0]
scoreboard players remove #cd_items cd_variable 1
execute if score #cd_items cd_variable matches 1.. run function creative_dimension:change_dimension/restore/enderchest