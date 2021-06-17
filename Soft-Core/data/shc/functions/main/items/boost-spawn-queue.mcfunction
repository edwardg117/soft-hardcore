# Adds to the respawn queue the same ammount as a token would?
scoreboard players operation canRespawn vars += respawnTokenCount vars
clear @s minecraft:carrot_on_a_stick{SHC_Force_Respawn:1b} 1

scoreboard players operation @s usedFRespawn += respawnTokenCount vars

tellraw @a ["",{"selector":"@s","color":"blue"},{"text":" added ","color":"dark_green"},{"score":{"name":"respawnTokenCount","objective":"vars"},"color":"gold"},{"text":" respawns to the Respawn Queue!","color":"dark_green"}]