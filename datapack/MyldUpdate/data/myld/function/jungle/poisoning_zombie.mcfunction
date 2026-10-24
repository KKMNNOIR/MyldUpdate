# タグ付け
tag @s add JungleZombie

# データ変更
data modify entity @s CustomNameVisible set value 0b
data modify entity @s CustomName set value '{"text":"Jungle Zombie","color":"#005C06","bold":true,"italic":false}'

# エンチャント
execute if predicate vanilla_plus:jungle/is_equiped_zombie/head run item modify entity @s armor.head vanilla_plus:zombie_poisoning
execute if predicate vanilla_plus:jungle/is_equiped_zombie/chest run item modify entity @s armor.head vanilla_plus:zombie_poisoning
execute if predicate vanilla_plus:jungle/is_equiped_zombie/legs run item modify entity @s armor.head vanilla_plus:zombie_poisoning
execute if predicate vanilla_plus:jungle/is_equiped_zombie/head run item modify entity @s armor.head vanilla_plus:zombie_poisoning
execute unless predicate vanilla_plus:jungle/is_equiped_jungle run item replace entity @s armor.head with minecraft:stone_button[minecraft:enchantments={"kkmnnoir:poison_touch":2}]