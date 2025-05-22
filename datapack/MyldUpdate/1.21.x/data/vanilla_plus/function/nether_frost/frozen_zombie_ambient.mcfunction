##
 # frozen_zombie_ambient.mcfunction
 # 
 #
 # Created by .
##
execute unless data entity @s DeathLootTable run data modify entity @s DeathLootTable set value "vanilla_plus:entities/frozen_zombie"
# execute if entity @s[predicate=vanilla_plus:snowball_target] if entity @p[distance=4..16,predicate=vanilla_plus:player_survival_or_adventure] if block ~ ~2 ~ #air run function vanilla_plus:nether_frost/frozen_zombie_ready_attack
# execute if entity @s[predicate=vanilla_plus:snowball_target_except_player] if entity @e[distance=4..16,type=!player] if block ~ ~2 ~ #air run function vanilla_plus:nether_frost/snowball_ready_others

execute as @e[tag=FrozenZombie,predicate=vanilla_plus:snowball_target] at @s run function vanilla_plus:nether_frost/frozen_zombie_ready_attack
# execute as @e[tag=FrozenZombie,predicate=vanilla_plus:snowball_target] on target at @s if entity @e[tag=FrozenZombie,distance=4..16,predicate=vanilla_plus:snowball_target] as @e[tag=FrozenZombie,predicate=vanilla_plus:snowball_target] at @s run function vanilla_plus:nether_frost/frozen_zombie_ready_attack


execute if score @s SnowballTimer matches 650.. run scoreboard players reset @s SnowballTimer

# Slowness resist
# effect clear @s[nbt={ActiveEffects:[{Id:2}]}] slowness