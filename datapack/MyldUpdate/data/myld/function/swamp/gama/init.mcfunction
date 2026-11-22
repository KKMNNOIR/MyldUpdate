# Random Pos
execute store result entity @s data.pos.x float 0.01 run random value -25..25
execute store result entity @s data.pos.z float 0.01 run random value -25..25

function myld:swamp/gama/teleport with data.pos

# 表示
execute summon minecraft:item_display run function myld:swamp/gama/gama_riding