summon minecraft:skeleton_horse ~ ~ ~ {active_effects:[{id:"minecraft:speed",amplifier:3b,duration:-1,show_particles:0b}],Tame:1b,SaddleItem:{id:"minecraft:saddle",Count:1b}}
tag @s add vpSummonedHorse
ride @s mount @e[limit=1,dx=0,type=minecraft:skeleton_horse]

execute if predicate vanilla_plus:30_percent run item replace entity @s armor.head with minecraft:diamond_helmet
execute if predicate vanilla_plus:30_percent run item replace entity @s armor.chest with minecraft:diamond_chestplate
execute if predicate vanilla_plus:30_percent run item replace entity @s armor.legs with minecraft:diamond_leggings
execute if predicate vanilla_plus:30_percent run item replace entity @s armor.feet with minecraft:diamond_boots
item modify entity @s weapon.mainhand vanilla_plus:skeleton_modifier
item modify entity @s armor.head vanilla_plus:skeleton_modifier
item modify entity @s armor.chest vanilla_plus:skeleton_modifier
item modify entity @s armor.legs vanilla_plus:skeleton_modifier
item modify entity @s armor.feet vanilla_plus:skeleton_modifier