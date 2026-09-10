function creative_dimension:set_default_location

execute if dimension creative_dimension:creative run function creative_dimension:log { message: '{ text: "Default creative location ", color: "gold" }, { text: "has been set successfully", color: "green" }' }
execute unless dimension creative_dimension:creative run function creative_dimension:log { message: '{ text: "Default world location ", color: "gold" }, { text: "has been set successfully", color: "green" }' }