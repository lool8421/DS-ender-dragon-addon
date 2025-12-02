scoreboard players set @s dseda_lifespan 1
tp ^ ^ ^3

scoreboard players set temp dseda_var 0

execute at @s \
if block ~-2 ~ ~-2 air \
if block ~-2 ~ ~-1 air \
if block ~-2 ~ ~ air \
if block ~-2 ~ ~1 air \
if block ~-2 ~ ~2 air \
if block ~-1 ~ ~-2 air \
if block ~-1 ~ ~-1 air \
if block ~-1 ~ ~ air \
if block ~-1 ~ ~1 air \
if block ~-1 ~ ~2 air \
if block ~ ~ ~-2 air \
if block ~ ~ ~-1 air \
if block ~ ~ ~ air \
if block ~ ~ ~1 air \
if block ~ ~ ~2 air \
if block ~1 ~ ~-2 air \
if block ~1 ~ ~-1 air \
if block ~1 ~ ~ air \
if block ~1 ~ ~1 air \
if block ~1 ~ ~2 air \
if block ~2 ~ ~-2 air \
if block ~2 ~ ~-1 air \
if block ~2 ~ ~ air \
if block ~2 ~ ~1 air \
if block ~2 ~ ~2 air \
run scoreboard players set temp dseda_var 1

execute if score temp dseda_var matches 0 run title @p actionbar {"text":"Failed to create a portal - the ground isn't flat","color":"red"}
execute if score temp dseda_var matches 1 at @s run function ds_ender_dragon_addon:crystal/ritual-abilities/portal/create