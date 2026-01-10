
#forgiving endermen over time
scoreboard players set @s dseda_reputation_time 0
scoreboard players remove @s dseda_enderman_reputation 1
execute if score @s dseda_enderman_reputation matches ..0 run scoreboard players set @s dseda_enderman_reputation 0
execute if score @s dseda_enderman_reputation matches ..9 run tag @s remove dseda_enderman_hostile

execute if score @s dseda_enderman_reputation matches 9 run title @s actionbar {"translate":"ds_ender_dragon_addon.enderman_reputation_peace","color":"green"}
execute if score @s dseda_enderman_reputation matches 9 run scoreboard players remove @s dseda_enderman_reputation 1

