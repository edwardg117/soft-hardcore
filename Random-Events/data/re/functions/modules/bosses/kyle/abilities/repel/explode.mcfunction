# Sumons the creeper
execute at @e[tag=RE_Kyle,limit=1] run summon creeper ~ ~0.1 ~ {Silent:1b,Invulnerable:1b,PortalCooldown:1000000,NoAI:1b,ExplosionRadius:5b,Fuse:0,ignited:1b,Tags:["RE_Kyle_Repel"]}
schedule function re:modules/bosses/kyle/abilities/repel/end 2t