##
 # tick.mcmeta.mcfunction
 # 
 #
 # Created by KKMNNOIR.


### There are generic commands.

##
# Initial spawned
execute as @e[type=minecraft:armor_stand,tag=vpStartingHouseStarter,tag=!vpStartingHouseGenerated] at @s positioned over motion_blocking_no_leaves run function vanilla_plus:starting_house/check_type

# 各エンティティの基本行動
# Zombie
execute as @e[type=minecraft:zombie] at @s run function vanilla_plus:entities/zombie/zombie_main

# Skeleton
execute as @e[type=minecraft:skeleton] at @s run function vanilla_plus:entities/skeleton/skeleton_main

# Creeper
execute as @e[type=minecraft:creeper] at @s run function vanilla_plus:entities/creeper/creeper_main

# Wither Skeleton
execute as @e[type=minecraft:wither_skeleton] at @s run function vanilla_plus:entities/wither_skeleton/wither_skeleton_main

# Blaze
execute as @e[type=minecraft:blaze] at @s run function vanilla_plus:entities/blaze/blaze_main

# Hoglin
execute as @e[type=minecraft:hoglin] at @s run function vanilla_plus:entities/hoglin/hoglin_main

# Mooshroom
execute as @e[type=minecraft:mooshroom] at @s run function vanilla_plus:entities/mooshroom/mooshoroom_main

# Frozen Zombie's snowball
execute as @e[tag=SnowballAttack] at @s run function vanilla_plus:nether_frost/frozen_zombie/snowball/main

# With guard
execute as @e[type=minecraft:zombified_piglin,tag=vpPiglinGuard,tag=!vpPiglinGuardModified] at @s unless biome ~ ~ ~ #vanilla_plus:development_rooms run function vanilla_plus:ruined_portal_with_guard/modify

## Modified Pillager Outpost
# Sometimes, Witches throw lingering potion
execute as @e[type=minecraft:splash_potion] if predicate vanilla_plus:linger_chance at @s on origin if entity @s[type=witch,tag=OutpostWarrior] summon minecraft:lingering_potion run function vanilla_plus:pillager_outpost/desert/change_lingering


execute as @e[type=#vanilla_plus:soul_sand_nether_fortress_monsters,predicate=vanilla_plus:in_nether,tag=!vpNetherSpawned] at @s run tag @s add vpNetherSpawned

execute as @e[type=#knf:soul_sand_nether_fortress_monsters,tag=vpFortressSpawned] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:effects":{"minecraft:wither":{duration:{min:1}}}}} at @s run effect clear @s minecraft:wither


# Soul Sand Valley
## Fossil Placer
execute as @e[tag=vpNetherFossilsPlacer] at @s run function vanilla_plus:nether_fossils/find_ground

# Ancient Ruins
execute as @e[tag=vpAncientRuinsPlacer] at @s run function vanilla_plus:ancient_ruins/placement

## Oxidized Copper Spike
execute as @e[type=#vanilla_plus:can_hurt_by_spike,tag=!vpCopperSpikeImmune] at @s if entity @e[distance=0..2,dx=0,dz=0,tag=vpOxidizedCopperSpikeInteraction] run function vanilla_plus:trial_chambers/oxidized_copper_spike/damage_entity/detect_falling
execute as @e[type=minecraft:item] at @s if entity @n[type=minecraft:item_display,tag=vpOxidizedCopperSpike,distance=..0.5,nbt={item:{components:{"minecraft:custom_data":{blockstates:{damage_item:true}}}}}] run damage @s 5.0 vanilla_plus:copper_spike
execute as @e[tag=vpOxidizedCopperSpikeInteraction] at @s if block ~ ~-1 ~ #minecraft:replaceable run function vanilla_plus:trial_chambers/oxidized_copper_spike/break