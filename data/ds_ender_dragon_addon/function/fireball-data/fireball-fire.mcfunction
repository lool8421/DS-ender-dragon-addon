execute anchored eyes run summon marker ^ ^ ^2 {Tags:['dseda_direction']}

$execute anchored eyes run summon minecraft:dragon_fireball ^ ^ ^1 {Tags:['dseda_lifespan','dseda_newball'],Passengers:[{id:"minecraft:marker",Tags:['dseda_lifespan','dseda_fireball_dmg'],data:{dseda_tags:{level:$(level)}}}]}

execute store result score x1 dseda_var run data get entity @e[type=minecraft:marker,tag=dseda_direction,limit=1] Pos[0] 50
execute store result score y1 dseda_var run data get entity @e[type=minecraft:marker,tag=dseda_direction,limit=1] Pos[1] 50
execute store result score z1 dseda_var run data get entity @e[type=minecraft:marker,tag=dseda_direction,limit=1] Pos[2] 50

execute store result score x2 dseda_var run data get entity @e[type=minecraft:dragon_fireball,tag=dseda_newball,limit=1] Pos[0] 50
execute store result score y2 dseda_var run data get entity @e[type=minecraft:dragon_fireball,tag=dseda_newball,limit=1] Pos[1] 50
execute store result score z2 dseda_var run data get entity @e[type=minecraft:dragon_fireball,tag=dseda_newball,limit=1] Pos[2] 50

$execute store result score x3 dseda_var run random value -$(spread)..$(spread)
$execute store result score y3 dseda_var run random value -$(spread)..$(spread)
$execute store result score z3 dseda_var run random value -$(spread)..$(spread)

scoreboard players operation x1 dseda_var -= x2 dseda_var
scoreboard players operation y1 dseda_var -= y2 dseda_var
scoreboard players operation z1 dseda_var -= z2 dseda_var

scoreboard players operation x1 dseda_var += x3 dseda_var
scoreboard players operation y1 dseda_var += y3 dseda_var
scoreboard players operation z1 dseda_var += z3 dseda_var

execute store result entity @e[type=minecraft:dragon_fireball,tag=dseda_newball,limit=1] Motion[0] double 0.02 run scoreboard players get x1 dseda_var
execute store result entity @e[type=minecraft:dragon_fireball,tag=dseda_newball,limit=1] Motion[1] double 0.02 run scoreboard players get y1 dseda_var
execute store result entity @e[type=minecraft:dragon_fireball,tag=dseda_newball,limit=1] Motion[2] double 0.02 run scoreboard players get z1 dseda_var

tag @e[type=minecraft:dragon_fireball] remove dseda_newball
kill @e[tag=dseda_direction]
scoreboard players remove temp dseda_var 1

execute if score temp dseda_var matches 1.. run function ds_ender_dragon_addon:fireball-data/fireball-fire with storage dseda_fireball_data