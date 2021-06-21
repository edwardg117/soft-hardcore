# Starts the event
# Add bossbars
bossbar add re:kyle_health "Kyle"
bossbar add re:kyle_start_time "Boss Battle: Kyle"

bossbar set re:kyle max 500
bossbar set re:kyle style notched_20
bossbar set re:kyle color red

bossbar set re:kyle_start_time color yellow
bossbar set re:kyle_start_time style notched_10
execute store result bossbar re:kyle_start_time max run scoreboard players get start_time re_kyle
execute store result bossbar re:kyle_start_time value run scoreboard players get start_time re_kyle

scoreboard players operation time_to_start re_kyle = start_time re_kyle

tag @a[tag=RE_Kyle_seen_join_message] remove RE_Kyle_seen_join_message

# TODO Summon Kyle

# TODO Move Kyle

# TODO Start event wait loop, as in waiting for players to approach the boss

