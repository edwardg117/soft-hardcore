# Loads the hidden instant respawn token module
# config obj
scoreboard objectives add rhs "Random Hidden Token Vars"

# Default settings
# Number of totems to scatter
execute unless score num_totems rhs matches 1.. run scoreboard players set num_totems rhs 3

# Finish
# Put command block
execute at @e[type=armor_stand,tag=RE_Function_Starter,limit=1] run setblock ~ ~ ~ command_block[conditional=false,facing=up]{Command:"function re:modules/hidden-token/start-event",powered:0b,auto:0b} replace
execute as @e[type=armor_stand,tag=RE_Function_Starter,limit=1] at @s run tp @s ~ ~ ~1
scoreboard players add modules_loaded re 1