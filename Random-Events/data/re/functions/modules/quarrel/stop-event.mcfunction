# Stops the event 
scoreboard players set is_running quarrel 0
schedule clear re:modules/quarrel/event-loop
schedule clear re:modules/quarrel/timer

# remove timer
bossbar remove minecraft:quarrel

# Remove tags and team
team leave @a[team=quarrel_team]
tag @a[tag=Quarry_One] remove Quarry_One
tag @a[tag=Quarry_Two] remove Quarry_Two

# tell tokens
execute as @a run tellraw @s ["",{"text":"===================\nYour respawn tokens:\n> ","color":"dark_green"},{"score":{"name":"@s","objective":"respawns"},"color":"gold"},{"text":"\n"},{"text":"===================","color":"dark_green"}]