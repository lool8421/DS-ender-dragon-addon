summon marker ^ ^ ^1 {Tags:['dseda_direction']}

#this marker exists purely for optimization purposes to not load player NBT 3 times, which is already massive due to DS
summon marker ~ ~ ~ {Tags:['dseda_playerpos']}

execute store result score x1 dseda_var run data get entity @e[type=marker,distance=..2,limit=1,tag=dseda_direction] Pos[0] 50
execute store result score y1 dseda_var run data get entity @e[type=marker,distance=..2,limit=1,tag=dseda_direction] Pos[1] 50
execute store result score z1 dseda_var run data get entity @e[type=marker,distance=..2,limit=1,tag=dseda_direction] Pos[2] 50

execute store result score x2 dseda_var run data get entity @e[type=marker,distance=..0.1,limit=1,tag=dseda_playerpos] Pos[0] 50
execute store result score y2 dseda_var run data get entity @e[type=marker,distance=..0.1,limit=1,tag=dseda_playerpos] Pos[1] 50
execute store result score z2 dseda_var run data get entity @e[type=marker,distance=..0.1,limit=1,tag=dseda_playerpos] Pos[2] 50

$execute store result score x3 dseda_var run random value -$(spread)..$(spread)
$execute store result score y3 dseda_var run random value -$(spread)..$(spread)
$execute store result score z3 dseda_var run random value -$(spread)..$(spread)

scoreboard players operation x1 dseda_var -= x2 dseda_var
scoreboard players operation y1 dseda_var -= y2 dseda_var
scoreboard players operation z1 dseda_var -= z2 dseda_var

scoreboard players operation x1 dseda_var += x3 dseda_var
scoreboard players operation y1 dseda_var += y3 dseda_var
scoreboard players operation z1 dseda_var += z3 dseda_var

execute store result storage minecraft:dseda_fireball_data dx double 0.03 run scoreboard players get x1 dseda_var
execute store result storage minecraft:dseda_fireball_data dy double 0.03 run scoreboard players get y1 dseda_var
execute store result storage minecraft:dseda_fireball_data dz double 0.03 run scoreboard players get z1 dseda_var

function ds_ender_dragon_addon:fireball-data/fireball-summon with storage dseda_fireball_data

kill @e[type=marker,tag=dseda_direction]
kill @e[type=marker,tag=dseda_playerpos]

scoreboard players remove temp dseda_var 1
execute if score temp dseda_var matches 1.. run function ds_ender_dragon_addon:fireball-data/fireball-fire with storage dseda_fireball_data