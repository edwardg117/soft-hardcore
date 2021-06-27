# Starts the actual bossfight

execute as @e[type=armor_stand,tag=re_kyle_pos,limit=1] at @s run summon vindicator ~ ~ ~ {Silent:0b,CustomNameVisible:1b,PortalCooldown:20000000,PersistenceRequired:1b,Health:500f,Tags:["RE_Kyle"],CustomName:'{"text":"Kyle","color":"red","bold":true,"underlined":true}',Attributes:[{Name:generic.max_health,Base:500},{Name:generic.follow_range,Base:60}]}

execute as @e[type=armor_stand,tag=re_kyle_pos,limit=1] at @s run spawnpoint @a[scores={re_kyle_player=1}] ~ ~20 ~

scoreboard players set isRunning re_kyle 1
scoreboard players set stage re_kyle 1

# Summon Kyle and remove armor stand
kill @e[tag=re_kyle_pos]

function re:modules/bosses/kyle/main/loop
# Pick number between min_magic and max_magic, save output to next_magic
function re:modules/bosses/kyle/main/chose-magic-delay

# Start the magic function loop
schedule function re:modules/bosses/kyle/main/magic-loop 1s append

function re:modules/bosses/kyle/main/stage-tracker/stage-1

# Bossbar swap
bossbar set re:kyle_start_time players
bossbar set re:kyle_health players @a[scores={re_kyle_player=1}]