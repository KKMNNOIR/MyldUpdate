execute if score @s vpStartingHouseType matches 0 run place jigsaw vanilla_plus:starting_house/oak minecraft:starting_house_start 7 ~ ~-1 ~
execute if score @s vpStartingHouseType matches 1 run place jigsaw vanilla_plus:starting_house/spruce minecraft:starting_house_start 7 ~ ~-1 ~
execute if score @s vpStartingHouseType matches 2 run place jigsaw vanilla_plus:starting_house/birch minecraft:starting_house_start 7 ~ ~-1 ~
execute if score @s vpStartingHouseType matches 3 run place jigsaw vanilla_plus:starting_house/jungle minecraft:starting_house_start 7 ~ ~-1 ~
execute if score @s vpStartingHouseType matches 4 run place jigsaw vanilla_plus:starting_house/acacia minecraft:starting_house_start 7 ~ ~-1 ~
execute if score @s vpStartingHouseType matches 5 run place jigsaw vanilla_plus:starting_house/dark_oak minecraft:starting_house_start 7 ~ ~-1 ~
execute if score @s vpStartingHouseType matches 6 run place jigsaw vanilla_plus:starting_house/mangrove minecraft:starting_house_start 7 ~ ~-1 ~
execute if score @s vpStartingHouseType matches 7 run place jigsaw vanilla_plus:starting_house/cherry minecraft:starting_house_start 7 ~ ~-1 ~
execute if score @s vpStartingHouseType matches 8 run place jigsaw vanilla_plus:starting_house/desert minecraft:starting_house_start 7 ~ ~-1 ~
execute if score @s vpStartingHouseType matches 9 run place jigsaw vanilla_plus:starting_house/mesa_high minecraft:starting_house_start 7 ~ ~-1 ~
execute if score @s vpStartingHouseType matches 10 run place jigsaw vanilla_plus:starting_house/mesa_low minecraft:starting_house_start 7 ~ ~-1 ~
execute if score @s vpStartingHouseType matches 11 run place jigsaw vanilla_plus:starting_house/stony_frozen minecraft:starting_house_start 7 ~ ~-1 ~
execute if score @s vpStartingHouseType matches 12 run place jigsaw vanilla_plus:starting_house/stony minecraft:starting_house_start 7 ~ ~-1 ~

tag @s add vpStartingHouseGenerated
execute unless dimension vanilla_plus:development_room run kill @s