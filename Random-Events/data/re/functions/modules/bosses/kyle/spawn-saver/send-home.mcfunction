#/execute as @e[type=minecraft:armor_stand,distance=..3] if score edwardg random = @s random run say test
# Sends players to their beds after the battle ends, also re-sets spawn to their beds
tag @s add kyle_moving
summon armor_stand 0 0 0 {NoGravity:1b,Tags:["Kyle_Bed_Finder"]}
# Have to use this silly method to make a list in data
data modify storage re Kyle.Spawn set value []
execute store result storage minecraft:re Kyle.bedTmp double 1 run scoreboard players get @s re_kyle_spawnX
data modify storage minecraft:re Kyle.Spawn insert 0 from storage minecraft:re Kyle.bedTmp
execute store result storage minecraft:re Kyle.bedTmp double 1 run scoreboard players get @s re_kyle_spawnY
data modify storage minecraft:re Kyle.Spawn insert 1 from storage minecraft:re Kyle.bedTmp
execute store result storage minecraft:re Kyle.bedTmp double 1 run scoreboard players get @s re_kyle_spawnZ
data modify storage minecraft:re Kyle.Spawn insert 2 from storage minecraft:re Kyle.bedTmp

execute as @e[tag=Kyle_Bed_Finder,limit=1] run function re:modules/bosses/kyle/spawn-saver/move-stand

#execute unless entity @s[scores={SpawnX=0,SpawnY=0,SpawnZ=0}] as @s run 
# If player has no bed
execute if entity @s[scores={re_kyle_spawnX=0,re_kyle_spawnY=0,re_kyle_spawnZ=0}] run execute at @e[type=armor_stand,tag=height_finder] run tp @s ~ ~ ~

execute at @s run spawnpoint @s ~ ~ ~
kill @e[tag=Kyle_Bed_Finder]
#execute store result storage minecraft:re Kyle.Spawn[0] double 1 run scoreboard players get @s re_kyle_spawnX
tag @s remove kyle_moving