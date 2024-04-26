# Restore one experience point

xp add @s 1 points


# Continue if there is still experience to restore

scoreboard players remove #cd_experience_points cd_objective 1
execute if score #cd_experience_points cd_objective matches 1.. run function creative_dimension:change_dimension/restore/experience_points