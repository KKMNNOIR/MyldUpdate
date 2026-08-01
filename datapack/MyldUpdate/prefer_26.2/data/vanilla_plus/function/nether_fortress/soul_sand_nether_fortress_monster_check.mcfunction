# effect give @s invisibility 65535 0

# # 要塞パーツにいる
# execute if predicate vanilla_plus:in_fortress run tp ~ -320 ~

# # 要塞パーツ外にいる
# execute unless predicate vanilla_plus:in_fortress run summon minecraft:spawner_minecart ~ ~ ~ {RequiredPlayerRange:720s,Tags:["FortressMonsterSpawner"],Delay:0,MaxNearbyEntities:70s}
# execute as @e[type=minecraft:spawner_minecart,tag=FortressMonsterSpawner] at @s run function vanilla_plus:nether_fortress/spawning
# tp ~ -320 ~

# # ソウルサンドの谷のモンスター AND 要塞モンスター 
# # 要塞パーツにいる OR ネザーレンガの上にいる
# tag @e[type=#vanilla_plus:nether_fortress_monsters,predicate=vanilla_plus:in_fortress_or_on_bricks] add vpFortressSpawned
# tag @e[type=!#vanilla_plus:nether_fortress_monsters,predicate=!vanilla_plus:in_fortress_or_on_bricks,type=!minecraft:skeleton] add vpFortressSpawned
# tag @e[type=minecraft:skeleton] add vpFortressSpawned


execute if entity @s[type=#vanilla_plus:nether_fortress_monsters,predicate=vanilla_plus:in_fortress_or_on_bricks] run tag @s add vpFortressSpawned
# execute if entity @s[type=#vanilla_plus:nether_fortress_monsters,predicate=vanilla_plus:in_fortress_or_on_bricks] run tag @s add vpFortressSpawned

# # ソウルサンドの谷のモンスター AND 要塞モンスター
# # NOT (要塞パーツにいる OR ネザーレンガの上にいる)
# # execute if entity @s[type=#vanilla_plus:nether_fortress_monsters,predicate=!vanilla_plus:in_fortress_or_on_bricks] run tp ~ -200 ~

# # ソウルサンドの谷のモンスター AND NOT 要塞モンスター(=ソウルサンドの谷のモンスターのみ)
# # NOT (要塞パーツにいる OR ネザーレンガの上にいる)
execute if entity @s[type=!#vanilla_plus:nether_fortress_monsters,type=!minecraft:skeleton] unless predicate vanilla_plus:in_fortress_or_on_bricks run tag @s add vpFortressSpawned
execute if entity @s[type=minecraft:skeleton] run tag @s add vpFortressSpawned

# # ソウルサンドの谷のモンスター AND NOT 要塞モンスター(=ソウルサンドの谷のモンスターのみ)
# # 要塞パーツにいる OR ネザーレンガの上にいる
# # execute if entity @s[type=!#vanilla_plus:nether_fortress_monsters,predicate=vanilla_plus:in_fortress_or_on_bricks] run tp ~ ~-200 ~

execute as @s[tag=!vpFortressSpawned] at @s run tp ~ ~-200 ~
# tp @e[tag=!vpFortressSpawned,tag=FortressStartPoint,type=#vanilla_plus:soul_sand_nether_fortress_monsters] ~ -320 ~

# # execute as @e[type=#vanilla_plus:nether_fortress_monsters,predicate=vanilla_plus:in_fortress_or_on_bricks,tag=!vpFortressSpawned] at @s run tag @s add vpFortressSpawned
# # execute as @e[type=#vanilla_plus:nether_fortress_monsters,predicate=!vanilla_plus:in_fortress_or_on_bricks,tag=!vpFortressSpawned] at @s run tp ~ -200 ~