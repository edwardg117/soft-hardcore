# Finds the player's bed
data modify storage shc playerBed set value []
#data modify storage shc playerBed append from entity @s SpawnX
#data modify storage minecraft:shc playerBed[1] set from storage minecraft:shc playerBedT
execute store result storage minecraft:shc playerBedT double 1 run data get entity @s SpawnX
data modify storage minecraft:shc playerBed insert 0 from storage minecraft:shc playerBedT
#data modify storage shc playerBed append from entity @s SpawnY
#execute store result storage minecraft:shc playerBed[1] double 1 run data get entity @s SpawnY
execute store result storage minecraft:shc playerBedT double 1 run data get entity @s SpawnY
data modify storage minecraft:shc playerBed insert 1 from storage minecraft:shc playerBedT
#data modify storage shc playerBed append from entity @s SpawnZ
#execute store result storage minecraft:shc playerBed[2] double 1 run data get entity @s SpawnZ
execute store result storage minecraft:shc playerBedT double 1 run data get entity @s SpawnZ
data modify storage minecraft:shc playerBed insert 2 from storage minecraft:shc playerBedT