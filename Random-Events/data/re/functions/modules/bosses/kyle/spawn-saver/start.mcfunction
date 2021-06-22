# Saves the player spawnpoints

# These next three was the only way I could think of to store the respawn points for multiple players
scoreboard objectives remove re_kyle_spawnX
scoreboard objectives add re_kyle_spawnX dummy
scoreboard objectives remove re_kyle_spawnY
scoreboard objectives add re_kyle_spawnY dummy
scoreboard objectives remove re_kyle_spawnZ
scoreboard objectives add re_kyle_spawnZ dummy
# num players also acts as an ID, to tie players to their spawn information
scoreboard players set num_players re_kyle_spsv 0
execute as @a[scores={re_kyle_player=1}] run function re:modules/bosses/kyle/spawn-saver/save

# Only continue if there is at least one player
execute if score num_players re_kyle_spsv matches 1.. run say event will start
execute if score num_players re_kyle_spsv matches 0 run function re:modules/bosses/kyle/not-enough-players