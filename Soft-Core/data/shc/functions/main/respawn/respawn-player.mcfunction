# Physically respawns the player and sets propper scores run with execute as 
#execute at @e[type=armor_stand,tag=height_finder] run tp @s ~ ~ ~
# Teleports player to their bed if they
execute if data entity @s SpawnX as @s run function shc:main/respawn/tp-player
# Teleport player to 0 0 if they have no bed
execute unless data entity @s SpawnX run execute at @e[type=armor_stand,tag=height_finder] run tp @s ~ ~ ~
gamemode survival @s

scoreboard players set @s isDead 0
scoreboard players set @s deathPos 0

# TODO Partcle effect or sound?