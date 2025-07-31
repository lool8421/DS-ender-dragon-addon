
$scoreboard players set temp dseda_var $(level)

#                                              projectile damage per level ↓
execute store result storage minecraft:dseda_fireball_explosion damage int 2 run scoreboard players get temp dseda_var 

scoreboard players add temp dseda_var 6
#                                               explosion radius per level ↓
execute store result storage minecraft:dseda_fireball_explosion radius int 0.5 run scoreboard players get temp dseda_var

function ds_ender_dragon_addon:fireball-data/fireball-dmg with storage minecraft:dseda_fireball_explosion