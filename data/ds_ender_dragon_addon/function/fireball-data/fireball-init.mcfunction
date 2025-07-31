
scoreboard players set @s dseda_fired 60

playsound minecraft:entity.ender_dragon.shoot

scoreboard players set temp dseda_var 0
execute store result score temp dseda_var run data get entity @s "neoforge:attachments"."dragonsurvival:magic_data".abilities."dragonsurvival:dseda_ender_dragon"."dragonsurvival:dseda_ender_dragon_fireball".level

#                projectile count per level (rounded down) ↓
execute store result storage dseda_fireball_data level int 1 run scoreboard players get temp dseda_var 
#                               projectile spread per level ↓
execute store result storage dseda_fireball_data spread int 1.5 run scoreboard players get temp dseda_var 

execute if score temp dseda_var matches 1.. run function ds_ender_dragon_addon:fireball-data/fireball-fire with storage dseda_fireball_data
