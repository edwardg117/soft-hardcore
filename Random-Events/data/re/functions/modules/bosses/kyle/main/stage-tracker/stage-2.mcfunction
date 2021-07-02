execute if score boss_health re_kyle matches ..300 run scoreboard players add stage re_kyle 1
execute if score boss_health re_kyle matches ..300 run function re:modules/bosses/kyle/main/stage-tracker/stage-3
execute if score boss_health re_kyle matches ..300 run function re:modules/bosses/kyle/abilities/fire-shield/start

title @a[scores={re_kyle_player=1}] actionbar {"text":"Stage 2"}

execute if score boss_health re_kyle matches 301.. run schedule function re:modules/bosses/kyle/main/stage-tracker/stage-2 5t replace