effect give @s saturation 1 0 true
execute if entity @s[level=30..59] run effect give @s regeneration 1 0 true
execute if entity @s[level=60..99] run effect give @s regeneration 1 2 true
execute if entity @s[level=100..] run effect give @s instant_health 1 0 true

particle dragonsurvival:glow ~ ~ ~ 1 1 1 0.1 20
execute anchored eyes facing entity @n[type=minecraft:end_crystal] eyes positioned ^ ^ ^3 run function ds_ender_dragon_addon:crystal/animate