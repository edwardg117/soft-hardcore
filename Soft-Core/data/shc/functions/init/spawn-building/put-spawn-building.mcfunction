# Puts the spawn structure at 0,0
execute as @e[type=armor_stand,tag=height_finder] at @s run setblock ~ ~ ~ structure_block[mode=load]{name:"minecraft:spawn_struct",posX:-5,posY:-1,posZ:-5,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
execute as @e[type=armor_stand,tag=height_finder] at @s run setblock ~ ~1 ~ minecraft:redstone_block
execute as @e[type=armor_stand,tag=height_finder] at @s run setblock ~ ~1 ~ minecraft:air
execute as @e[type=armor_stand,tag=height_finder] at @s run setblock ~ ~1 ~ minecraft:redstone_block
execute as @e[type=armor_stand,tag=height_finder] at @s run setblock ~ ~1 ~ minecraft:air
execute as @e[type=armor_stand,tag=height_finder] at @s run setworldspawn ~ ~ ~