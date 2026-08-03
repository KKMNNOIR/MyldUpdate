# ターゲットにある程度近づいたら立ち止まる
execute as @e[tag=FrozenZombie,predicate=vanilla_plus:snowball_target] at @s run function vanilla_plus:entities/zombie/frozen_zombie/snowball/init
# execute as @e[tag=FrozenZombie,predicate=vanilla_plus:snowball_target] on target at @s if entity @e[tag=FrozenZombie,distance=4..16,predicate=vanilla_plus:snowball_target] as @e[tag=FrozenZombie,predicate=vanilla_plus:snowball_target] at @s run function vanilla_plus:nether_frost/frozen_zombie_ready_attack

# タイマーが一定値に達するとタイマーリセット
execute if score @s SnowballTimer matches 650.. run scoreboard players reset @s SnowballTimer

# 鈍化即時解除
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:effects":{"minecraft:slowness":{duration:{min:1}}}}}
effect clear @s minecraft:slowness

# Slowness resist
# effect clear @s[nbt={ActiveEffects:[{Id:2}]}] slowness