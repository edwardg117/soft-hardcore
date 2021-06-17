# Called to start the Zombie Horde event

# Pick a random player
tp @e[type=armor_stand,tag=RE_Zombie_Horde_Marker] @r

# RTP to 30 blocks away
execute as @e[type=armor_stand,tag=RE_Zombie_Horde_Marker] at @s run spreadplayers ~ ~ 30 40 true @s

# Summon zombies at marker
scoreboard players operation to_spawn zh = horde_size zh
function re:modules/zombie-horde/summon
execute as @e[type=armor_stand,tag=RE_Zombie_Horde_Marker] at @s run spreadplayers ~ ~ 1 10 false @e[tag=RE_Zombie_Horde]

# Notify of event start
execute as @e[type=armor_stand,tag=RE_Zombie_Horde_Marker] at @s run playsound minecraft:entity.zombie.ambient voice @a[distance=..100] ~ ~ ~ 100 0
title @a subtitle {"text":"A Zombie Horde has appeared nearby!","color":"red"}
title @a title {"text":"Event Started","color":"red"}

tp @e[type=armor_stand,tag=RE_Zombie_Horde_Marker] 0 0 0