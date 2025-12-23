$execute unless score @s dseda_lifespan matches 1.. run scoreboard players set @s dseda_lifespan $(duration)

$particle minecraft:dragon_breath ~ ~ ~ $(particleradius) $(particleradius) $(particleradius) 0.01 $(density)

$execute as @e[type=!#ds_ender_dragon_addon:breath_immune,distance=..$(radius),nbt=!{Owner:$(owner)}] run damage @s $(damage) minecraft:dragon_breath by @p[nbt={UUID:$(owner)}]

$execute as @a[distance=..$(radius)] if predicate {"condition":"minecraft:random_chance","chance":0.2} if items entity @s weapon minecraft:glass_bottle run function ds_ender_dragon_addon:breath/bottle-breath