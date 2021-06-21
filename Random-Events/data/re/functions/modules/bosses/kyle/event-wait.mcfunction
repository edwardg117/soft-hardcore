# This script counts down until the event starts, allowing players to opt-in
scoreboard players enable @a re_kyle_player
tellraw @a[tag=!RE_Kyle_seen_join_message] ["",{"text":"Boss Battle: ","color":"red"},{"text":"Kyle","color":"gold"},{"text":"\n"},{"text":"Kyle has run out of walls to put holes in and someone told him you stole his energy drinks!","color":"red"},{"text":"\n"},{"text":"[Click here to join the battle]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger re_kyle_player set 1"}}]
tag @a add RE_Kyle_seen_join_message
title @a[tag=RE_Kyle_participating] actionbar ["",{"text":"Event starting in ","color":"yellow"},{"score":{"name":"time_to_start","objective":"re_kyle"},"color":"gold"},{"text":"s","color":"yellow"}]
execute store result bossbar re:kyle_start_time value run scoreboard players get time_to_start re_kyle
scoreboard players remove time_to_start re_kyle 1
execute if score time_to_start re_kyle matches 1.. run schedule function re:modules/bosses/kyle/event-wait 1s replace
execute if score time_to_start re_kyle matches ..0 run say event start here