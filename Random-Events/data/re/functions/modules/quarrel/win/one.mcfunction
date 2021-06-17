# Awards reward to Quarry One then calls stop
tellraw @a ["",{"selector":"@p[tag=Quarry_One]"},{"text":" defeated ","color":"green"},{"selector":"@p[tag=Quarry_Two]"},{"text":" and won ","color":"green"},{"score":{"name":"token_reward","objective":"quarrel"},"color":"gold"},{"text":" tokens!","color":"green"}]
scoreboard players operation @a[tag=Quarry_One] respawns += token_reward quarrel
function re:modules/quarrel/stop-event