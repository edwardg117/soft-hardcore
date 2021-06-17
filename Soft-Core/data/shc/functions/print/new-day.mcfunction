# New Day message
scoreboard players operation playersInRespawnQueue vars = maxDeathId vars
scoreboard players operation playersInRespawnQueue vars -= canRespawn vars

tellraw @s ["",{"text":"===[Day ","color":"dark_green"},{"score":{"name":"Current_Day","objective":"Time"},"color":"gold"},{"text":"]===","color":"dark_green"},{"text":"\n"},{"text":"Server Stats:","color":"green"},{"text":"\nTotal deaths: "},{"score":{"name":"Deaths","objective":"Stats"},"color":"yellow"},{"text":"\nTokens crafted: "},{"score":{"name":"Respawn_Totems_Crafted","objective":"Stats"},"color":"yellow"},{"text":"\nTokens used: "},{"score":{"name":"Respawn_Totems_Used","objective":"Stats"},"color":"yellow"},{"text":"\n"},{"text":"Personal Stats:","color":"gold"},{"text":"\nDeaths: "},{"score":{"name":"@s","objective":"Deaths"},"color":"yellow"},{"text":"\nTokens crafted: "},{"score":{"name":"@s","objective":"craftedRespawns"},"color":"yellow"},{"text":"\nTokens used: "},{"score":{"name":"@s","objective":"usedRespawns"},"color":"yellow"},{"text":"\n\nPlayers in Respawn Queue: "},{"score":{"name":"playersInRespawnQueue","objective":"vars"},"color":"gold"},{"text":"\n"},{"selector":"@a[scores={deathPos=1..}]"},{"text":"\n"},{"text":"=============================","color":"dark_green"}]