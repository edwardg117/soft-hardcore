# Summons correct amount of totems
summon item ~ ~ ~ {Glowing:1b,CustomNameVisible:1b,Age:32768,Tags:["instant_respawn_token"],Item:{id:"minecraft:wandering_trader_spawn_egg",Count:1b}}
scoreboard players remove to_spawn rhs 1
execute if score to_spawn rhs matches 1.. run function re:modules/hidden-token/summon