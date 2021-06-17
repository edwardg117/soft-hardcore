# Runs on every new day and allows one more respawn for the oldest dead player
# Print new day message
execute as @a run function shc:print/new-day
# Check if anyone is waiting to respawn
execute if score maxDeathId vars > canRespawn vars run scoreboard players add canRespawn vars 1

schedule function shc:print/respawn-queue 10t