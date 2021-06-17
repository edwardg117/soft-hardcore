# Prints to players on death
# Pre-calc position in respawn queue by maxId - canRespawn
scoreboard players operation playersInRespawnQueue vars = maxDeathId vars
scoreboard players operation playersInRespawnQueue vars -= canRespawn vars
# Pre-caalc wait time
scoreboard players operation waitTime vars = playersInRespawnQueue vars
scoreboard players operation waitTime vars *= minutesPerDay vars

tellraw @s ["",{"text":"=============================================","color":"red"},{"text":"\n"},{"text":"You have died! You have no remaining respawn tokens\nand have been entered into the respawn queue.","color":"dark_red"},{"text":"\n"},{"text":"Position in queue: ","color":"gold"},{"score":{"name":"playersInRespawnQueue","objective":"vars"},"color":"yellow"},{"text":"(max ","color":"yellow"},{"score":{"name":"waitTime","objective":"vars"},"color":"yellow"},{"text":" minutes)","color":"yellow"},{"text":"\n"},{"text":"=============================================","color":"red"}]