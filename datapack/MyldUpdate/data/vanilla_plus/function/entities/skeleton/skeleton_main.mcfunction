# エンティティ変換
# in Nether Frost
execute if entity @s[tag=!Done] if biome ~ ~ ~ #vanilla_plus:is_frost_biomes run function vanilla_plus:nether_frost/replace_stray

# in Diamond Forest
execute if entity @s[tag=!vpSummonedHorse] if biome ~ ~ ~ vanilla_plus:nether/diamond_forest run function vanilla_plus:diamond_forest/ride_skeleton_horse

# in Desert Caves