execute at @e[tag=RE_Kyle,limit=1] run particle minecraft:portal ~ ~1 ~ 0 0 0 1 2 force @a
execute at @e[tag=RE_Kyle,limit=1] run particle minecraft:reverse_portal ~ ~1 ~ 0 0 0 1 2 force @a
execute if entity @e[tag=RE_Kyle,tag=Repelling,limit=1] run schedule function re:modules/bosses/kyle/abilities/repel/effect 1t replace