# エンティティ変換
# in Nether Frost
execute unless entity @s[tag=Done] if biome ~ ~ ~ #myld:is_frost_biomes run function myld:nether_frost/replace_stray

# in Diamond Forest
execute unless entity @s[tag=vpSummonedHorse] if biome ~ ~ ~ myld:nether/diamond_forest run function myld:diamond_forest/ride_skeleton_horse

# in Desert Caves
execute unless entity @s[tag=Done] if biome ~ ~ ~ myld:desert_cave run function myld:entities/skeleton/replace_parched_init