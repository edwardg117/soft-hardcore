# Players faile to kill Kyle and have no respawns left
# Kyle should be force-killed and a message sent
kill @e[tag=RE_Kyle]

tellraw @a ["",{"selector":"@a[scores={re_kyle_player=1}]","color":"gold"},{"text":", failed to defeat Kyle! The Respawn Queue just got a little bigger...","color":"red"}]

function re:modules/bosses/kyle/main/stop-event