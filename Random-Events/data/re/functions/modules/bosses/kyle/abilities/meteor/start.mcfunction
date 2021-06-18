# Starts the meteor ability
# Set num sumons to the value
scoreboard players operation fireball_to_spawn re_kyle = num_meteor re_kyle
summon armor_stand 0 0 0 {NoGravity:1b,Invulnerable:1b,Glowing:0b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["RE_Kyle_Meteor_Marker"]}
function re:modules/bosses/kyle/abilities/meteor/summon
function re:modules/bosses/kyle/abilities/meteor/effect