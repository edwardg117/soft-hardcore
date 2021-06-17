# Lower half
execute if score time_left quarrel matches 2 run bossbar set minecraft:quarrel value 2
execute if score time_left quarrel matches 0..1 run function re:modules/quarrel/timer-binary/0-1
execute if score time_left quarrel matches 3..4 run function re:modules/quarrel/timer-binary/3-4