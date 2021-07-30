# Move armor stant and tp player
summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["SHC_Bed_Finder"]}
# This works, don't fix what ain't broke
execute as @s run function shc:main/respawn/find-bed
spectate @e[tag=SHC_Bed_Finder,limit=1] @s

data modify entity @e[tag=SHC_Bed_Finder,limit=1] Pos set from storage minecraft:shc playerBed
kill @e[tag=SHC_Bed_Finder,limit=1]
# Old code below me, using spectate instead of teleport so this isn't needed
#execute as @e[tag=SHC_Bed_Finder,limit=1] run function shc:main/respawn/move-bed-stand

#execute at @e[tag=SHC_Bed_Finder] run tp @s ~ ~ ~
#kill @e[tag=SHC_Bed_Finder]