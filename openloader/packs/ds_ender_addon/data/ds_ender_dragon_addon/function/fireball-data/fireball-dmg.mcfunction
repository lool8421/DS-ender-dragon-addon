$execute at @s as @e[type=!#ds_ender_dragon_addon:breath_immune,distance=..$(radius),nbt=!{Owner:$(OwnerUUID)},nbt=!{UUID:$(OwnerUUID)}] run damage @s $(damage) dragon_breath by @p[nbt={UUID:$(OwnerUUID)}]
$execute as @a[distance=..$(radius)] if items entity @s weapon.mainhand minecraft:glass_bottle run function ds_ender_dragon_addon:breath/bottle-breath

$kill @e[type=area_effect_cloud,distance=..10,nbt={Owner:$(OwnerUUID)}]
$summon marker ~ ~ ~ {Tags:['dseda_damage_cloud','dseda_lifespan'],data:{owner:$(OwnerUUID),damage:$(clouddmg),radius:$(cloudradius),duration:$(cloudduration),density:$(clouddensity),particleradius:$(particleradius)}}

kill @s
