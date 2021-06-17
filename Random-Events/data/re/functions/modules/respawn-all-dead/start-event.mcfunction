# Starts the respawn all dead players function
# Lets everyone respawn
scoreboard players operation canRespawn vars = maxDeathId vars

# notification for event
tellraw @a {"text":"All dead players have been respawned!","color":"dark_green"}