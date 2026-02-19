advancement revoke @s only ds_ender_dragon_addon:kill-enderman
#going above 10 means you lose peaceful status with endermen
scoreboard players add @s dseda_enderman_reputation 1
execute if score @s dseda_enderman_reputation matches 15.. run scoreboard players set @s dseda_enderman_reputation 15
execute if score @s dseda_enderman_reputation matches 10.. run tag @s add dseda_enderman_hostile

execute if score @s dseda_enderman_reputation matches 7..9 run return run title @s actionbar {"translate":"ds_ender_dragon_addon.enderman_reputation_warning","color":"yellow"}
execute if score @s dseda_enderman_reputation matches 10 run title @s actionbar {"translate":"ds_ender_dragon_addon.enderman_reputation_warning_2","color":"red"}