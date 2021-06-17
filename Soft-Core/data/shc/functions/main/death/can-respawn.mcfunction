# Runs if the player has respawns avaible
scoreboard players remove @s respawns 1
scoreboard players set @s justDied 0
scoreboard players set @s isDead 0

scoreboard players add Deaths Stats 1
scoreboard players add Respawn_Totems_Used Stats 1
scoreboard players add @s usedRespawns 1

tellraw @s ["",{"text":"Respawn Totem used to respawn instantly!","color":"green"},{"text":"\n"},{"text":"You have","color":"dark_green"},{"text":" "},{"score":{"name":"@s","objective":"respawns"},"color":"gold"},{"text":" totems left.","color":"dark_green"}]