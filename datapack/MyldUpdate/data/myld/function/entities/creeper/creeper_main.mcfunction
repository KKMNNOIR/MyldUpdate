# エンティティ変換

# in Nether Frost
execute if entity @s[tag=IcyCreeper] if biome ~ ~ ~ #vanilla_plus:is_frost_biomes run tag @s add IcyCreeper

# 各エンティティの行動
execute as @s[tag=IcyCreeper] run function vanilla_plus:nether_frost/icy_creeper/main