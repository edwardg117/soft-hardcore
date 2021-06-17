# Starts the quarrel event if it can
# Check to see if there is at least 2 players not afk
execute store result score player_count quarrel if entity @a[tag=!isAFK]
execute if score player_count quarrel matches 2.. run function re:modules/quarrel/choose-payers
execute if score player_count quarrel matches ..1 run tellraw @a ["",{"text":"Attempted to start Quarrel event but had incufficient players, will attempt another event tomorrow.\nHad ","color":"dark_red"},{"score":{"name":"player_count","objective":"quarrel"},"color":"gold"},{"text":" out of 2 players not AFK.","color":"dark_red"}]
execute if score player_count quarrel matches ..1 run scoreboard players set last_event re 30