# Sumons a fireball ever second
execute at @e[tag=RE_Kyle,limit=1] run spreadplayers ~ ~ 5 20 false @e[tag=RE_Kyle_Meteor_Marker]
execute at @e[tag=RE_Kyle_Meteor_Marker,limit=1] run summon fireball ~ ~40 ~ {Glowing:1b,ExplosionPower:2b,power:[0.0,-0.1,0.0],Tags:["RE_Kyle_Meteor"]}
scoreboard players remove fireball_to_spawn re_kyle 1
execute if score fireball_to_spawn re_kyle matches 1.. run schedule function re:modules/bosses/kyle/abilities/meteor/summon 5t replace
execute if score fireball_to_spawn re_kyle matches 0 run kill @e[tag=RE_Kyle_Meteor_Marker]