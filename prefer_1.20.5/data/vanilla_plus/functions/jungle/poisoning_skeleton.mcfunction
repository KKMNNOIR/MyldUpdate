# tag @s add MossySkeleton
# data modify entity @s CustomName set value '{"text":"Mossy Skeleton","color":"#005C06","bold":true,"italic":false}'
# replaceitem entity @s weapon.offhand minecraft:tipped_arrow{Potion:"minecraft:poison",CustomModelData:9999}
# data modify entity @s DeathLootTable set value "vanilla_plus:entities/mossy_skeleton"
data modify entity @s {} merge from storage vanilla_plus:jungle_mob_data data[1]
item replace entity @s weapon.offhand with minecraft:tipped_arrow{Potion:"minecraft:poison",CustomModelData:9999}