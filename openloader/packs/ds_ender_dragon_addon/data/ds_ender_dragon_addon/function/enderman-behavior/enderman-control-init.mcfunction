execute if predicate \
{condition:"minecraft:entity_properties",entity:"this",predicate:{targeted_entity:{nbt:"{\"neoforge:attachments\":{\"dragonsurvival:dragon_handler\":{dragon_species:\"dragonsurvival:dseda_ender_dragon\"}}}"}}} \
unless predicate \
{condition:"minecraft:entity_properties",entity:"this",predicate:{targeted_entity:{nbt:"{Tags:['dseda_enderman_hostile']}"}}} \
run function ds_ender_dragon_addon:enderman-behavior/enderman-control