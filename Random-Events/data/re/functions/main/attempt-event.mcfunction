# Get probability for event
execute if score last_event re matches 0..4 run scoreboard players set event_chance re 0
execute if score last_event re matches 5..9 run scoreboard players set event_chance re 10
execute if score last_event re matches 10..14 run scoreboard players set event_chance re 25
execute if score last_event re matches 15..19 run scoreboard players set event_chance re 45
execute if score last_event re matches 20..24 run scoreboard players set event_chance re 70
execute if score last_event re matches 25..29 run scoreboard players set event_chance re 75
execute if score last_event re matches 30.. run scoreboard players set event_chance re 100

# Set up RNG
scoreboard players set min RNG 1
scoreboard players set max RNG 101
# Get RNG
function re:main/rng/get-rng

#Hacky solution to start a random event with no weightings
execute if score output RNG <= event_chance re run function re:main/scratch/start-random-event
scoreboard players add last_event re 1
execute if score output RNG <= event_chance re run scoreboard players set last_event re 0