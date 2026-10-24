# 演出
# パーティクル
particle minecraft:block{block_state:{Name:"minecraft:spore_blossom"}} ~ ~ ~ 0.25 0.25 0.25 0 40 force

# 音
playsound minecraft:block.spore_blossom.break block @a ~ ~ ~ 1 0.8

# display削除
execute on passengers run kill @s

# 退場
kill @s