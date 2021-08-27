# This loop attempts to start an event every day
# Only proceed if at least one player is online
execute store result score online_players re if entity @a
execute if score online_players re matches 1.. run function re:main/attempt-event

schedule function re:main/event-start-loop 1d