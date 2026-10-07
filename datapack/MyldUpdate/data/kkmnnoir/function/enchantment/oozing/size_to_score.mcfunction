# エンチャレベル
# エンチャレベルを取得
execute store result score @s kkmnOozingLevel run data get entity @s equipment.chest.components."minecraft:enchantments"."kkmnnoir:oozing"

# dataに保存
execute store result entity @s data.enchantments.oozing.level int 1 run scoreboard players get @s kkmnOozingLevel

# Sizeを決める
# 一回り小さいものを召喚する
# 自身のSizeをスコア化
execute store result score @s kkmnOozingSlimeSize run data get entity @s Size 5

# dataに保存
execute store result entity @s data.enchantments.oozing.size int 1 run scoreboard players get @s kkmnOozingSlimeSize

# 召喚
function kkmnnoir:enchantment/oozing/summon_slime with entity data.enchantments.oozing


# dataに保存
# data modify entity @s data.enchantment.oozing.size set compute entity @s integer kkmnnoir:enchantment/oozing_slime_size

# execute store result storage kkmnnoir:oozing_level Size int 1 run scoreboard players get @s kkmnOozingSlimeSize

# execute store result score @s kkmnOozingLevel unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"equipment":{"chest":{components:{"minecraft:enchantments":{"kkmnnoir:oozing":1}}}}}} run data get entity @s ArmorItems[2].components."minecraft:enchantments".levels."kkmnnoir:oozing"

execute store result storage kkmnnoir:oozing_level oozing_level int 1 run scoreboard players get @s kkmnOozingLevel

# スライム召喚
# function kkmnnoir:oozing/summon_slime with storage kkmnnoir:oozing_level {}

# 片付け
data remove entity @s data.enchantments.oozing
# data remove storage kkmnnoir:oozing_level Size
# data remove storage kkmnnoir:oozing_level oozing_level
scoreboard players reset @s kkmnOozingSlimeSize
scoreboard players reset @s kkmnOozingLevel