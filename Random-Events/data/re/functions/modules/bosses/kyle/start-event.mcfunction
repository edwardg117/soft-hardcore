# Starts the event
# Temp reset
bossbar remove re:kyle_health
bossbar remove re:kyle_start_time
schedule clear re:modules/bosses/kyle/event-wait
kill @e[tag=re_kyle_save_stand]

# Add bossbars
bossbar add re:kyle_health "Kyle"
bossbar add re:kyle_start_time "Boss Battle: Kyle"

bossbar set re:kyle_health max 500
bossbar set re:kyle_health style notched_20
bossbar set re:kyle_health color red

bossbar set re:kyle_start_time color yellow
bossbar set re:kyle_start_time style notched_10
execute store result bossbar re:kyle_start_time max run scoreboard players get start_time re_kyle
execute store result bossbar re:kyle_start_time value run scoreboard players get start_time re_kyle

scoreboard players operation time_to_start re_kyle = start_time re_kyle

tag @a[tag=RE_Kyle_seen_join_message] remove RE_Kyle_seen_join_message
scoreboard players set @a[scores={re_kyle_player=1}] re_kyle_player 0
# TODO Summon Kyle

# TODO Move Kyle

# TODO Start event wait loop, as in waiting for players to approach the boss

function re:modules/bosses/kyle/event-wait

#/kill @e[tag=re_kyle_pos]