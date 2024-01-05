##
 # tick.mcmeta.mcfunction
 # 
 #
 # Created by KKMNNOIR.


### There are generic commands.

##
# Initial spawned
execute as @e[type=minecraft:armor_stand,tag=vpStartingHouseStarter,tag=!vpStartingHouseGenerated] at @s positioned over motion_blocking_no_leaves run function vanilla_plus:starting_house/check_type

# in Mushroom island
# Sometimes Brown Mooshroom spawns.
execute as @e[type=mooshroom,tag=!brownDone,nbt={Type:"red"}] at @s if biome ~ ~ ~ minecraft:mushroom_fields run function vanilla_plus:mushroom_island/brown

# in Icy Chasm -- Replace Skeleton with Stray
execute as @e[type=skeleton,tag=!Done] at @s if biome ~ ~ ~ #vanilla_plus:is_frost_biomes run function vanilla_plus:nether_frost/replace_stray

# Ice creeper
execute as @e[type=creeper,tag=!IcyCreeper] at @s if biome ~ ~ ~ #vanilla_plus:is_frost_biomes run tag @s add IcyCreeper
execute as @e[tag=IcyCreeper] at @s run function vanilla_plus:nether_frost/icy_creeper_ambient

#Frozen Zombie spawns
execute as @e[type=zombie,tag=!FrozenZombie] at @s if biome ~ ~ ~ #vanilla_plus:is_frost_biomes run function vanilla_plus:nether_frost/frozen_zombie_modify

##Frozen Zombie attacks with snowball
execute as @e[tag=FrozenZombie] at @s run function vanilla_plus:nether_frost/frozen_zombie_ambient

# Frozen Zombie's snowball
execute as @e[tag=SnowballAttack] at @s run particle dust 0.788 0.953 1.000 2 ~ ~ ~ 0 0 0 1 0 force
execute as @e[tag=SnowballAttack] on origin on target at @s if entity @e[tag=SnowballAttack,distance=..2] run function vanilla_plus:nether_frost/snowball_damage

# Hurt by Frozen Zombie
execute as @e[tag=FrozenZombie] on target if entity @e[nbt={HurtTime:9s}] run function vanilla_plus:nether_frost/freeze_damage_effect

# in Jungles
## Sometimes Jungle Zombie & Mossy Skeleton spawn.
execute as @e[type=#vanilla_plus:jungle_poisonous] at @s if biome ~ ~ ~ #minecraft:is_jungle run function vanilla_plus:jungle/poisoning
## Jungle Zombie's particle
execute as @e[predicate=vanilla_plus:jungle_poisonous_mobs] at @s run particle dust 0.012 0.220 0.067 2 ~ ~1 ~ 0.25 0.25 0.25 3 1 force

## Jungle Zombie poison
execute as @e[tag=JungleZombie] at @s on target as @s[nbt={HurtTime:9s}] run effect give @s minecraft:poison 5

## in Blackstone biomes 
# Some Wither Skeletons equip bows - Wither Snake.
execute as @e[type=minecraft:wither_skeleton,tag=!changeDone] at @s if biome ~ ~ ~ #vanilla_plus:is_blackstone_biomes run function vanilla_plus:blackstone/check_chance

# This bow gives Wither effect to arrow.
# execute as @e[type=arrow,nbt={inGround:0b}] at @s if entity @e[distance=..5,predicate=vanilla_plus:hand_wither_snake] unless data entity @s Potion run data merge entity @s {Color:0,CustomPotionEffects:[{Id:20,Amplifier:1b,Duration:100}],Potion:"minecraft:empty"}

# Ruined Portal -- Replace Netherrack with Other blocks to match terrain.
execute as @e[type=minecraft:armor_stand,tag=Replacer] at @s run function vanilla_plus:replace_portal_blocks

## Modified Pillager Outpost
# Sometimes, Witches throw lingering potion
execute as @e[type=potion,predicate=vanilla_plus:linger_chance] at @s if entity @e[type=witch,tag=OutpostWarrior,distance=..3] run data modify entity @s Item.id set value "minecraft:lingering_potion"

### in Desert
## Desert Cave
execute as @e[type=minecraft:zombie,tag=!Done] at @s if biome ~ ~ ~ vanilla_plus:desert_cave run function vanilla_plus:desert_cave/replace_husk
# execute as @e[type=skeleton,predicate=vanilla_plus:in_nether_frost,tag=!Done] at @s run function vanilla_plus:nether_frost/replace_stray

## Desert Pillager Outpost
# Open cage
# execute as @e[type=item_frame,tag=vpButtonDetector,tag=!vpOpened] at @s if block ^ ^ ^ #buttons[powered=true] run function vanilla_plus:pillager_outpost/desert/open_cage/open_1

# Fill a well with water
# execute as @e[tag=vpFillWater] at @s run function vanilla_plus:pillager_outpost/desert/fill_water

## Snowy Pillager castle
# unless block ~ ~ ~ beacon kill itself
# execute as @e[tag=vpDebuffer] at @s unless block ~ ~ ~ minecraft:beacon run kill @s

# Illusioner
# Sometimes he shot fireworks arrow
# execute as @e[type=minecraft:arrow,predicate=vanilla_plus:33_percent,nbt={inGround:0b,pickup:0b}] at @s if entity @e[type=minecraft:illusioner,tag=PillagerBoss,distance=..3] run function vanilla_plus:pillager_outpost/snowy/shoot_fireworks

# execute as @e[type=minecraft:arrow,predicate=vanilla_plus:33_percent] at @s on origin run function vanilla_plus:pillager_outpost/snowy/shoot_fireworks

# 花火中無敵
# execute as @e[type=minecraft:illusioner,tag=PillagerBoss] at @s if entity @e[type=minecraft:firework_rocket,tag=FireworksArrow,distance=..3] run data modify entity @s Invulnerable set value 1b
# execute as @e[type=minecraft:illusioner,tag=PillagerBoss] at @s unless entity @e[type=minecraft:firework_rocket,tag=FireworksArrow,distance=..3] run data modify entity @s Invulnerable set value 0b
# # エンティティが近くにいたら爆発
# execute as @e[type=minecraft:firework_rocket,tag=FireworksArrow] at @s if entity @e[predicate=vanilla_plus:fireworks_arrow/attack_range,predicate=!vanilla_plus:fireworks_arrow/target_except] run data modify entity @s LifeTime set value 0

# Evoker
## Figaron king
### Boss bar
# execute as @e[tag=FigaronKing,tag=!vpCreatedBossbar] at @s run function vanilla_plus:pillager_outpost/snowy/enemies/evoker/create_bossbar
# execute as @e[tag=FigaronKing] at @s run function vanilla_plus:pillager_outpost/snowy/enemies/evoker/bossbar_operation

# is in Coniferous Forest
execute as @e[type=minecraft:cow,tag=!vpWooledCow] at @s if biome ~ ~ ~ vanilla_plus:coniferous_forest run function vanilla_plus:coniferous_forest/replace_wooly

# in Custom Nether Fortress
## in Soul Sand Nether Fortress
###  If in Fortress piece bound or on Nether Brick
execute as @e[type=minecraft:blaze,tag=vpFortressSpawned] at @s run function vanilla_plus:nether_fortress/soul_blaze

# execute as @e[type=minecraft:armor_stand,tag=FortressStartPoint] at @s if entity @e[type=#vanilla_plus:soul_sand_nether_fortress_monsters,distance=..128,dy=9] run function vanilla_plus:nether_fortress/soul_sand_nether_fortress_monster_check

execute as @e[type=minecraft:armor_stand,tag=FortressStartPoint] at @s run data modify entity @s Marker set value 1b

execute as @e[type=#vanilla_plus:soul_sand_nether_fortress_monsters,tag=!vpFortressSpawned,predicate=vanilla_plus:in_nether,tag=!vpNetherSpawned] at @s if entity @e[type=minecraft:armor_stand,tag=FortressStartPoint,dx=133,dy=7,dz=133] run function vanilla_plus:nether_fortress/soul_sand_nether_fortress_monster_check
execute as @e[type=#vanilla_plus:soul_sand_nether_fortress_monsters,tag=!vpFortressSpawned,predicate=vanilla_plus:in_nether,tag=!vpNetherSpawned] at @s if entity @e[type=minecraft:armor_stand,tag=FortressStartPoint,dx=133,dy=-12,dz=133] run function vanilla_plus:nether_fortress/soul_sand_nether_fortress_monster_check
execute as @e[type=#vanilla_plus:soul_sand_nether_fortress_monsters,tag=!vpFortressSpawned,predicate=vanilla_plus:in_nether,tag=!vpNetherSpawned] at @s if entity @e[type=minecraft:armor_stand,tag=FortressStartPoint,dx=-133,dy=7,dz=133] run function vanilla_plus:nether_fortress/soul_sand_nether_fortress_monster_check
execute as @e[type=#vanilla_plus:soul_sand_nether_fortress_monsters,tag=!vpFortressSpawned,predicate=vanilla_plus:in_nether,tag=!vpNetherSpawned] at @s if entity @e[type=minecraft:armor_stand,tag=FortressStartPoint,dx=-133,dy=-12,dz=133] run function vanilla_plus:nether_fortress/soul_sand_nether_fortress_monster_check
execute as @e[type=#vanilla_plus:soul_sand_nether_fortress_monsters,tag=!vpFortressSpawned,predicate=vanilla_plus:in_nether,tag=!vpNetherSpawned] at @s if entity @e[type=minecraft:armor_stand,tag=FortressStartPoint,dx=-133,dy=7,dz=-133] run function vanilla_plus:nether_fortress/soul_sand_nether_fortress_monster_check
execute as @e[type=#vanilla_plus:soul_sand_nether_fortress_monsters,tag=!vpFortressSpawned,predicate=vanilla_plus:in_nether,tag=!vpNetherSpawned] at @s if entity @e[type=minecraft:armor_stand,tag=FortressStartPoint,dx=-133,dy=-12,dz=-133] run function vanilla_plus:nether_fortress/soul_sand_nether_fortress_monster_check
execute as @e[type=#vanilla_plus:soul_sand_nether_fortress_monsters,tag=!vpFortressSpawned,predicate=vanilla_plus:in_nether,tag=!vpNetherSpawned] at @s if entity @e[type=minecraft:armor_stand,tag=FortressStartPoint,dx=133,dy=7,dz=-133] run function vanilla_plus:nether_fortress/soul_sand_nether_fortress_monster_check
execute as @e[type=#vanilla_plus:soul_sand_nether_fortress_monsters,tag=!vpFortressSpawned,predicate=vanilla_plus:in_nether,tag=!vpNetherSpawned] at @s if entity @e[type=minecraft:armor_stand,tag=FortressStartPoint,dx=133,dy=-12,dz=-133] run function vanilla_plus:nether_fortress/soul_sand_nether_fortress_monster_check

execute as @e[type=#vanilla_plus:soul_sand_nether_fortress_monsters,predicate=vanilla_plus:in_nether] at @s run tag @s add vpNetherSpawned


### Soul Blaze

# Soul Sand Valley
## Fossil Placer
execute as @e[tag=vpNetherFossilsPlacer] at @s run function vanilla_plus:nether_fossils/find_ground

# Monster Room Placer
# Normal
# execute as @e[tag=vpMonsterRoomPlacer] at @s run function vanilla_plus:monster_room/check_placeable
# execute as @e[tag=vpMonsterRoomPlacer] at @s run kill @s

# Creeper
execute as @e[tag=vpCreeperMonsterRoomPlacer] at @s run function vanilla_plus:monster_room/creeper_monster_room/check_placeable
execute as @e[tag=vpCreeperMonsterRoomPlacer] at @s run kill @s
execute as @e[tag=vpSpawnerCenter] at @e[tag=vpMonsterRoomChester,limit=2,sort=random] run function vanilla_plus:monster_room/set_chests
execute as @e[tag=vpSpawnerCenter] at @s run kill @s

# Ancient Ruins
execute as @e[tag=vpAncientRuinsPlacer] at @s run function vanilla_plus:ancient_ruins/placement

# in volcanic biomes
execute as @e[type=minecraft:blaze] at @s if biome ~ ~ ~ #vanilla_plus:volcanic_biomes run function vanilla_plus:volcanic/blaze_ambient

# in Diamond Forest
execute as @e[type=minecraft:hoglin,tag=!vpSummoned] at @s if biome ~ ~ ~ vanilla_plus:nether/diamond_forest run function vanilla_plus:diamond_forest/summon_zoglin
execute as @e[type=minecraft:skeleton,tag=!vpSummonedHorse] at @s if biome ~ ~ ~ vanilla_plus:nether/diamond_forest run function vanilla_plus:diamond_forest/ride_skeleton_horse