# Lower half
execute if score time_left quarrel matches 5 run bossbar set minecraft:quarrel value 5
execute if score time_left quarrel matches 0..4 run function re:modules/quarrel/timer-binary/0-4
execute if score time_left quarrel matches 6..9 run function re:modules/quarrel/timer-binary/6-9