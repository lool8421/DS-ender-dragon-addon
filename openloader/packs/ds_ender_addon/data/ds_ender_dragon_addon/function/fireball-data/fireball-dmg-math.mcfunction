
$scoreboard players set temp dseda_var $(level)
$scoreboard players set temp2 dseda_var $(multiplier)
scoreboard players operation temp dseda_var *= temp2 dseda_var

#                                              projectile damage per level ↓ (affected by multiplier, which is x100 at base, hence why it's 100x lower)
execute store result storage minecraft:dseda_fireball_explosion damage int 0.02 run scoreboard players get temp dseda_var 

$scoreboard players set temp dseda_var $(level)
scoreboard players add temp dseda_var 6
#                                               explosion radius per level ↓
execute store result storage minecraft:dseda_fireball_explosion radius int 0.5 run scoreboard players get temp dseda_var

function ds_ender_dragon_addon:fireball-data/fireball-dmg with storage minecraft:dseda_fireball_explosion