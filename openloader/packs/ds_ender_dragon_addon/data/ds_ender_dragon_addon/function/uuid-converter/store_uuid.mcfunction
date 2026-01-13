data modify storage dseda_uuid_converter:main in set from entity @s UUID
execute store result score @s dseda_uuid_converter.uuid.0 run data get storage dseda_uuid_converter:main in[0]
execute store result score @s dseda_uuid_converter.uuid.1 run data get storage dseda_uuid_converter:main in[1]
execute store result score @s dseda_uuid_converter.uuid.2 run data get storage dseda_uuid_converter:main in[2]
execute store result score @s dseda_uuid_converter.uuid.3 run data get storage dseda_uuid_converter:main in[3]

