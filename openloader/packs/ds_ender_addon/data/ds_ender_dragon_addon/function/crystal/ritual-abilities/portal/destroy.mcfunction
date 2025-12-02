#handling forceloads so fill commands work properly and don't leave floating bedrock blocks due to chunk border interactions
#also trying to make sure that forceloads don't interfere with other forceload sources

execute store result score chunk1 dseda_var run forceload query ~-1 ~-1
execute store result score chunk2 dseda_var run forceload query ~-1 ~
execute store result score chunk3 dseda_var run forceload query ~-1 ~1
execute store result score chunk4 dseda_var run forceload query ~ ~-1
execute store result score chunk5 dseda_var run forceload query ~ ~
execute store result score chunk6 dseda_var run forceload query ~ ~1
execute store result score chunk7 dseda_var run forceload query ~1 ~-1
execute store result score chunk8 dseda_var run forceload query ~1 ~
execute store result score chunk9 dseda_var run forceload query ~1 ~1

forceload add ~-1 ~-1
forceload add ~-1 ~
forceload add ~-1 ~1
forceload add ~ ~-1
forceload add ~ ~
forceload add ~ ~1
forceload add ~1 ~-1
forceload add ~1 ~
forceload add ~1 ~1

fill ~-2 ~ ~-1 ~2 ~ ~1 air destroy
fill ~-1 ~ ~-2 ~1 ~ ~2 air destroy
playsound minecraft:block.end_portal.spawn block @a ~ ~ ~ 3 2
particle minecraft:reverse_portal ~ ~ ~ 1 0 1 2 1000 force

execute if score chunk1 dseda_var matches 0 run forceload remove ~-1 ~-1
execute if score chunk2 dseda_var matches 0 run forceload remove ~-1 ~
execute if score chunk3 dseda_var matches 0 run forceload remove ~-1 ~1
execute if score chunk4 dseda_var matches 0 run forceload remove ~ ~-1
execute if score chunk5 dseda_var matches 0 run forceload remove ~ ~
execute if score chunk6 dseda_var matches 0 run forceload remove ~ ~1
execute if score chunk7 dseda_var matches 0 run forceload remove ~1 ~-1
execute if score chunk8 dseda_var matches 0 run forceload remove ~1 ~
execute if score chunk9 dseda_var matches 0 run forceload remove ~1 ~1