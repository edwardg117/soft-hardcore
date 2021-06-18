# Produces the smoke and fire effect particles before and for the duration of the attack
execute at @e[tag=RE_Kyle,limit=1] run particle minecraft:flame ~ ~ ~ 2 2 2 0 10 force @a
execute at @e[tag=RE_Kyle,limit=1] run particle minecraft:smoke ~ ~ ~ 2 2 2 0 5 force @a
execute if score fire_time re_kyle matches 1.. run schedule function re:modules/bosses/kyle/abilities/fire-shield/effect 1t replace