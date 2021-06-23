# Randomly teleports the marker to a new location
spreadplayers 0 0 30000 30000000 false @s
tp @a[scores={re_kyle_player=1}] @s
#tp @a @s
execute at @s run spreadplayers ~ ~ 1 20 false @a[scores={re_kyle_player=1}]
#execute at @s run spreadplayers ~ ~ 1 20 false @a

tellraw @a[scores={re_kyle_player=1}] ["",{"text":"If this location is not suitable for the fight:","color":"aqua"},{"text":"\n"},{"text":"[Pick new location]","underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger re_kyle_vlch set 1"},"hoverEvent":{"action":"show_text","contents":">50% of players must vote to change"}}]
#tellraw @a ["",{"text":"If this location is not suitable for the fight:","color":"aqua"},{"text":"\n"},{"text":"[Pick new location]","underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger re_kyle_vlch set 1"},"hoverEvent":{"action":"show_text","contents":">50% of players must vote to change"}}]

schedule function re:modules/bosses/kyle/spawn/confirm-check 1s replace