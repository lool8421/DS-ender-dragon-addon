$execute at @s as @e[type=!#ds_ender_dragon_addon:breath_immune,distance=..$(radius),nbt=!{Owner:$(OwnerUUID)},nbt=!{UUID:$(OwnerUUID)}] run damage @s $(damage) dragon_breath by $(OwnerUUIDstring)
$execute as @a[distance=..$(radius)] if items entity @s weapon.mainhand minecraft:glass_bottle run function ds_ender_dragon_addon:breath/bottle-breath

$kill @e[type=area_effect_cloud,distance=..10,nbt={Owner:$(OwnerUUID),Duration:600,Particle:{type:"minecraft:dragon_breath"},RadiusPerTick:0.006666667f,potion_contents:{custom_effects:[{amplifier:1b,duration:1,id:"minecraft:instant_damage"}]}}]
$summon marker ~ ~-1 ~ {Tags:['dseda_damage_cloud','dseda_lifespan'],data:{owner:$(OwnerUUID),damage:$(clouddmg),radius:$(cloudradius),duration:$(cloudduration),density:$(clouddensity),particleradius:$(particleradius),OwnerUUIDstring:"$(OwnerUUIDstring)"}}
kill @s
