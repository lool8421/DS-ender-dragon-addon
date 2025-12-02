tag @s add dseda_performing_ritual
execute as @e[type=end_crystal,distance=..24,limit=4,sort=nearest] at @s facing entity @n[tag=dseda_performing_ritual] feet run function ds_ender_dragon_addon:crystal/ritual-abilities/animate-loop
tag @s remove dseda_performing_ritual
particle minecraft:witch ~ ~ ~ 0.7 0.1 0.7 0.5 250
particle minecraft:dragon_breath ~ ~ ~ 0.7 0.1 0.7 0.5 250
playsound minecraft:item.totem.use block @a ~ ~ ~ 2 0.1

