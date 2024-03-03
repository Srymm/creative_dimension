# Store the position of the player

execute store result score @p x run data get entity @p Pos[0]
execute store result score @p y run data get entity @p Pos[1]
execute store result score @p z run data get entity @p Pos[2]

forceload add ~ ~
forceload add ~ 0
forceload add 0 ~


# Teleport the player to the creative dimension

execute in dimension:creative run teleport @p ~ ~ ~


# Set the gamemode of the player to creative

gamemode creative @p