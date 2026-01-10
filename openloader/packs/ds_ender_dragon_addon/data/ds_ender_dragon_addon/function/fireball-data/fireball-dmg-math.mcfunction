
#explosion damage
$scoreboard players set temp dseda_var $(level)
scoreboard players add temp dseda_var 2
$scoreboard players set temp2 dseda_var $(multiplier)
scoreboard players operation temp dseda_var *= temp2 dseda_var
execute store result storage minecraft:dseda_fireball_explosion damage double 0.01 run scoreboard players get temp dseda_var 


#explosion radius
$scoreboard players set temp dseda_var $(level)
scoreboard players add temp dseda_var 6
execute store result storage minecraft:dseda_fireball_explosion radius double 0.5 run scoreboard players get temp dseda_var


#cloud duration
$scoreboard players set temp dseda_var $(level)
scoreboard players add temp dseda_var 4
execute store result storage minecraft:dseda_fireball_explosion cloudduration int 1 run scoreboard players get temp dseda_var


#cloud damage
$scoreboard players set temp dseda_var $(level)
scoreboard players add temp dseda_var 2
$scoreboard players set temp2 dseda_var $(multiplier)
scoreboard players operation temp dseda_var *= temp2 dseda_var
execute store result storage minecraft:dseda_fireball_explosion clouddmg double 0.005 run scoreboard players get temp dseda_var


#cloud and particle radius
$scoreboard players set temp dseda_var $(level)
scoreboard players add temp dseda_var 6
execute store result storage minecraft:dseda_fireball_explosion cloudradius double 0.5 run scoreboard players get temp dseda_var
execute store result storage minecraft:dseda_fireball_explosion particleradius double 0.2 run scoreboard players get temp dseda_var

#cloud particle density (visual)
$scoreboard players set temp dseda_var $(level)
scoreboard players add temp dseda_var 10
execute store result storage minecraft:dseda_fireball_explosion clouddensity int 8 run scoreboard players get temp dseda_var


#explosion owner
$data modify storage minecraft:dseda_fireball_explosion OwnerUUID set value $(OwnerUUID)



function ds_ender_dragon_addon:fireball-data/fireball-dmg with storage minecraft:dseda_fireball_explosion