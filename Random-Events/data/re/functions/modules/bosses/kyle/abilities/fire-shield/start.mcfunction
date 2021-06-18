# Sets up and starts the event
scoreboard players operation fire_time re_kyle = time_fire_attack re_kyle

# Give fire resistance
effect give @e[tag=RE_Kyle] minecraft:fire_resistance 17 0
# Start fire effect 2 seconds early for a warning
function re:modules/bosses/kyle/abilities/fire-shield/effect
schedule function re:modules/bosses/kyle/abilities/fire-shield/timer 2s
schedule function re:modules/bosses/kyle/abilities/fire-shield/place-fire 2s