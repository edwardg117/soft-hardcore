# Loads the Kyle custom boss event
# Add phantom score objectives
scoreboard objectives add re_kyle dummy "Boss Kyle vars"

# Set vars
# Number of respawn tokens to give participating players
execute unless score token_reward re_kyle matches 1.. run scoreboard players set token_reward re_kyle 10
# Number of attacks per special attack
execute unless score num_magic re_kyle matches 1.. run scoreboard players set num_magic re_kyle 10
# Min time between special attacks (sec)
execute unless score min_magic re_kyle matches 1.. run scoreboard players set min_magic re_kyle 10
# Max time between special attacks
execute unless score max_magic re_kyle matches 1.. run scoreboard players set max_magic re_kyle 30

# Finish
# Put command block
execute at @e[type=armor_stand,tag=RE_Function_Starter,limit=1] run setblock ~ ~ ~ command_block[conditional=false,facing=up]{Command:"function re:modules/bosses/kyle/start-event",powered:0b,auto:0b} replace
execute as @e[type=armor_stand,tag=RE_Function_Starter,limit=1] at @s run tp @s ~ ~ ~1
scoreboard players add modules_loaded re 1