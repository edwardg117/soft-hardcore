# Finds players that have a spawn egg in their inv
execute as @a[nbt={Inventory:[{id:"minecraft:wandering_trader_spawn_egg"}]}] run function shc:main/items/grant-respawns
execute as @a[nbt={Inventory:[{id:"minecraft:bat_spawn_egg"}]}] run function shc:main/items/give-friend-stick

# Find players who used a carrot on a stick
execute as @a[scores={carrotUsed=1..},nbt={SelectedItem:{tag:{SHC_Force_Respawn:1b}}}] run function shc:main/items/boost-spawn-queue
scoreboard players set @a[scores={carrotUsed=1..}] carrotUsed 0

# Find new players
recipe give @a[tag=!joined] shc:respawn_friend
recipe give @a[tag=!joined] shc:instant_respawn_token
say I forgot to add the book
tag @a[tag=!joined] add joined