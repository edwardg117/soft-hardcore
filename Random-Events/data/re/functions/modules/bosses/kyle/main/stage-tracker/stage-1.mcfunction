execute if score boss_health re_kyle matches ..400 run scoreboard players add stage re_kyle 1
execute if score boss_health re_kyle matches ..400 run function re:modules/bosses/kyle/main/stage-tracker/stage-2
execute if score boss_health re_kyle matches ..400 run function re:modules/bosses/kyle/abilities/meteor/start

title @a[scores={re_kyle_player=1}] actionbar {"text":"Stage 1"}

execute if score boss_health re_kyle matches 401.. run schedule function re:modules/bosses/kyle/main/stage-tracker/stage-1 5t replace