# Removes token from player inv and grants the number of respawns in "respawnTokenCount" in the "vars" objective
scoreboard players operation @s respawns += respawnTokenCount vars
clear @s minecraft:wandering_trader_spawn_egg 1
scoreboard players operation @s craftedRespawns += respawnTokenCount vars
scoreboard players operation Respawn_Totems_Crafted Stats += respawnTokenCount vars

tellraw @s ["",{"text":"=============================================","color":"green"},{"text":"\n"},{"text":"You have just crafted a respawn token","color":"blue"},{"text":"\n"},{"text":"and gained ","color":"blue"},{"score":{"name":"respawnTokenCount","objective":"vars"},"color":"yellow"},{"text":" respawn/s!","color":"blue"},{"text":"\n"},{"text":"Your total instant respawns are: ","color":"gold"},{"score":{"name":"@s","objective":"respawns"},"color":"yellow"},{"text":"\n"},{"text":"=============================================","color":"green"}]