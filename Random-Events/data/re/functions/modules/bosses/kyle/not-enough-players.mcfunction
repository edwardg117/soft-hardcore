# Cancel the event if not enough joined
tellraw @a {"text":"Not enough people joined the event, trying another event tomorrow.","underlined":true,"color":"red"}

bossbar set re:kyle_start_time players
bossbar remove re:kyle_health
bossbar remove re:kyle_start_time

scoreboard players set last_event re 30