# Check win or lose conditions, update Kyle health
# Update bossbar
execute store result bossbar re:kyle_health value run data get entity @e[tag=RE_Kyle,limit=1] Health
execute store result score boss_health re_kyle run data get entity @e[tag=RE_Kyle,limit=1] Health
# Slow falling for respawnees
effect give @a[scores={re_kyle_jdie=1}] minecraft:slow_falling 5 0 false
scoreboard players set @a[scores={re_kyle_jdie=1}] re_kyle_jdie 0

# Win: Kyle is dead
# Lose: All players dead

execute unless entity @e[tag=RE_Kyle] run function re:modules/bosses/kyle/main/win

execute unless entity @a[scores={re_kyle_player=1,isDead=0,respawns=1..}] run function re:modules/bosses/kyle/main/lose

execute if score isRunning re_kyle matches 1 run schedule function re:modules/bosses/kyle/main/loop 1t replace