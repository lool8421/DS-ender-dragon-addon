#ironic that ender dragon is geuninely the most seamless entity for this implementation

summon ender_dragon ~ ~ ~ {Tags:['dseda_enderman_pacify'],NoAI:1b} 
data modify entity @s AngryAt set from entity @e[type=ender_dragon,distance=..0.2,tag=dseda_enderman_pacify,limit=1] UUID
data modify entity @s AngerTime set value 1
kill @e[tag=dseda_enderman_pacify]
