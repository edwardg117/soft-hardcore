# Loads the Quarrel module
# This event pits two players against each other, last one to die gets a free respawn
scoreboard objectives add quarrel dummy "Quarrel Vars"
scoreboard objectives add quarrel_death deathCount "Quarrel death teacker"
team add quarrel_team "Quarry Team"
team modify quarrel_team color gold
team modify quarrel_team nametagVisibility always
team modify quarrel_team prefix "[Quarry] "
team modify quarrel_team friendlyFire true
team modify quarrel_team seeFriendlyInvisibles false

# Default Settings
# Minutes that the quarrel should last before both players forefit
#execute unless score time_limit quarrel matches 1.. run scoreboard players set time_limit quarrel 20 ### Bossbar isn't dynamic :(
scoreboard players set time_limit quarrel 20
scoreboard players add time_left quarrel 0
scoreboard players add is_running quarrel 0
# Number of respawns to grant the winner
execute unless score token_reward quarrel matches 1.. run scoreboard players set token_reward quarrel 3
# Allow afk players? no


# Finish
# Put command block
execute at @e[type=armor_stand,tag=RE_Function_Starter,limit=1] run setblock ~ ~ ~ command_block[conditional=false,facing=up]{Command:"function re:modules/quarrel/start-event",powered:0b,auto:0b} replace
execute as @e[type=armor_stand,tag=RE_Function_Starter,limit=1] at @s run tp @s ~ ~ ~1
scoreboard players add modules_loaded re 1