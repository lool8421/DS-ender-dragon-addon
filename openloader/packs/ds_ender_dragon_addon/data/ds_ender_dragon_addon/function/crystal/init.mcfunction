
execute store result score temp dseda_var run dragon-ability query @s dragonsurvival:dseda_crystal_charge level

#                                  crystal detection range per level ↓
execute store result storage minecraft:dseda_crystal_data radius int 20 run scoreboard players get temp dseda_var


#display warning about no crystals in radius
scoreboard players set temp dseda_var 1

function ds_ender_dragon_addon:crystal/detect with storage minecraft:dseda_crystal_data