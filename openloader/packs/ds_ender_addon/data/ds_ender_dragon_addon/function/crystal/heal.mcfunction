$effect give @s saturation 1 $(heal) true
$effect give @s regeneration 1 $(heal) true

particle dragonsurvival:glow ~ ~ ~ 1 1 1 0.1 20
execute anchored eyes facing entity @n[type=minecraft:end_crystal] eyes positioned ^ ^ ^2 run function ds_ender_dragon_addon:crystal/animate