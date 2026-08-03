# エンティティ改造
# in Nether Frost
# spawn Frozen Zombie
execute if entity @s[tag=!FrozenZombie] if biome ~ ~ ~ #vanilla_plus:is_frost_biomes run function vanilla_plus:entities/zombie/frozen_zombie/spawned

# in Jungle
# spawn Jungle Zombie
execute if entity @s[tag=!changeDone] if biome ~ ~ ~ #minecraft:is_jungle run function vanilla_plus:entities/zombie/jungle_zombie/spawned

# in Desert
# spawn Husk
execute if entity @s[tag=!Done] if biome ~ ~ ~ vanilla_plus:desert_cave run function vanilla_plus:entities/zombie/desert_caves/replace_husk

# 各行動
# Frozen Zombie
execute as @s[tag=FrozenZombie] at @s run function vanilla_plus:entities/zombie/frozen_zombie/snowball/main