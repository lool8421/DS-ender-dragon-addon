$execute if entity @n[type=end_crystal,distance=..$(radius)] run function ds_ender_dragon_addon:crystal/heal with storage minecraft:dseda_crystal_data
$execute unless entity @n[type=end_crystal,distance=..$(radius)] if score temp dseda_var matches 1 run title @s actionbar {"text":"No crystals in range"}
