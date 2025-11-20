#entities will survive 4-5s when assigned a 'dseda_lifespan' tag
execute unless score @s dseda_lifespan matches 1.. run scoreboard players set @s dseda_lifespan 4
scoreboard players remove @s dseda_lifespan 1
execute if score @s dseda_lifespan matches ..0 run kill @s