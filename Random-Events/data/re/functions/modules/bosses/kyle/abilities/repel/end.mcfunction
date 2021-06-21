# Ends this ability
tag @e[tag=RE_Kyle,limit=1] remove Repelling
data modify entity @e[tag=RE_Kyle,limit=1] NoAI set value 0b
data modify entity @e[tag=RE_Kyle,limit=1] Invulnerable set value 0b
gamerule mobGriefing true