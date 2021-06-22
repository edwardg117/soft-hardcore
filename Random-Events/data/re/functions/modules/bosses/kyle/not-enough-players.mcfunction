# Cancel the event if not enough joined
tellraw @a {"text":"Not enough people joined the event, trying another event tomorrow.","underlined":true,"color":"red"}
scoreboard players set last_event re 30