# レベル1
function evw:pierced_wand/attack/level_1

# レベル2
# execute if predicate evw:ench_level_more_than_2 rotated ~ 0 run function evw:pierced_wand/attack/level_2

# レベル3
# execute if predicate evw:ench_level_more_than_2 if predicate evw:ench_level_more_than_3 rotated ~ 0 run function evw:pierced_wand/attack/level_3

# Set Owner
execute as @e[tag=evwEvokedByPlayer,type=minecraft:evoker_fangs] run data modify entity @s Owner set from entity @p[distance=..1] UUID

# 音
execute if entity @e[type=minecraft:evoker_fangs,distance=..33] run playsound minecraft:entity.evoker.prepare_attack player @s ~ ~ ~ 1 1

# Set CoolTime
scoreboard players add @s evwPierceCoolTime 1