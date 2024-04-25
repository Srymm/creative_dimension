# Restore one experience level

xp add @s 1 levels


# Continue if there is still experience to restore

scoreboard players remove #cd_experience_levels cd_objective 1
execute if score #cd_experience_levels cd_objective matches 1.. run function creative_dimension:change_dimension/restore/experience_levels