# Print if there are spare respawns
scoreboard players operation rsqFree vars = canRespawn vars
scoreboard players operation rsqFree vars -= maxDeathId vars

tellraw @a ["",{"score":{"name":"rsqFree","objective":"vars"},"color":"gold"},{"text":" respawns available in the Respawn Queue...","color":"dark_red"}]