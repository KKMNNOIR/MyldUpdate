##
 # tick.mcmeta.mcfunction
 # 
 #
 # Created by KKMNNOIR.


### There are generic commands.

##
# 各エンティティの基本行動
# Zombie
execute as @e[type=minecraft:zombie] at @s run function myld:entities/zombie/zombie_main

# Skeleton
execute as @e[type=minecraft:skeleton] at @s run function myld:entities/skeleton/skeleton_main

# Creeper
execute as @e[type=minecraft:creeper] at @s run function myld:entities/creeper/creeper_main

# Wither Skeleton
execute as @e[type=minecraft:wither_skeleton] at @s run function myld:entities/wither_skeleton/wither_skeleton_main

# Blaze
execute as @e[type=minecraft:blaze] at @s run function myld:entities/blaze/blaze_main

# Hoglin
execute as @e[type=minecraft:hoglin] at @s run function myld:entities/hoglin/hoglin_main

# Mooshroom
execute as @e[type=minecraft:mooshroom] at @s run function myld:entities/mooshroom/mooshoroom_main

# Frozen Zombie's snowball
execute as @e[tag=SnowballAttack] at @s run function myld:nether_frost/frozen_zombie/snowball/main

# Jungle Flower
execute as @e[tag=vpJungleFlowerInteraction] at @s if data entity @s attack on attacker if predicate myld:is_survival_or_adventure as @n[dx=0] run function myld:jungle/jungle_flower_break

## Modified Pillager Outpost
# Sometimes, Witches throw lingering potion
execute as @e[type=minecraft:splash_potion] if predicate myld:linger_chance at @s on origin if entity @s[type=witch,tag=OutpostWarrior] summon minecraft:lingering_potion run function myld:pillager_outpost/desert/change_lingering


execute as @e[type=#myld:soul_sand_nether_fortress_monsters,predicate=myld:in_nether,tag=!vpNetherSpawned] at @s run tag @s add vpNetherSpawned

execute as @e[type=#knf:soul_sand_nether_fortress_monsters,tag=vpFortressSpawned] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:effects":{"minecraft:wither":{duration:{min:1}}}}} at @s run effect clear @s minecraft:wither


## Oxidized Copper Spike
execute as @e[type=minecraft:item_display,tag=vpOxidizedCopperSpike] at @s run function myld:trial_chambers/oxidized_copper_spike/main
execute as @e[type=#myld:can_hurt_by_spike,tag=!vpCopperSpikeImmune] at @s if entity @e[distance=0..2,dx=0,dz=0,tag=vpOxidizedCopperSpikeInteraction] run function myld:trial_chambers/oxidized_copper_spike/damage_entity/detect_falling
execute as @e[type=minecraft:item] at @s if entity @n[type=minecraft:item_display,tag=vpOxidizedCopperSpike,distance=..0.5,nbt={item:{components:{"minecraft:custom_data":{blockstates:{damage_item:true}}}}}] run damage @s 5.0 myld:copper_spike
execute as @e[tag=vpOxidizedCopperSpikeInteraction] at @s if block ~ ~-1 ~ #minecraft:replaceable run function myld:trial_chambers/oxidized_copper_spike/break