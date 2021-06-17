# Initialise game, don't run everything unless it's the first time
scoreboard objectives add init dummy
# make init only fire once
scoreboard players add initPlayer init 1
# on first run, the dummy player will have a score of 1
execute if score initPlayer init matches 1 run function shc:init/first-run

say "Soft Hardcore is Running. Players can now only respawn one at a time, once per day. Instant respawn tokens are crafted with 4 Diamond blocks, 4 Gold blocks and 1 Emerald Block."