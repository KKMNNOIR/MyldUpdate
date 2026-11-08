# エンティティ改造

# in Jungle
# spawn Jungle Zombie
execute if entity @s[tag=!changeDone] if biome ~ ~ ~ #minecraft:is_jungle run function myld:entities/zombie/jungle_zombie/spawned

# in Desert
# spawn Husk
execute if entity @s[tag=!Done] if biome ~ ~ ~ myld:overworld/desert_caves run function myld:entities/zombie/desert_caves/replace_husk

# 各行動