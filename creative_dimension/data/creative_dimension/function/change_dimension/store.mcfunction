# Retrieve last state

$data modify storage creative_dimension:storage states.restore set from storage creative_dimension:storage states.$(identifier)
$data remove storage creative_dimension:storage states.$(identifier)


# Store inventory and equipment

$data modify storage creative_dimension:storage states.$(identifier).inventory set from entity @s Inventory
$data modify storage creative_dimension:storage states.$(identifier).equipment set from entity @s equipment


# Store enderchest

$data modify storage creative_dimension:storage states.$(identifier).enderchest set from entity @s EnderItems


# Store experience

$data modify storage creative_dimension:storage states.$(identifier).experience.levels set from entity @s XpLevel
$execute store result storage creative_dimension:storage states.$(identifier).experience.points int 1 run xp query @s points


# Store gamemode

$data modify storage creative_dimension:storage states.$(identifier).gamemode set from entity @s playerGameType


# Store location

$execute if score #resynchronize creative_dimension.value matches 0 run return run data modify storage creative_dimension:storage states.$(identifier).location.default_world_location set value true
$execute if score #resynchronize creative_dimension.value matches 1 run return run data modify storage creative_dimension:storage states.$(identifier).location.default_creative_location set value true

$data modify storage creative_dimension:storage states.$(identifier).location.dimension set from entity @s Dimension
$data modify storage creative_dimension:storage states.$(identifier).location.x set from entity @s Pos[0]
$data modify storage creative_dimension:storage states.$(identifier).location.y set from entity @s Pos[1]
$data modify storage creative_dimension:storage states.$(identifier).location.z set from entity @s Pos[2]