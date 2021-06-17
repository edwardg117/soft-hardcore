# Upperest half
execute if score time_left quarrel matches 18 run bossbar set minecraft:quarrel value 18
execute if score time_left quarrel matches 16..17 run function re:modules/quarrel/timer-binary/16-17
execute if score time_left quarrel matches 19..20 run function re:modules/quarrel/timer-binary/19-20