# Saves the spawn of each individual player
scoreboard players add num_players re_kyle_spsv 1

execute store result score @s re_kyle_spawnX run data get entity @s SpawnX
execute store result score @s re_kyle_spawnY run data get entity @s SpawnY
execute store result score @s re_kyle_spawnZ run data get entity @s SpawnZ