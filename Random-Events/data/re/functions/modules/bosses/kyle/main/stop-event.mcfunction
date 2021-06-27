# Stops event loops and teleports players home
schedule clear re:modules/bosses/kyle/main/stage-tracker/stage-1
schedule clear re:modules/bosses/kyle/main/stage-tracker/stage-2
schedule clear re:modules/bosses/kyle/main/stage-tracker/stage-3
schedule clear re:modules/bosses/kyle/main/stage-tracker/stage-4

schedule clear re:modules/bosses/kyle/main/loop
schedule clear re:modules/bosses/kyle/main/magic-loop

scoreboard players set isRunning re_kyle 0

# teleport players home
execute as @a[scores={re_kyle_player=1}] run function re:modules/bosses/kyle/spawn-saver/send-home

bossbar remove re:kyle_health
bossbar remove re:kyle_start_time