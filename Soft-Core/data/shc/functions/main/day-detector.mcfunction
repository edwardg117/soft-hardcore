execute store result score Current_Day Time run time query day
execute if score Current_Day Time > Prev_Day Time run function shc:main/respawn/new-day
scoreboard players operation Prev_Day Time = Current_Day Time