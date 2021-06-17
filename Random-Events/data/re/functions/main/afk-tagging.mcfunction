# AFK detector
scoreboard players set @a[scores={isAFK=0}] isAFK 1

scoreboard players set @a[scores={walking=1..}] isAFK 0
scoreboard players set @a[scores={walkUWater=1..}] isAFK 0
scoreboard players set @a[scores={swimming=1..}] isAFK 0
scoreboard players set @a[scores={sneaking=1..}] isAFK 0
scoreboard players set @a[scores={sprinting=1..}] isAFK 0
scoreboard players set @a[scores={walkOWater=1..}] isAFK 0

scoreboard players set @a[scores={walking=1..}] walking 0
scoreboard players set @a[scores={walkUWater=1..}] walkUWater 0
scoreboard players set @a[scores={swimming=1..}] swimming 0
scoreboard players set @a[scores={sneaking=1..}] sneaking 0
scoreboard players set @a[scores={sprinting=1..}] sprinting 0
scoreboard players set @a[scores={walkOWater=1..}] walkOWater 0

scoreboard players set @a[scores={isAFK=0}] afkTime 0
tag @a[scores={isAFK=0},tag=isAFK] remove isAFK
scoreboard players add @a[scores={isAFK=1}] afkTime 1
tag @a[scores={afkTime=60}] add isAFK

schedule function re:main/afk-tagging 20t