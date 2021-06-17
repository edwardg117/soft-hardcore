# Runs if the player has no respawn totems
gamemode spectator @s
scoreboard players set @s justDied 0

scoreboard players add maxDeathId vars 1
scoreboard players operation @s deathPos = maxDeathId vars

scoreboard players add Deaths Stats 1

execute if score canRespawn vars < maxDeathId vars run function shc:print/death
execute if score canRespawn vars >= maxDeathId vars run function shc:print/death