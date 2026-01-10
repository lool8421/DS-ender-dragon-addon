particle minecraft:enchant ~ ~ ~ 0.1 0.1 0.1 0.5 25 normal
particle minecraft:dragon_breath ~ ~ ~ 0.1 0.1 0.1 0.03 20 normal
execute unless entity @e[type=player,distance=..1.5] unless entity @e[type=marker,distance=..1,tag=dseda_portal] positioned ^ ^ ^0.5 run function ds_ender_dragon_addon:crystal/ritual-abilities/animate-loop