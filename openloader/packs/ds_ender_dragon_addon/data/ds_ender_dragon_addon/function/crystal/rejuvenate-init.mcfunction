
execute store result score temp dseda_var run dragon-ability query @s dragonsurvival:dseda_rejuvenate level


#                                  crystal detection range per level ↓
execute store result storage minecraft:dseda_crystal_data radius int 1 run scoreboard players get temp dseda_var
#        base crystal detection range ↓
scoreboard players add temp dseda_var 20

#no warning about no crystals in radius
scoreboard players set temp dseda_var 0

function ds_ender_dragon_addon:crystal/detect with storage minecraft:dseda_crystal_data