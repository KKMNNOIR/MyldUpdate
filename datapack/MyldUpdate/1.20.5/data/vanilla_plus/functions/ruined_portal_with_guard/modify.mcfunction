item replace entity @s weapon.mainhand with minecraft:golden_axe{display:{Name:'{"text":"Fire Brand","color":"gold","italic":false}'},CustomModelData:20210224,Enchantments:[{id:"minecraft:sharpness",lvl:5s},{id:"minecraft:knockback",lvl:2s},{id:"minecraft:fire_aspect",lvl:2s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]} 1

execute unless data entity @s AngryAt run data modify entity @s AngryAt set from entity @p UUID
tag @s add vpPiglinGuardModified