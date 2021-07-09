# Moves the armor stand
data modify entity @s Pos set from storage minecraft:shc playerBed
execute at @s run tp @a[tag=Respawning] ~ ~ ~
#execute at @s run forceload add ~ ~
kill @s