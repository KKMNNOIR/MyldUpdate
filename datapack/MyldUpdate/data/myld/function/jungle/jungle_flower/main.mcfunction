# block_display召喚
execute unless predicate myld:jungle/exist_jungle_flower summon minecraft:block_display run function myld:jungle/jungle_flower/set

# 自壊
execute if function myld:jungle/jungle_flower/break_check run function myld:jungle/jungle_flower/break