# INIT of game
say "Initialising Soft-HardCore"

gamerule doImmediateRespawn true
gamerule spectatorsGenerateChunks false
gamerule commandBlockOutput false
gamerule keepInventory true

setworldspawn 0 0 0

# What day is it?
scoreboard objectives add Time dummy
# Used to flag a player as dead
scoreboard objectives add isDead deathCount
# Used to flag a player as having just died an need processing
scoreboard objectives add justDied deathCount
# Death Queue Position of player
scoreboard objectives add deathPos dummy "Death Queue"
# How many respawns a player has before they have to wait in the death queue
scoreboard objectives add respawns dummy "Respawns"

scoreboard objectives add vars dummy "Variables"
scoreboard objectives add Stats dummy "Statistics"

scoreboard objectives add carrotUsed minecraft.used:minecraft.carrot_on_a_stick

# Statistic stuff that people might like to know
#
# Times a player has died
scoreboard objectives add Deaths deathCount
# Times a player has used a respawn instead of the death queue
scoreboard objectives add usedRespawns dummy "Respawn Totems Used"
# Number of crafted respawn tokens
scoreboard objectives add craftedRespawns dummy "Respawn Totems Crafted"
# Number of friend respawns Used
scoreboard objectives add usedFRespawn dummy "Friends Respawned"
# Assign vars
# Used to find the world height at the origin
scoreboard players set Origin_Height vars 255
# The score that holds the max id of players allowed to respawn
# ie. If 5, players with score 5 or lower can respawn
scoreboard players set canRespawn vars 0
# Score that keeps track of the current death id (yes this does mean you can only die 2,147,483,647 times before the system breaks, but this means that people who are offline can respawn)
scoreboard players set maxDeathId vars 0
# How many respawns should be awarded for crafting a token? (default: 3)
scoreboard players set respawnTokenCount vars 3
# Value to keep track of how many players are in the respawn queue, calulated on each death

# 20 minutes per day :/
scoreboard players set minutesPerDay vars 20

scoreboard players set Deaths Stats 0
scoreboard players set Respawn_Totems_Used Stats 0
scoreboard players set Respawn_Totems_Crafted Stats 0

#scoreboard players set Available respawns 0

#data modify storage shc hPos set value [0d,255d,0d]
data modify storage shc playerBed set value []

summon armor_stand 0 255 0 {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["height_finder"],DisabledSlots:4144959,CustomName:'{"text":"Height Finder"}'}
tp @e[tag=height_finder] 0 255 0
schedule function shc:init/spawn-building/main 20t