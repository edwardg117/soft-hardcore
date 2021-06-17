# Summons Phantoms
summon phantom ~ 127 ~ {Glowing:1b,PersistenceRequired:1b,Size:1,Tags:["RE_Phantom_Swarm"],ActiveEffects:[{Id:12b,Amplifier:0b,Duration:20000000,ShowParticles:0b}],Attributes:[{Name:generic.follow_range,Base:40}],HandItems:[{id:"minecraft:wandering_trader_spawn_egg",Count:1b},{}],HandDropChances:[2.000F,0.085F]}
scoreboard players remove to_spawn phs 1
execute if score to_spawn phs matches 1.. as @s run function re:modules/phantom-swarm/summon