# Runs when the player dies
# Failsafe because a value of none is not 0
scoreboard players add @a respawns 0
# If they don't have respawn totems, do:
execute if entity @s[scores={respawns=0}] as @s run function shc:main/death/enter-respawn-queue
# Check if they have respawn totems
execute if entity @s[scores={respawns=1..}] as @s run function shc:main/death/can-respawn