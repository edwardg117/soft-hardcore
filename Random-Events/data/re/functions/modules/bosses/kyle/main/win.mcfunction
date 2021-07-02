# Players kill Kyle
# Award tokens
scoreboard players operation @a[scores={re_kyle_player=1}] respawns += token_reward re_kyle

effect give @a[scores={re_kyle_player=1}] minecraft:absorption 300 20 true
effect give @a[scores={re_kyle_player=1}] minecraft:resistance 300 5 true
effect give @a[scores={re_kyle_player=1}] minecraft:regeneration 300 2 true

# win message
tellraw @a ["",{"selector":"@a[scores={re_kyle_player=1}]","color":"gold"},{"text":" have defeated Kyle and earned ","color":"green"},{"score":{"name":"token_reward","objective":"re_kyle"},"color":"gold"},{"text":" Instant Respawns! each!","color":"green"}]

function re:modules/bosses/kyle/main/stop-event