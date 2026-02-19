#for functions that don't have to be ran every single tick

#if the loop gets stopped, it will act as a failsafe to turn it back on
scoreboard players set second_function_active dseda_var 40


#updating nearby crystal count
scoreboard players set @a dseda_nearby_crystals 0
execute as @e[type=end_crystal] at @s run scoreboard players add @a[distance=..20] dseda_nearby_crystals 1 

#portal stuff
execute as @e[type=marker,tag=dseda_portal] at @s run function ds_ender_dragon_addon:crystal/ritual-abilities/portal/loop

#making endermen significantly less hostile unless you kill too many of them
execute as @e[type=enderman] at @s run function ds_ender_dragon_addon:enderman-behavior/enderman-control-init
scoreboard players add @a dseda_reputation_time 1
execute as @a[scores={dseda_reputation_time=300..}] run function ds_ender_dragon_addon:enderman-behavior/forgive

#cloud stuff
execute as @e[type=marker,tag=dseda_damage_cloud] at @s run function ds_ender_dragon_addon:fireball-data/cloud-dmg with entity @s data

#killing useless entities that are supposed to despawn
execute as @e[tag=dseda_lifespan] run function ds_ender_dragon_addon:clear-temporals

schedule function ds_ender_dragon_addon:second 20t