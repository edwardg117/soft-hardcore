# Pick two players
tag @r[tag=!isAFK] add Quarry_One
tag @r[tag=!isAFK,tag=!Quarry_One] add Quarry_Two

team join quarrel_team @a[tag=Quarry_One]
team join quarrel_team @a[tag=Quarry_Two]

# Give both players one instant respawn
scoreboard players add @a[team=quarrel_team] respawns 1
scoreboard players set @a[team=quarrel_team] quarrel_death 0
scoreboard players set is_running quarrel 1
# Start tracker
function re:modules/quarrel/event-loop
# Start timer
bossbar add quarrel "Quarrel Time Remaining"
bossbar set minecraft:quarrel color yellow
bossbar set minecraft:quarrel max 20
bossbar set minecraft:quarrel players @a[team=quarrel_team]
bossbar set minecraft:quarrel value 21

scoreboard players set time_left quarrel 21
function re:modules/quarrel/timer

# Event notif (should be title not tellraw)
title @a times 20 100 20
title @a[tag=Quarry_Two] subtitle ["",{"text":"Eliminate ","color":"red"},{"selector":"@a[tag=Quarry_One]","color":"gold"},{"text":" for ","color":"red"},{"score":{"name":"token_reward","objective":"quarrel"},"color":"gold"},{"text":" instant respawns!","color":"red"}]
title @a[tag=Quarry_Two] title {"text":"Eliminate your Quarry!","color":"dark_red"}
title @a[tag=Quarry_One] subtitle ["",{"text":"Eliminate ","color":"red"},{"selector":"@a[tag=Quarry_Two]","color":"gold"},{"text":" for ","color":"red"},{"score":{"name":"token_reward","objective":"quarrel"},"color":"gold"},{"text":" instant respawns!","color":"red"}]
title @a[tag=Quarry_One] title {"text":"Eliminate your Quarry!","color":"dark_red"}
# Tell whole server
tellraw @a ["",{"selector":"@a[tag=Quarry_One]"},{"text":" and ","color":"blue"},{"selector":"@a[tag=Quarry_Two]"},{"text":" are dueling to win ","color":"blue"},{"score":{"name":"token_reward","objective":"quarrel"},"color":"gold"},{"text":" instant respawns!","color":"blue"}]