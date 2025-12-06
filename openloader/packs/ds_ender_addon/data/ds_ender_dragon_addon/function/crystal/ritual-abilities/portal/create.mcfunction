fill ~-2 ~ ~-1 ~2 ~ ~1 bedrock
fill ~-1 ~ ~-2 ~1 ~ ~2 bedrock
fill ~1 ~ ~1 ~-1 ~ ~-1 end_portal
scoreboard players set @s dseda_lifespan 31

playsound minecraft:block.end_portal.spawn block @a ~ ~ ~ 1 

execute positioned ~ ~1 ~ run function ds_ender_dragon_addon:crystal/ritual-abilities/animate-start
