# Grants all online players a free instant respawn
# dead players are respawned but don't get the free respawn

# Becuase the new system doesn't let you do NOT values, you have to make sure everyone is init for the isDead score...
scoreboard players add @a isDead 0
# Give all players 1 respawn
scoreboard players add @a[scores={isDead=0}] respawns 1
# Respawn all dead players
function re:modules/respawn-all-dead/start-event

# Notification for event
tellraw @a {"text":"All living players have been granted free instant respawn token!","color":"green"}