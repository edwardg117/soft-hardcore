# Starts the Phantom Swarm event
# BEcause this event affects all players no need to teleport a marker
scoreboard players operation to_spawn phs = swarm_size phs
execute as @a at @s run function re:modules/phantom-swarm/summon
# Have the phantom dive downwards
execute as @e[tag=RE_Phantom_Swarm] run data modify entity @s AY set value 60
execute as @e[tag=RE_Phantom_Swarm] run data modify entity @s AX set from entity @s Pos[0]
execute as @e[tag=RE_Phantom_Swarm] run data modify entity @s AZ set from entity @s Pos[2]

# Notify of event start
execute as @a at @s run playsound minecraft:entity.phantom.bite voice @s ~ ~ ~ 20 0
title @a subtitle {"text":"A swarm of phantoms has appeared above you!","color":"red"}
title @a title {"text":"Event Started","color":"red"}