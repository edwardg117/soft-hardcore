# Constant check to see if a dead player can respawn
execute as @a[scores={isDead=1}] if score @s deathPos <= canRespawn vars as @s run function shc:main/respawn/respawn-player