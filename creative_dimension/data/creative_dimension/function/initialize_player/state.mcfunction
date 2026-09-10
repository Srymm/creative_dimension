# Initialize inventory

$data modify storage creative_dimension:storage states.$(identifier).inventory set value []


# Initialize enderchest

$data modify storage creative_dimension:storage states.$(identifier).enderchest set value []


# Initialize experience

$data modify storage creative_dimension:storage states.$(identifier).experience.levels set value 0
$data modify storage creative_dimension:storage states.$(identifier).experience.points set value 0


# Initialize gamemode

$data modify storage creative_dimension:storage states.$(identifier).gamemode set value 1


# Initialize location

$data modify storage creative_dimension:storage states.$(identifier).location.default_creative_location set value true