##
 # replace_husk.mcfunction
 # 
 #
 # Created by .
##
tag @s add Done
# data modify storage vanilla_plus:zombie_data {} merge from entity @s {}
# execute if predicate vanilla_plus:stray_chance run function vanilla_plus:desert_cave/success
execute if predicate vanilla_plus:stray_chance summon minecraft:husk run function vanilla_plus:desert_cave/success