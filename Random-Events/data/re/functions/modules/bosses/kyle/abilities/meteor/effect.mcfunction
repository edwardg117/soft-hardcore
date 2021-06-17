# Smoke trail for meteors
execute at @e[tag=RE_Kyle_Meteor] run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.5 1 0.5 0.001 20 force @a
execute if entity @e[tag=RE_Kyle_Meteor] run schedule function re:modules/bosses/kyle/abilities/meteor/effect 1t