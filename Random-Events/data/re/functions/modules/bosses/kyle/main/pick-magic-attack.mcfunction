# Determines what magical attack to use
# Pick a random number between 1 and current stage
# Prep RNG
scoreboard players set min RNG 0
scoreboard players operation max RNG = stage re_kyle

# Get RNG
function re:main/rng/get-rng

scoreboard players operation chosen_attack re_kyle = output RNG

execute if score chosen_attack re_kyle matches 1 run function re:modules/bosses/kyle/abilities/meteor/start
execute if score chosen_attack re_kyle matches 2 run function re:modules/bosses/kyle/abilities/fire-shield/start
execute if score chosen_attack re_kyle matches 3 run function re:modules/bosses/kyle/abilities/repel/start