summon marker ~ ~ ~ {Tags:['dseda_portal','dseda_lifespan']}
data modify entity @e[type=marker,distance=..0.1,tag=dseda_portal,limit=1,sort=nearest] Rotation[0] set from entity @s Rotation[0]
execute as @e[type=marker,distance=..0.1,tag=dseda_portal,limit=1,sort=nearest] at @s run function ds_ender_dragon_addon:crystal/ritual-abilities/portal/scan