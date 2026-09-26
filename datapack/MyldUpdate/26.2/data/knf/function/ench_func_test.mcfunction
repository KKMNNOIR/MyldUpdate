tellraw @a [{nbt:"Motion[0]",entity:"@s"}]

execute store result score @s keTestMotionScoreX run data get entity @s Motion[0] 100
scoreboard players operation @s keTestMotionScoreX *= keMotionMinusOne keTestMotionScoreMinusOne
execute store result storage kkmnnoir:projectile_data "minecraft:arrow".Motion.x double 0.01 run scoreboard players get @s keTestMotionScoreX
data modify storage kkmnnoir:projectile_data "minecraft:arrow".Motion.y set from entity @s Motion[1]
execute store result score @s keTestMotionScoreZ run data get entity @s Motion[2] 100
scoreboard players operation @s keTestMotionScoreZ *= keMotionMinusOne keTestMotionScoreMinusOne
execute store result storage kkmnnoir:projectile_data "minecraft:arrow".Motion.z double 0.01 run scoreboard players get @s keTestMotionScoreZ

# data modify storage kkmnnoir:projectile_data "minecraft:arrow".Motion.x set from entity @s Motion[0]
# data modify storage kkmnnoir:projectile_data "minecraft:arrow".Motion.z set from entity @s Motion[2]