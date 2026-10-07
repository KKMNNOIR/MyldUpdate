# summon creeper
# summon area_effect_cloud ~ ~ ~ {Particle:{type:"entity_effect",color:[0.071,0.129,0.012,1.00]},Radius:3f,Duration:120,potion_contents:{potion:"minecraft:strong_poison",custom_effects:[{id:"minecraft:poison",amplifier:1,duration:60}]}}
# execute at @s on origin run function vanilla_plus:enchantment/summon_poison_cloud with storage vanilla_plus:ench_levels {}

# エンチャレベル取得
# プレイヤー
execute if entity @s[type=minecraft:player] store result storage kkmnnoir:enchantments poison_cloud.level int 1 run data get entity @s SelectedItem.components."minecraft:enchantments"."kkmnnoir:poison_cloud"

# プレイヤー以外
execute unless entity @s[type=minecraft:player] store result storage kkmnnoir:enchantments poison_cloud.level int 1 run data get entity @s equipment.mainhand.components."minecraft:enchantments"."kkmnnoir:poison_cloud"

# amplifierを決める
data modify storage kkmnnoir:enchantments poison_cloud.amplifier set from storage kkmnnoir:enchantments poison_cloud.level

# 範囲
data modify storage kkmnnoir:enchantments poison_cloud.radius set compute entity @s integer kkmnnoir:enchantment/poison_cloud_radius

# 召喚
function kkmnnoir:enchantment/poison_cloud/summon with storage kkmnnoir:enchantments poison_cloud