# Loads the Phantom Swarm event
# Add phantom score objectives
scoreboard objectives add phs dummy "Phantom Swarm Vars"

# Set vars
# Number of Zombies to spawn
execute unless score swarm_size phs matches 1.. run scoreboard players set swarm_size phs 3

# Finish
# Put command block
execute at @e[type=armor_stand,tag=RE_Function_Starter,limit=1] run setblock ~ ~ ~ command_block[conditional=false,facing=up]{Command:"function re:modules/phantom-swarm/start-event",powered:0b,auto:0b} replace
execute as @e[type=armor_stand,tag=RE_Function_Starter,limit=1] at @s run tp @s ~ ~ ~1
scoreboard players add modules_loaded re 1