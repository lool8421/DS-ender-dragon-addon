$execute at @s as @e[type=!end_crystal,distance=..$(radius),nbt=!{Owner:$(OwnerUUID)},nbt=!{UUID:$(OwnerUUID)}] run damage @s $(damage) dragon_breath by @p[nbt={UUID:$(OwnerUUID)}]
$execute as @a[distance=..$(radius)] if items entity @s weapon.mainhand minecraft:glass_bottle run function ds_ender_dragon_addon:breath/bottle-breath
kill @s
