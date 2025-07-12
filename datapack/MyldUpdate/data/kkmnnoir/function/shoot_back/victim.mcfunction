# UUIDを記録
data modify storage kkmnnoir:projectile_data victim_uuid set from entity @s UUID

# 回復
data modify storage vanilla_plus:ench_levels shoot_back.level set from entity @s equipment.chest.components."minecraft:enchantments"."kkmnnoir:shoot_back"
execute as @s[type=!#minecraft:undead] run function kkmnnoir:shoot_back/victim/instant_health with storage vanilla_plus:ench_levels shoot_back

# 攻撃したエンティティの位置をスコア化 & タグ付け
execute on attacker at @s run function kkmnnoir:shoot_back/attacker

# 自分の位置をスコア化
function kkmnnoir:shoot_back/victim/get_position

# 撃ち返し速度の補正値をエンチャントレベルから計算
execute store result score $keSBCorrection keSBCorrection run data get entity @s equipment.chest.components."minecraft:enchantments"."kkmnnoir:shoot_back" 1

# 飛び道具召喚
function kkmnnoir:shoot_back/victim/summon_projectile with storage kkmnnoir:projectile_data

# tagとstorageお片付け
tag @e[tag=keAttacked] remove keAttacked
data remove storage vanilla_plus:ench_levels shoot_back