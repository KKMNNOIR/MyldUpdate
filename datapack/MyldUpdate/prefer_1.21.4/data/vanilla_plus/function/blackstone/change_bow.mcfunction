tag @s add WitherSkeletonArcher
data modify entity @s DeathLootTable set value "vanilla_plus:entities/wither_skeleton_archer"
loot replace entity @s weapon.mainhand loot vanilla_plus:combats/wither_snake
item replace entity @s weapon.offhand with minecraft:tipped_arrow[custom_name='{"italic":false,"text":"衰弱の矢"}',custom_model_data=9999,potion_contents={custom_color:0,custom_effects:[{id:"minecraft:wither",amplifier:0,duration:100}]}]