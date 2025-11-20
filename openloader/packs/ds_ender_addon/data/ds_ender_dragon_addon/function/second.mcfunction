#for heavier functions that don't have to be ran every single tick

execute as @e[tag=dseda_lifespan] run function ds_ender_dragon_addon:clear-temporals

schedule function ds_ender_dragon_addon:second 20t