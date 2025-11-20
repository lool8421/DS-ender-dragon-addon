scoreboard players set temp dseda_var 0

execute store result score temp dseda_var run data get entity @s "neoforge:attachments"."dragonsurvival:magic_data".abilities."dragonsurvival:dseda_ender_dragon"."dragonsurvival:dseda_rejuvenate".level

#        base crystal detection range ↓
scoreboard players add temp dseda_var 10
#                                  crystal detection range per level ↓
execute store result storage minecraft:dseda_crystal_data radius int 1.5 run scoreboard players get temp dseda_var

#                                                 healing power ↓ (note: extremely powerful)
data modify storage minecraft:dseda_crystal_data heal set value 1


#no warning about no crystals in radius
scoreboard players set temp dseda_var 0

function ds_ender_dragon_addon:crystal/detect with storage minecraft:dseda_crystal_data