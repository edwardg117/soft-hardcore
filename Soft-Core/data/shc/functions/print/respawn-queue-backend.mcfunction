# The actual message to send to people in the respawn queue
scoreboard players operation tmpRQPos vars = maxDeathId vars
scoreboard players operation tmpRQPos vars -= @s deathPos
scoreboard players add tmpRQPos vars 1

scoreboard players operation waitTime vars = tmpRQPos vars
scoreboard players operation waitTime vars *= minutesPerDay vars

tellraw @s ["",{"text":"===[","color":"dark_red"},{"text":"Respawn Queue","color":"red"},{"text":"]===","color":"dark_red"},{"text":"\n"},{"text":"Players in Respawn Queue:","color":"red"},{"text":" ","color":"dark_red"},{"score":{"name":"playersInRespawnQueue","objective":"vars"},"color":"gold"},{"text":"\n"},{"text":"Your position:","color":"red"},{"text":" ","color":"dark_red"},{"score":{"name":"tmpRQPos","objective":"vars"},"color":"yellow"},{"text":" (","color":"yellow"},{"score":{"name":"waitTime","objective":"vars"},"color":"yellow"},{"text":" mins)","color":"yellow"},{"text":"\n"},{"text":"[","color":"dark_red"},{"selector":"@a[scores={deathPos=1..}]","color":"dark_purple"},{"text":"]\n====================","color":"dark_red"}]