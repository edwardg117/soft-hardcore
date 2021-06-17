# Summons correct amount of totems
execute at 0 0 0 run summon item ~ ~ ~ {Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Free Instant Respawn","color":"gold","bold":true,"underlined":true}',Item:{id:"minecraft:wandering_trader_spawn_egg",Count:1b},Tags:["instant_respawn_token"]}
scoreboard players remove to_spawn rhs 1
execute if score to_spawn rhs matches 1.. run function re:modules/hidden-token/summon