execute as @e[type=marker,tag=dseda_fireball_dmg] at @s unless entity @e[type=dragon_fireball,distance=..2] run function ds_ender_dragon_addon:fireball-data/fireball-dmg-math with entity @s data.dseda_tags

