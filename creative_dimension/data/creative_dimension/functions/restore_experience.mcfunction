# Restore experience level

execute if score #cd_experience_levels cd_variable matches 1.. run xp add @s 1 levels
scoreboard players remove #cd_experience_levels cd_variable 1


# Restore experience point

execute if score #cd_experience_points cd_variable matches 1.. run xp add @s 1 points
scoreboard players remove #cd_experience_points cd_variable 1


# Continue if there is still experience to restore

scoreboard players remove #cd_experiences cd_variable 1
execute if score #cd_experiences cd_variable matches 1.. run function creative_dimension:restore_experience