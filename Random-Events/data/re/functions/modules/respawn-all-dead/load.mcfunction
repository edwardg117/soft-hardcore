# Loads the respawn all dead players module
# nothing to load for this

# Finish
# Put command block
execute at @e[type=armor_stand,tag=RE_Function_Starter,limit=1] run setblock ~ ~ ~ command_block[conditional=false,facing=up]{Command:"function re:modules/respawn-all-dead/start-event",powered:0b,auto:0b} replace
execute as @e[type=armor_stand,tag=RE_Function_Starter,limit=1] at @s run tp @s ~ ~ ~1
scoreboard players add modules_loaded re 1