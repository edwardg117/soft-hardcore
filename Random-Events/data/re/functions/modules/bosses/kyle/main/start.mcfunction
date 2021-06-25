# Starts the actual bossfight

execute as @e[type=armor_stand,tag=re_kyle_pos,limit=1] at @s run summon vindicator ~ ~ ~ {Silent:0b,CustomNameVisible:1b,PortalCooldown:20000000,PersistenceRequired:1b,Health:500f,Tags:["RE_Kyle"],CustomName:'{"text":"Kyle","color":"red","bold":true,"underlined":true}',Attributes:[{Name:generic.max_health,Base:500},{Name:generic.follow_range,Base:60}]}

execute as @e[type=armor_stand,tag=re_kyle_pos,limit=1] at @s run spawnpoint @a[scores={re_kyle_player=1}] ~ ~20 ~

scoreboard players set isRunning re_kyle 1

function re:modules/bosses/kyle/main/loop
# Pick number between min_magic and max_magic, save output to next_magic
function re:modules/bosses/kyle/main/chose-magic-delay

# TODO Start the magic function loop
