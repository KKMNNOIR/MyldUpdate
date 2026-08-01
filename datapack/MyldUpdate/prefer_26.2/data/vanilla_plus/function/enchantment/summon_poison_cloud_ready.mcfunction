# summon creeper
# summon area_effect_cloud ~ ~ ~ {Particle:{type:"entity_effect",color:[0.071,0.129,0.012,1.00]},Radius:3f,Duration:120,potion_contents:{potion:"minecraft:strong_poison",custom_effects:[{id:"minecraft:poison",amplifier:1,duration:60}]}}
execute at @s on origin run function vanilla_plus:enchantment/summon_poison_cloud with storage vanilla_plus:ench_levels {}