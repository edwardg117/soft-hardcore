# Summons armour stand to 0,255,0

execute as @e[type=armor_stand,tag=height_finder] at @s if blocks -1 255 -1 1 255 1 ~-1 ~-1 ~-1 all run tp @s ~ ~-1 ~
execute as @e[type=armor_stand,tag=height_finder] at @s if blocks -1 255 -1 1 255 1 ~-1 ~-1 ~-1 all run function shc:init/spawn-building/find-origin-height
#execute as @e[type=armor_stand,tag=height_finder] at @s unless blocks -1 255 -1 1 255 1 ~-1 ~ ~-1 all run say fail