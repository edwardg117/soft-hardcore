# Starts the hidden totem event
# Summon Totems
scoreboard players operation to_spawn rhs = num_totems rhs
function re:modules/hidden-token/summon
# Spread Totems
spreadplayers 0 0 10 10000 false @e[tag=instant_respawn_token]
# Event notification
tellraw @a ["",{"score":{"name":"num_totems","objective":"rhs"},"color":"gold"},{"text":" Free instant respawn tokens have been hidden in the world!","color":"dark_green"}]