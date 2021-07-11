# Starts the Lightning Strike event
# I debated having a good and bad strike, where the good event gave buffs and the bad gave debufs 
# but I decided that those could be their own thing if I ever decide to do that.

tag @r add re_lightning_strike

execute at @a[tag=re_lightning_strike] unless entity @e[type=minecraft:villager,distance=..10] run summon minecraft:lightning_bolt
execute at @a[tag=re_lightning_strike] unless entity @e[type=minecraft:villager,distance=10..] run effect give @a[tag=re_lightning_strike] minecraft:poison 2 1 false
tellraw @a[tag=re_lightning_strike] ["",{"text":"Lady luck does not smile upon you today ","color":"red"},{"selector":"@s","color":"gold"}]

tag @a[tag=re_lightning_strike] remove re_lightning_strike