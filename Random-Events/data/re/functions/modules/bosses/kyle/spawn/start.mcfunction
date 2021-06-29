# Pick a random place between 30k and 30m
kill @e[tag=re_kyle_pos]
scoreboard players set @a re_kyle_vlch 0
scoreboard players enable @a[scores={re_kyle_player=1}] re_kyle_vlch
scoreboard players set arena_delay re_kyle 20
bossbar set re:kyle_start_time name "Confirming Arena"
execute store result bossbar re:kyle_start_time max run scoreboard players get arena_delay re_kyle
execute store result bossbar re:kyle_start_time value run scoreboard players get arena_delay re_kyle

summon armor_stand ~ ~1 ~ {Glowing:1b,NoGravity:1b,Invulnerable:1b,ShowArms:1b,Small:0b,Marker:1b,Invisible:0b,NoBasePlate:1b,Tags:["re_kyle_pos"],Pose:{Body:[0f,5f,0f],LeftArm:[268f,5f,17f],RightArm:[0f,0f,47f],LeftLeg:[12f,0f,0f],RightLeg:[330f,0f,0f],Head:[8f,0f,0f]},DisabledSlots:4144959,HandItems:[{id:"minecraft:iron_axe",Count:1b},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2369326}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:2369326}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:2369326}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;73502451,-1145421044,-1440943755,92654936],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWUxY2FiMzgyNDU4ZTg0M2FjNDM1NmUzZTAwZTFkMzVjMzZmNDQ5ZmExYTg0NDg4YWIyYzY1NTdiMzkyZCJ9fX0="}]}}}}]}
execute as @e[type=armor_stand,tag=re_kyle_pos,limit=1] run function re:modules/bosses/kyle/spawn/pick-arena