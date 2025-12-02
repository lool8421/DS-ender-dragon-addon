item modify entity @s weapon.mainhand ds_ender_dragon_addon:dseda-reduce-by-1
item modify entity @s weapon.offhand ds_ender_dragon_addon:dseda-reduce-by-1

give @s dragon_egg
loot give @s loot minecraft:entities/ender_dragon
give @s dragon_head
execute if predicate {"condition": "minecraft:random_chance","chance": 0.25} run give @s elytra

function ds_ender_dragon_addon:crystal/ritual-abilities/conjure/de-dragon-heart-drop

function ds_ender_dragon_addon:crystal/ritual-abilities/animate-start
xp add @s -10 levels
