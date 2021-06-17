# Re-inits RNG

scoreboard objectives add RNG dummy "Random Number Generator"

kill @e[type=armor_stand,tag=RE_RNG]
summon armor_stand 0.5 0 0.5 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["RE_RNG"],DisabledSlots:4144959,CustomName:'{"text":"RNG Stand"}'}

# Settings
scoreboard players set min RNG 0
scoreboard players set max RNG 10

# Internals
scoreboard players set range RNG 10
scoreboard players set input RNG 0

# Output
scoreboard players set output RNG 0