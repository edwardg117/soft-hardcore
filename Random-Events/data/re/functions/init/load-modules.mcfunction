# Prepare to load command blocks
kill @e[type=armor_stand,tag=RE_Function_Starter]
summon armor_stand 0.5 0 0.5 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["RE_Function_Starter"],DisabledSlots:4144959,CustomName:'{"text":"Function Loader"}'}

# Loads modules listed here
function re:modules/zombie-horde/load
function re:modules/phantom-swarm/load
function re:modules/free-respawn/load
function re:modules/respawn-all-dead/load
function re:modules/hidden-token/load
function re:modules/quarrel/load
function re:modules/lightning/load

tp @e[type=armor_stand,tag=RE_Function_Starter] 1.0 0 0
