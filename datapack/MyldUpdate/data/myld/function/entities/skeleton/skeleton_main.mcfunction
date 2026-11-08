# エンティティ変換

# in Diamond Forest
execute unless entity @s[tag=vpSummonedHorse] if biome ~ ~ ~ myld:nether/diamond_forest run function myld:diamond_forest/ride_skeleton_horse

# in Desert Caves
execute unless entity @s[tag=Done] if biome ~ ~ ~ myld:overworld/desert_caves run function myld:entities/skeleton/replace_parched_init