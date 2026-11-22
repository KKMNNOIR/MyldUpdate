# タグ
tag @s add vpJungleFlower

# 必要なNBTを付与
data merge entity @s {width:1.0f,height:1.0f,block_state:{id:"minecraft:spore_blossom"},transformation:{scale:[1.0f,1.0f,1.0f],translation:[-0.5,0.5f,0.5f],left_rotation:[1.0f,0.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}

# interactionに乗せる
ride @s mount @n[dx=0,tag=vpJungleFlowerInteraction]