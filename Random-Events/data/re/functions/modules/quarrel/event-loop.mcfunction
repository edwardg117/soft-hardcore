# Update player positions
# Get coords for both players
execute store result score Two_X quarrel run data get entity @p[tag=Quarry_Two] Pos[0] 1
execute store result score Two_Y quarrel run data get entity @p[tag=Quarry_Two] Pos[1] 1
execute store result score Two_Z quarrel run data get entity @p[tag=Quarry_Two] Pos[2] 1

execute store result score One_X quarrel run data get entity @p[tag=Quarry_One] Pos[0] 1
execute store result score One_Y quarrel run data get entity @p[tag=Quarry_One] Pos[1] 1
execute store result score One_Z quarrel run data get entity @p[tag=Quarry_One] Pos[2] 1

# Update Quarry One
#   If Quarry_Two is in Nether:
execute if entity @a[tag=Quarry_Two,nbt={Dimension:"minecraft:the_nether"}] run title @a[tag=Quarry_One] actionbar ["",{"selector":"@a[tag=Quarry_Two]"},{"text":" D: ","bold":true,"color":"yellow"},{"text":"Nether","bold":true,"color":"gold"},{"text":" X: ","bold":true,"color":"yellow"},{"score":{"name":"Two_X","objective":"quarrel"},"bold":true,"color":"gold"},{"text":" Y: ","bold":true,"color":"yellow"},{"score":{"name":"Two_Y","objective":"quarrel"},"bold":true,"color":"gold"},{"text":" Z: ","bold":true,"color":"yellow"},{"score":{"name":"Two_Z","objective":"quarrel"},"bold":true,"color":"gold"}]
#   If Quarry_Two is in Overworld:
execute if entity @a[tag=Quarry_Two,nbt={Dimension:"minecraft:overworld"}] run title @a[tag=Quarry_One] actionbar ["",{"selector":"@a[tag=Quarry_Two]"},{"text":" D: ","bold":true,"color":"yellow"},{"text":"Overworld","bold":true,"color":"gold"},{"text":" X: ","bold":true,"color":"yellow"},{"score":{"name":"Two_X","objective":"quarrel"},"bold":true,"color":"gold"},{"text":" Y: ","bold":true,"color":"yellow"},{"score":{"name":"Two_Y","objective":"quarrel"},"bold":true,"color":"gold"},{"text":" Z: ","bold":true,"color":"yellow"},{"score":{"name":"Two_Z","objective":"quarrel"},"bold":true,"color":"gold"}]
#   If Quarry_Two is in End:
execute if entity @a[tag=Quarry_Two,nbt={Dimension:"minecraft:the_end"}] run title @a[tag=Quarry_One] actionbar ["",{"selector":"@a[tag=Quarry_Two]"},{"text":" D: ","bold":true,"color":"yellow"},{"text":"The End","bold":true,"color":"gold"},{"text":" X: ","bold":true,"color":"yellow"},{"score":{"name":"Two_X","objective":"quarrel"},"bold":true,"color":"gold"},{"text":" Y: ","bold":true,"color":"yellow"},{"score":{"name":"Two_Y","objective":"quarrel"},"bold":true,"color":"gold"},{"text":" Z: ","bold":true,"color":"yellow"},{"score":{"name":"Two_Z","objective":"quarrel"},"bold":true,"color":"gold"}]

# Update Quarry Two
#   If Quarry_One is in Nether:
execute if entity @a[tag=Quarry_One,nbt={Dimension:"minecraft:the_nether"}] run title @a[tag=Quarry_Two] actionbar ["",{"selector":"@a[tag=Quarry_One]"},{"text":" D: ","bold":true,"color":"yellow"},{"text":"Nether","bold":true,"color":"gold"},{"text":" X: ","bold":true,"color":"yellow"},{"score":{"name":"Two_X","objective":"quarrel"},"bold":true,"color":"gold"},{"text":" Y: ","bold":true,"color":"yellow"},{"score":{"name":"Two_Y","objective":"quarrel"},"bold":true,"color":"gold"},{"text":" Z: ","bold":true,"color":"yellow"},{"score":{"name":"Two_Z","objective":"quarrel"},"bold":true,"color":"gold"}]
#   If Quarry_Two is in Overworld:
execute if entity @a[tag=Quarry_One,nbt={Dimension:"minecraft:overworld"}] run title @a[tag=Quarry_Two] actionbar ["",{"selector":"@a[tag=Quarry_One]"},{"text":" D: ","bold":true,"color":"yellow"},{"text":"Overworld","bold":true,"color":"gold"},{"text":" X: ","bold":true,"color":"yellow"},{"score":{"name":"Two_X","objective":"quarrel"},"bold":true,"color":"gold"},{"text":" Y: ","bold":true,"color":"yellow"},{"score":{"name":"Two_Y","objective":"quarrel"},"bold":true,"color":"gold"},{"text":" Z: ","bold":true,"color":"yellow"},{"score":{"name":"Two_Z","objective":"quarrel"},"bold":true,"color":"gold"}]
#   If Quarry_Two is in End:
execute if entity @a[tag=Quarry_One,nbt={Dimension:"minecraft:the_end"}] run title @a[tag=Quarry_Two] actionbar ["",{"selector":"@a[tag=Quarry_One]"},{"text":" D: ","bold":true,"color":"yellow"},{"text":"The End","bold":true,"color":"gold"},{"text":" X: ","bold":true,"color":"yellow"},{"score":{"name":"Two_X","objective":"quarrel"},"bold":true,"color":"gold"},{"text":" Y: ","bold":true,"color":"yellow"},{"score":{"name":"Two_Y","objective":"quarrel"},"bold":true,"color":"gold"},{"text":" Z: ","bold":true,"color":"yellow"},{"score":{"name":"Two_Z","objective":"quarrel"},"bold":true,"color":"gold"}]

# Check for win conditions
# One Wins
execute if score @p[tag=Quarry_One] quarrel_death matches 0 if score @p[tag=Quarry_Two] quarrel_death matches 1 run function re:modules/quarrel/win/one
# Two Wins
execute if score @p[tag=Quarry_Two] quarrel_death matches 0 if score @p[tag=Quarry_One] quarrel_death matches 1 run function re:modules/quarrel/win/two
# Draw
execute if score @p[tag=Quarry_Two] quarrel_death matches 1 if score @p[tag=Quarry_One] quarrel_death matches 1 run function re:modules/quarrel/win/tie

execute if score is_running quarrel matches 1 run schedule function re:modules/quarrel/event-loop 5s