# Counts down the seconds
scoreboard players remove fire_time re_kyle 1
execute if score fire_time re_kyle matches 1.. run schedule function re:modules/bosses/kyle/abilities/fire-shield/timer 1s append