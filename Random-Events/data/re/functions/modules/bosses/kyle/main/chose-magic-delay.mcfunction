# Picks a random delay beween min_magic and max_magic, saves output to next_magic
# Prep RNG
scoreboard players operation min RNG = min_magic re_kyle
scoreboard players operation max RNG = max_magic re_kyle

# Get RNG
function re:main/rng/get-rng

scoreboard players operation next_magic re_kyle = output RNG