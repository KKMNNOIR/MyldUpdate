# 演出
# パーティクル
# 最初
execute if score @s evwWololoCasting matches ..30 run particle minecraft:entity_effect{color:[0.020,0.388,0.671,1.00]} ~ ~ ~ 0.5 0.5 0.5 0 5 force

# ある程度まで加算されたら色が変わる
execute if score @s evwWololoCasting matches 31..40 run particle minecraft:entity_effect{color:[0.302,0.024,0.145,1.00]} ~ ~ ~ 0.5 0.5 0.5 0 5 force

# 変わりかけで青になる
execute if score @s evwWololoCasting matches 41..60 run particle minecraft:entity_effect{color:[0.024,0.090,0.541,1.00]} ~ ~ ~ 0.5 0.5 0.5 0 5 force

# Wololo ~ (^o^)
execute unless score @s evwWololoCasting = @s evwWololoCasting run playsound minecraft:entity.evoker.prepare_wololo neutral @a ~ ~ ~ 1 1

# 処理
# 詠唱スコア加算
scoreboard players add @s evwWololoCasting 1

# 詠唱スコアが61になった(3秒経過)
execute if score @s evwWololoCasting matches 61.. run function evw:used_wand/change_sheep_colour/colour_changed
