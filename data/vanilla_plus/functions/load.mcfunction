##
 # load.mcfunction
 # 
 #
 # Created by .
##
scoreboard objectives add SnowballTimer dummy
scoreboard objectives add PosIX dummy
scoreboard objectives add PosIY dummy
scoreboard objectives add PosIZ dummy
scoreboard objectives add PosFX dummy
scoreboard objectives add PosFY dummy
scoreboard objectives add PosFZ dummy
scoreboard objectives add usedWitherSnake minecraft.used:minecraft.bow
team add NameHidden

# NameHidden team hide Name tag
team modify NameHidden nametagVisibility never

# Set storage for Nether Fortress spawn monster data

data merge storage vanilla_plus:soul_sand_valley_spawn_data {SpawnerData:[{SpawnCount:3,SpawnData:{entity:{id:"minecraft:blaze"}}},{SpawnCount:2,SpawnData:{entity:{id:"minecraft:blaze"}}},{SpawnCount:4,SpawnData:{entity:{id:"minecraft:zombified_piglin",HandItems:[{id:"minecraft:golden_sword",Count:1b},{}]}},SpawnPotentials:[{weight:1,data:{entity:{id:"minecraft:zombified_piglin",HandItems:[{id:"minecraft:golden_sword",Count:1b},{}]}}},{weight:1,data:{entity:{id:"minecraft:zombified_piglin",HandItems:[{},{id:"minecraft:golden_sword",Count:1b}]}}}]},{SpawnCount:4,SpawnData:{entity:{id:"minecraft:wither_skeleton",HandItems:[{id:"minecraft:stone_sword",Count:1b},{}]}},SpawnPotentials:[{weight:1,data:{entity:{id:"minecraft:wither_skeleton",HandItems:[{id:"minecraft:stone_sword",Count:1b},{}]}}},{weight:1,data:{entity:{id:"minecraft:wither_skeleton",HandItems:[{},{id:"minecraft:stone_sword",Count:1b}]}}}]},{SpawnCount:4,Delay:0,SpawnData:{entity:{id:"minecraft:magma_cube",Size:1}},SpawnPotentials:[{weight:1,data:{entity:{id:"minecraft:magma_cube",Size:1}}},{weight:1,data:{entity:{id:"minecraft:magma_cube",Size:2}}},{weight:1,data:{entity:{id:"minecraft:magma_cube",Size:4}}}]},{SpawnCount:5,SpawnData:{entity:{id:"minecraft:skeleton",HandItems:[{id:"minecraft:bow",Count:1b},{}]}},SpawnPotentials:[{weight:1,data:{entity:{id:"minecraft:skeleton",HandItems:[{id:"minecraft:bow",Count:1b},{}]}}},{weight:1,data:{entity:{id:"minecraft:skeleton",HandItems:[{id:"minecraft:stone_sword",Count:1b},{}]}}}]},{SpawnCount:1,SpawnData:{entity:{id:"minecraft:ghast",ExplosionPower:1}}},{SpawnCount:4,SpawnData:{entity:{id:"minecraft:enderman"}}}]}

# data modify storage vanilla_plus:soul_sand_valley_spawn_data SpawnerData append value {CustomDisplayTile:1b,SpawnCount:3,Delay:0,RequiredPlayerRange:104,Tags:["FortressMonsterSpawner"],DisplayState:{Name:"minecraft:air"},SpawnData:{entity:{id:"minecraft:blaze"}}}

# data modify storage vanilla_plus:soul_sand_valley_spawn_data SpawnerData append value {CustomDisplayTile:1b,SpawnCount:2,Delay:0,RequiredPlayerRange:104,Tags:["FortressMonsterSpawner"],DisplayState:{Name:"minecraft:air"},SpawnData:{entity:{id:"minecraft:blaze"}}}

# data modify storage vanilla_plus:soul_sand_valley_spawn_data SpawnerData append value {CustomDisplayTile:1b,SpawnCount:4,Delay:0,RequiredPlayerRange:104,Tags:["FortressMonsterSpawner"],DisplayState:{Name:"minecraft:air"},SpawnData:{entity:{id:"minecraft:zombified_piglin",HandItems:[{id:"minecraft:golden_sword",Count:1b},{}]}},SpawnPotentials:[{weight:1,data:{entity:{id:"minecraft:zombified_piglin",HandItems:[{id:"minecraft:golden_sword",Count:1b},{}]}}},{weight:1,data:{entity:{id:"minecraft:zombified_piglin",HandItems:[{id:"minecraft:golden_sword",Count:1b},{}]}}},{weight:1,data:{entity:{id:"minecraft:zombified_piglin",HandItems:[{},{id:"minecraft:golden_sword",Count:1b}]}}}]}

# data modify storage vanilla_plus:soul_sand_valley_spawn_data SpawnerData append value {CustomDisplayTile:1b,SpawnCount:4,Delay:0,RequiredPlayerRange:104,Tags:["FortressMonsterSpawner"],DisplayState:{Name:"minecraft:air"},SpawnData:{entity:{id:"minecraft:wither_skeleton",HandItems:[{id:"minecraft:stone_sword",Count:1b},{}]}},SpawnPotentials:[{weight:1,data:{entity:{id:"minecraft:wither_skeleton",HandItems:[{id:"minecraft:stone_sword",Count:1b},{}]}}},{weight:1,data:{entity:{id:"minecraft:wither_skeleton",HandItems:[{},{id:"minecraft:stone_sword",Count:1b}]}}}]}

# data modify storage vanilla_plus:soul_sand_valley_spawn_data SpawnerData append value {CustomDisplayTile:1b,SpawnCount:4,Delay:0,RequiredPlayerRange:104,Tags:["FortressMonsterSpawner"],DisplayState:{Name:"minecraft:air"},SpawnData:{entity:{id:"minecraft:magma_cube",Size:1}},SpawnPotentials:[{weight:1,data:{entity:{id:"minecraft:magma_cube",Size:1}}},{weight:1,data:{entity:{id:"minecraft:magma_cube",Size:2}}},{weight:1,data:{entity:{id:"minecraft:magma_cube",Size:4}}}]}


# data modify storage vanilla_plus:soul_sand_valley_spawn_data SpawnerData append value {CustomDisplayTile:1b,SpawnCount:5,Delay:0,RequiredPlayerRange:104,Tags:["FortressMonsterSpawner"],DisplayState:{Name:"minecraft:air"},SpawnData:{entity:{id:"minecraft:skeleton",HandItems:[{id:"minecraft:bow",Count:1b},{}]}},SpawnPotentials:[{weight:1,data:{entity:{id:"minecraft:skeleton",HandItems:[{id:"minecraft:bow",Count:1b},{}]}}},{weight:1,data:{entity:{id:"minecraft:skeleton",HandItems:[{id:"minecraft:stone_sword",Count:1b},{}]}}}]}

# data modify storage vanilla_plus:soul_sand_valley_spawn_data SpawnerData append value {CustomDisplayTile:1b,SpawnCount:1,Delay:0,RequiredPlayerRange:104,Tags:["FortressMonsterSpawner"],DisplayState:{Name:"minecraft:air"},SpawnData:{entity:{id:"minecraft:ghast",ExplosionPower:1}}}

# data modify storage vanilla_plus:soul_sand_valley_spawn_data SpawnerData append value {CustomDisplayTile:1b,SpawnCount:4,Delay:0,RequiredPlayerRange:104,Tags:["FortressMonsterSpawner"],DisplayState:{Name:"minecraft:air"},SpawnData:{entity:{id:"minecraft:enderman"}}}

#Jungle Zombie storage
data merge storage vanilla_plus:jungle_mob_data {data:[{CustomNameVisible:0b,Tags:["JungleZombie"],CustomName:'{"text":"Jungle Zombie","color":"#005C06","bold":true,"italic":false}'},{CustomNameVisible:0b,DeathLootTable:"vanilla_plus:entities/mossy_skeleton",Tags:["MossySkeleton"],CustomName:'{"text":"Mossy Skeleton","color":"#005C06","bold":true,"italic":false}'}]}