# Generates a random number
# Yes it's biased and only works until about 15,000,000. I don't care

# Calc range
scoreboard players operation range RNG = max RNG
scoreboard players operation range RNG -= min RNG
# Get random number
spreadplayers 0 0 0 30000000 false @e[type=armor_stand,tag=RE_RNG,limit=1]
execute store result score output RNG run data get entity @e[type=armor_stand,tag=RE_RNG,limit=1] Pos[0] 1
tp @e[type=armor_stand,tag=RE_RNG,limit=1] 0.5 0 0.5
# Mod result
scoreboard players operation output RNG %= range RNG
# Shift back to original range
scoreboard players operation output RNG += min RNG