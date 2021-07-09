execute store result score Current_Day Time run time query day
execute if score Current_Day Time > Prev_Day Time run function shc:main/respawn/new-day
scoreboard players enable @a stats_daily
execute as @a[scores={stats_daily=1}] run function shc:print/server-stats
scoreboard players set @a[scores={stats_daily=1}] stats_daily 0
scoreboard players operation Prev_Day Time = Current_Day Time