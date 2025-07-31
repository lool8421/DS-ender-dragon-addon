execute if entity @s[level=0..29] if entity @n[type=end_crystal,distance=..20] run function ds_ender_dragon_addon:crystal/heal 
execute if entity @s[level=0..29] unless entity @n[type=end_crystal,distance=..20] run title @s actionbar {"text":"No crystals in range"}
execute if entity @s[level=30..59] if entity @n[type=end_crystal,distance=..40] run function ds_ender_dragon_addon:crystal/heal 
execute if entity @s[level=30..59] unless entity @n[type=end_crystal,distance=..40] run title @s actionbar {"text":"No crystals in range"}
execute if entity @s[level=60..99] if entity @n[type=end_crystal,distance=..60] run function ds_ender_dragon_addon:crystal/heal 
execute if entity @s[level=60..99] unless entity @n[type=end_crystal,distance=..60] run title @s actionbar {"text":"No crystals in range"}
execute if entity @s[level=100..] if entity @n[type=end_crystal,distance=..80] run function ds_ender_dragon_addon:crystal/heal 
execute if entity @s[level=100..] unless entity @n[type=end_crystal,distance=..80] run title @s actionbar {"text":"No crystals in range"}
