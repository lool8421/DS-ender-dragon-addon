

scoreboard players set temp dseda_var 0
execute store result score temp dseda_var run dragon-ability query @s dragonsurvival:dseda_ender_dragon_fireball level


#                projectile count per level (rounded down) ↓
execute store result storage dseda_fireball_data level int 1 run scoreboard players get temp dseda_var 
#                               projectile spread per level ↓
execute store result storage dseda_fireball_data spread int 1.5 run scoreboard players get temp dseda_var 

# x100 is only for precision purposes, it will be divided later on, you can imagine it as a percentage, it exists purely for the sake of making damage affected by the ability damage attribute
execute store result storage dseda_fireball_data multiplier double 1 run attribute @s dragonsurvival:dragon_ability_damage get 100

data modify storage dseda_fireball_data OwnerUUID set from entity @s UUID

execute if score temp dseda_var matches 1.. run function ds_ender_dragon_addon:fireball-data/fireball-fire with storage dseda_fireball_data
