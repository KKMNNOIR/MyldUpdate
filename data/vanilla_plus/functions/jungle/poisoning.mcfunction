tag @s add changeDone
execute as @s[type=minecraft:zombie,predicate=vanilla_plus:stray_chance,tag=!JungleZombie] run data modify entity @s {} merge from storage vanilla_plus:jungle_mob_data data[0]
execute as @s[type=minecraft:skeleton,predicate=vanilla_plus:stray_chance,tag=!MossySkeleton] run function vanilla_plus:jungle/poisoning_skeleton