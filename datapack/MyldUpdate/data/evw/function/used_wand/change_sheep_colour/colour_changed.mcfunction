# 演出
# パーティクル
particle minecraft:explosion ~ ~1 ~ 1 1 1 0 20 force

# 音
playsound minecraft:entity.zombie_villager.converted neutral @a ~ ~ ~ 0.5 1
playsound minecraft:entity.zombie.infect neutral @a ~ ~ ~ 0.7 1


# 色を変える
data modify entity @s Color set value 14b


# スコアリセット
scoreboard players reset @s evwWololoCasting
