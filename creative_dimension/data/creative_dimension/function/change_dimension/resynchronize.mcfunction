# Set resynchronize mode

scoreboard players operation #resynchronize creative_dimension.value = @s creative_dimension.dimension


# Retrieve last state

function creative_dimension:change_dimension


# Print message

execute if score #resynchronize creative_dimension.value matches 0 run function creative_dimension:log { message: '{ text: "Your state has been resynchronized", color: "green" }, { text: "\n" }, { text: "Your next dimension change will use the ", color: "gray" }, { text: "default world location", color: "gold" }' }
execute if score #resynchronize creative_dimension.value matches 1 run function creative_dimension:log { message: '{ text: "Your state has been resynchronized", color: "green" }, { text: "\n" }, { text: "Your next dimension change will use the ", color: "gray" }, { text: "default creative location", color: "gold" }' }


# Reset resynchronize mode

scoreboard players reset #resynchronize creative_dimension.value