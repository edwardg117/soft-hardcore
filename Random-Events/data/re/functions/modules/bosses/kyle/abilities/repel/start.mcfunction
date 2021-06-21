# Knocks players back with an exploding creeper, will damage players who don't run significantly
tag @e[tag=RE_Kyle,limit=1] add Repelling
data modify entity @e[tag=RE_Kyle,limit=1] NoAI set value 1b
data modify entity @e[tag=RE_Kyle,limit=1] Invulnerable set value 1b
effect give @e[tag=RE_Kyle,limit=1] minecraft:regeneration 20 1 false
gamerule mobGriefing false
execute at @e[tag=RE_Kyle,limit=1] run tellraw @a[distance=..100] [{"text":"[","color":"red","bold":true},{"selector":"@e[tag=RE_Kyle,limit=1]","color":"red","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":""}},{"text":"] Get Back!","color":"red","bold":true,"hoverEvent":{"action":"show_entity","contents":""}}]
function re:modules/bosses/kyle/abilities/repel/effect
schedule function re:modules/bosses/kyle/abilities/repel/explode 3s