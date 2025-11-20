
scoreboard players set temp dseda_var 0

execute store result score temp dseda_var run data get entity @s "neoforge:attachments"."dragonsurvival:magic_data".abilities."dragonsurvival:dseda_ender_dragon"."dragonsurvival:dseda_crystal_charge".level



#                                  crystal detection range per level ↓
execute store result storage minecraft:dseda_crystal_data radius int 20 run scoreboard players get temp dseda_var

#                                          healing power per level ↓ (note: extremely powerful)
execute store result storage minecraft:dseda_crystal_data heal int 0.5 run scoreboard players get temp dseda_var

#display warning about no crystals in radius
scoreboard players set temp dseda_var 1

function ds_ender_dragon_addon:crystal/detect with storage minecraft:dseda_crystal_data