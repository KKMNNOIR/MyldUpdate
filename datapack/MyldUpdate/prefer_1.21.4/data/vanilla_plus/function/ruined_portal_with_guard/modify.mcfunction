item replace entity @s weapon.mainhand with minecraft:golden_axe[custom_name='{"color":"gold","italic":false,"text":"Fire Brand"}',custom_model_data=20210224,enchantments={levels:{"minecraft:fire_aspect":2,"minecraft:knockback":2,"minecraft:sharpness":5,"minecraft:mending":1,"minecraft:unbreaking":3}}] 1

execute unless data entity @s AngryAt run data modify entity @s AngryAt set from entity @p UUID
tag @s add vpPiglinGuardModified