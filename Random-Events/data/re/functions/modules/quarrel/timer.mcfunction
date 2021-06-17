# Ticks down the timer
scoreboard players remove time_left quarrel 1
function re:modules/quarrel/timer-binary/set-bossbar
# check for time limit
execute if score time_left quarrel matches 0 run function re:modules/quarrel/win/tie
execute if score time_left quarrel matches 1.. if score is_running quarrel matches 1 run schedule function re:modules/quarrel/timer 60s