execute if score boss_health re_kyle matches ..200 run scoreboard players add stage re_kyle 1
execute if score boss_health re_kyle matches ..200 run function re:modules/bosses/kyle/main/stage-tracker/stage-4
execute if score boss_health re_kyle matches ..200 run function re:modules/bosses/kyle/abilities/repel/start

title @a actionbar {"text":"Stage 3"}

execute if score boss_health re_kyle matches 201.. run schedule function re:modules/bosses/kyle/main/stage-tracker/stage-3 5t replace