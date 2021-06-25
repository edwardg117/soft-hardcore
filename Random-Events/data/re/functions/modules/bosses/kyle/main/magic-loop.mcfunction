# Magic loop, check to see if magis should ber performed then chose new delay
execute if score next_magic re_kyle macthes 0 run say magic attack performed
scoreboard players remove next_magic re_kyle 1
execute if score next_magic re_kyle macthes ..0 run function re:modules/bosses/kyle/main/chose-magic-delay

execute if score isRunning re_kyle matches 1 run schedule function re:modules/bosses/kyle/main/magic-loop 1s append