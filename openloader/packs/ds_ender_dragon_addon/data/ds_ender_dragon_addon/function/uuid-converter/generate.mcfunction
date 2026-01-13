data merge storage dseda_uuid_converter:temp {0:0,1:0,2:0,3:0,4:0,5:0,6:0,7:0,8:0,9:0,a:0,b:0,c:0,d:0,e:0,f:0}
execute unless score @s dseda_uuid_converter.uuid.0 matches -2147483648.. run function ds_ender_dragon_addon:uuid-converter/store_uuid

execute store result score 0= dseda_uuid_converter.main run scoreboard players operation 1= dseda_uuid_converter.main = @s dseda_uuid_converter.uuid.0
execute store result storage dseda_uuid_converter:temp 0 int 1 run scoreboard players operation 0= dseda_uuid_converter.main %= 256 num
execute store result score 2= dseda_uuid_converter.main run scoreboard players operation 1= dseda_uuid_converter.main /= 256 num
execute store result storage dseda_uuid_converter:temp 1 int 1 run scoreboard players operation 1= dseda_uuid_converter.main %= 256 num
execute store result score 3= dseda_uuid_converter.main run scoreboard players operation 2= dseda_uuid_converter.main /= 256 num
execute store result storage dseda_uuid_converter:temp 2 int 1 run scoreboard players operation 2= dseda_uuid_converter.main %= 256 num
execute store result storage dseda_uuid_converter:temp 3 int 1 run scoreboard players operation 3= dseda_uuid_converter.main /= 256 num

execute store result score 0= dseda_uuid_converter.main run scoreboard players operation 1= dseda_uuid_converter.main = @s dseda_uuid_converter.uuid.1
execute store result storage dseda_uuid_converter:temp 4 int 1 run scoreboard players operation 0= dseda_uuid_converter.main %= 256 num
execute store result score 2= dseda_uuid_converter.main run scoreboard players operation 1= dseda_uuid_converter.main /= 256 num
execute store result storage dseda_uuid_converter:temp 5 int 1 run scoreboard players operation 1= dseda_uuid_converter.main %= 256 num
execute store result score 3= dseda_uuid_converter.main run scoreboard players operation 2= dseda_uuid_converter.main /= 256 num
execute store result storage dseda_uuid_converter:temp 6 int 1 run scoreboard players operation 2= dseda_uuid_converter.main %= 256 num
execute store result storage dseda_uuid_converter:temp 7 int 1 run scoreboard players operation 3= dseda_uuid_converter.main /= 256 num

execute store result score 0= dseda_uuid_converter.main run scoreboard players operation 1= dseda_uuid_converter.main = @s dseda_uuid_converter.uuid.2
execute store result storage dseda_uuid_converter:temp 8 int 1 run scoreboard players operation 0= dseda_uuid_converter.main %= 256 num
execute store result score 2= dseda_uuid_converter.main run scoreboard players operation 1= dseda_uuid_converter.main /= 256 num
execute store result storage dseda_uuid_converter:temp 9 int 1 run scoreboard players operation 1= dseda_uuid_converter.main %= 256 num
execute store result score 3= dseda_uuid_converter.main run scoreboard players operation 2= dseda_uuid_converter.main /= 256 num
execute store result storage dseda_uuid_converter:temp a int 1 run scoreboard players operation 2= dseda_uuid_converter.main %= 256 num
execute store result storage dseda_uuid_converter:temp b int 1 run scoreboard players operation 3= dseda_uuid_converter.main /= 256 num
execute store result score 0= dseda_uuid_converter.main run scoreboard players operation 1= dseda_uuid_converter.main = @s dseda_uuid_converter.uuid.3
execute store result storage dseda_uuid_converter:temp c int 1 run scoreboard players operation 0= dseda_uuid_converter.main %= 256 num
execute store result score 2= dseda_uuid_converter.main run scoreboard players operation 1= dseda_uuid_converter.main /= 256 num
execute store result storage dseda_uuid_converter:temp d int 1 run scoreboard players operation 1= dseda_uuid_converter.main %= 256 num
execute store result score 3= dseda_uuid_converter.main run scoreboard players operation 2= dseda_uuid_converter.main /= 256 num
execute store result storage dseda_uuid_converter:temp e int 1 run scoreboard players operation 2= dseda_uuid_converter.main %= 256 num
execute store result storage dseda_uuid_converter:temp f int 1 run scoreboard players operation 3= dseda_uuid_converter.main /= 256 num

function ds_ender_dragon_addon:uuid-converter/get_hexes with storage dseda_uuid_converter:temp
function ds_ender_dragon_addon:uuid-converter/concat_uuid with storage dseda_uuid_converter:temp

#thanks to https://github.com/gibbsly/gu for the implementation
#technically this addon acts as a library now - it can be used by other datapacks to convert UUIDs to strings
#usage:
#1. load the datapack
#2. run function ds_ender_dragon_addon:uuid-converter/generate to convert the UUID of the executing entity
#3. the resulting string will be stored in storage dseda_uuid_converter:main out, you can store it anywhere you want
#4. use that string in macros to heavily optimize entity lookup