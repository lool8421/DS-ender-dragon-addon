#for functions that don't have to be ran every single tick

#killing useless entities that are supposed to despawn
execute as @e[tag=dseda_lifespan] run function ds_ender_dragon_addon:clear-temporals

#updating nearby crystal count
scoreboard players set @a dseda_nearby_crystals 0
execute as @e[type=end_crystal] at @s run scoreboard players add @a[distance=..20] dseda_nearby_crystals 1 

#making endermen significantly less hostile
execute as @e[type=enderman] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{targeted_entity:{type:"minecraft:player",nbt:"{\"neoforge:attachments\":{\"dragonsurvival:dragon_handler\":{dragon_species:\"dragonsurvival:dseda_ender_dragon\"}}}"}}} at @s run function ds_ender_dragon_addon:enderman-control

execute as @e[type=marker,tag=dseda_portal] at @s run function ds_ender_dragon_addon:crystal/ritual-abilities/portal/loop


schedule function ds_ender_dragon_addon:second 20t