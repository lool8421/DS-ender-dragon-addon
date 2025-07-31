execute unless score @s dseda_lifespan matches 1.. run scoreboard players set @s dseda_lifespan 80
scoreboard players remove @s dseda_lifespan 1
execute if score @s dseda_lifespan matches ..1 run kill @s