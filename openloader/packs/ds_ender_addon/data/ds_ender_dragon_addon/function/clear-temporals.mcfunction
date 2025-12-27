
#entities will survive 4-5s when assigned a 'dseda_lifespan' tag, unless assigned a score beforehand
execute unless score @s dseda_lifespan matches 1.. run scoreboard players set @s dseda_lifespan 4
scoreboard players remove @s dseda_lifespan 1
execute if score @s dseda_lifespan matches ..0 run kill @s

#some thing for portal markers so those will disappear 
execute if entity @s[type=marker,tag=dseda_portal] if score @s dseda_lifespan matches 1 at @s run function ds_ender_dragon_addon:crystal/ritual-abilities/portal/destroy
