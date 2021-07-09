# Physically respawns the player and sets propper scores run with execute as 
#execute at @e[type=armor_stand,tag=height_finder] run tp @s ~ ~ ~
# Teleports player to their bed if they
execute if data entity @s SpawnX as @s run function shc:main/respawn/tp-player
tag @s add Respawning
# Teleport player to 0 0 if they have no bed
execute unless data entity @s SpawnX run execute at @e[type=armor_stand,tag=height_finder] run tp @s ~ ~ ~
gamemode survival @s
kill @e[tag=SHC_Bed_Finder]


scoreboard players set @s isDead 0
scoreboard players set @s deathPos 0
tag @s remove Respawning

# Partcle effect and sound
execute at @e[type=armor_stand,tag=height_finder] run particle minecraft:portal ~ ~1 ~ 0 0 0 5 100 force @a
execute at @e[type=armor_stand,tag=height_finder] run particle minecraft:reverse_portal ~ ~1 ~ 0 0 0 1 100 force @a
execute at @e[type=armor_stand,tag=height_finder] run playsound block.beacon.activate ambient @a[distance=..10] ~ ~ ~ 10 0.9 1.0