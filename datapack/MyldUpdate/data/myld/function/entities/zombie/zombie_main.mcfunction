# エンティティ改造
# in Nether Frost
# spawn Frozen Zombie
execute if entity @s[tag=!FrozenZombie] if biome ~ ~ ~ #myld:is_frost_biomes run function myld:entities/zombie/frozen_zombie/spawned

# in Jungle
# spawn Jungle Zombie
execute if entity @s[tag=!changeDone] if biome ~ ~ ~ #minecraft:is_jungle run function myld:entities/zombie/jungle_zombie/spawned

# in Desert
# spawn Husk
execute if entity @s[tag=!Done] if biome ~ ~ ~ myld:desert_cave run function myld:entities/zombie/desert_caves/replace_husk

# 各行動
# Frozen Zombie
execute as @s[tag=FrozenZombie] at @s run function myld:entities/zombie/frozen_zombie/snowball/main