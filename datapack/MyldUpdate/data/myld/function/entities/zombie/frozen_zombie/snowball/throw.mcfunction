# 立ち止まる
effect give @s slowness 1 10 true

# 雪玉召喚
execute positioned ~ ~2 ~ summon minecraft:snowball run function vanilla_plus:nether_frost/frozen_zombie/snowball/score_op

# スコアリセット
scoreboard players reset @s SnowballTimer

# tag @p[tag=SnowballTarget] remove SnowballTarget

# Slowness Resist
