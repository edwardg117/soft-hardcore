# Loads horde
kill @e[type=armor_stand,tag=RE_Zombie_Horde_Marker]
summon armor_stand 0 0 0 {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["RE_Zombie_Horde_Marker"],DisabledSlots:4144959,CustomName:'{"text":"Zombie Horde Maker"}'}

# Add scoreboard
scoreboard objectives add zh dummy "Zombie Horde Vars"

# Set vars
# Number of Zombies to spawn
execute unless score horde_size zh matches 1.. run scoreboard players set horde_size zh 40

# Finish
# Put command block
execute at @e[type=armor_stand,tag=RE_Function_Starter,limit=1] run setblock ~ ~ ~ command_block[conditional=false,facing=up]{Command:"function re:modules/zombie-horde/start-event",powered:0b,auto:0b} replace
execute as @e[type=armor_stand,tag=RE_Function_Starter,limit=1] at @s run tp @s ~ ~ ~1
scoreboard players add modules_loaded re 1