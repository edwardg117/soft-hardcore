# Upper half
execute if score time_left quarrel matches 15 run bossbar set minecraft:quarrel value 15
execute if score time_left quarrel matches 11..14 run function re:modules/quarrel/timer-binary/11-14
execute if score time_left quarrel matches 16..20 run function re:modules/quarrel/timer-binary/16-20