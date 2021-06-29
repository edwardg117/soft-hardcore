# Summons correct amount of totems
summon item 0 1 0 {Glowing:1b,CustomNameVisible:1b,Age:-32768,CustomName:'{"text":"Free Instant Respawn","color":"gold","bold":true,"underlined":true}',Item:{id:"minecraft:wandering_trader_spawn_egg",Count:1b}}
scoreboard players remove to_spawn rhs 1
execute if score to_spawn rhs matches 1.. run function re:modules/hidden-token/summon