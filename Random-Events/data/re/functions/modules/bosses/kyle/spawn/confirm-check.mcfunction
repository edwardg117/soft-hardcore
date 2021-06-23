# Checks to see if the players said the arena location is valid for a fight
# TODO check to see if 50%+ of players decide the arena sucks
# Get total players
execute store result score player_count re_kyle if entity @a[scores={re_kyle_player=1}]
execute store result score vote_count re_kyle if entity @a[scores={re_kyle_vlch=1}]
# if vote_count/player count >=50% pass the vote value will be 1, 0 otherise
scoreboard players operation vote_count re_kyle /= player_count re_kyle

title @a[scores={re_kyle_player=1}] times 0 100 0
title @a[scores={re_kyle_player=1}] subtitle {"text":"Battle will start in...","color":"dark_red"}

execute if score arena_delay re_kyle matches 6 run title @a[scores={re_kyle_player=1}] title {"text":"5","bold":true,"color":"red"}
execute if score arena_delay re_kyle matches 5 run title @a[scores={re_kyle_player=1}] title {"text":"4","bold":true,"color":"red"}
execute if score arena_delay re_kyle matches 4 run title @a[scores={re_kyle_player=1}] title {"text":"3","bold":true,"color":"red"}
execute if score arena_delay re_kyle matches 3 run title @a[scores={re_kyle_player=1}] title {"text":"2","bold":true,"color":"red"}
execute if score arena_delay re_kyle matches 2 run title @a[scores={re_kyle_player=1}] title {"text":"1","bold":true,"color":"red"}


# Vote failed
scoreboard players remove arena_delay re_kyle 1
execute store result bossbar re:kyle_start_time value run scoreboard players get arena_delay re_kyle

# Vote passed
execute if score vote_count re_kyle matches 1 run function re:modules/bosses/kyle/spawn/start


execute if score vote_count re_kyle matches 0 if score arena_delay re_kyle matches 0 run say event will start here


execute if score arena_delay re_kyle matches 1.. run schedule function re:modules/bosses/kyle/spawn/confirm-check 1s replace