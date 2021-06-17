# Starts a random event
# Set RNG vars
scoreboard players set min RNG 0
scoreboard players operation max RNG = modules_loaded re

function re:main/rng/get-rng
execute store result storage minecraft:shc eventID double 1 run scoreboard players get output RNG
data modify entity @e[type=armor_stand,tag=RE_Function_Starter,limit=1] Pos[2] set from storage minecraft:shc eventID
execute at @e[type=armor_stand,tag=RE_Function_Starter,limit=1] run setblock ~ ~ ~ minecraft:redstone_block destroy
execute at @e[type=armor_stand,tag=RE_Function_Starter,limit=1] run setblock ~ ~ ~ minecraft:bedrock destroy