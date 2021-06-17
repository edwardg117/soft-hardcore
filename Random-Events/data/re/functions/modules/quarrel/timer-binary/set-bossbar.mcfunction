# Does a binary search
execute if score time_left quarrel matches 10 run bossbar set minecraft:quarrel value 10
execute if score time_left quarrel matches 0..9 run function re:modules/quarrel/timer-binary/0-9
execute if score time_left quarrel matches 11..20 run function re:modules/quarrel/timer-binary/11-20