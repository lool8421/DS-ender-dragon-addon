scoreboard players set temp dseda_var 0

execute if predicate ds_ender_dragon_addon:targeting_ender_dragon_player on target \
unless score @s dseda_enderman_reputation matches 10.. run scoreboard players set temp dseda_var 1

execute if score temp dseda_var matches 1 run function ds_ender_dragon_addon:enderman-behavior/enderman-control