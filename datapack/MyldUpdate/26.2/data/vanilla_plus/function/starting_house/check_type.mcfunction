tag @s add vpStartingHouseGenerated
execute if biome ~ ~ ~ #vanilla_plus:has_structure/starting_house/oak run scoreboard players set @s vpStartingHouseType 0
execute if biome ~ ~ ~ #vanilla_plus:has_structure/starting_house/spruce run scoreboard players set @s vpStartingHouseType 1
execute if biome ~ ~ ~ #vanilla_plus:has_structure/starting_house/birch run scoreboard players set @s vpStartingHouseType 2
execute if biome ~ ~ ~ #vanilla_plus:has_structure/starting_house/jungle run scoreboard players set @s vpStartingHouseType 3
execute if biome ~ ~ ~ #vanilla_plus:has_structure/starting_house/acacia run scoreboard players set @s vpStartingHouseType 4
execute if biome ~ ~ ~ #vanilla_plus:has_structure/starting_house/dark_oak run scoreboard players set @s vpStartingHouseType 5
execute if biome ~ ~ ~ #vanilla_plus:has_structure/starting_house/mangrove run scoreboard players set @s vpStartingHouseType 6
execute if biome ~ ~ ~ #vanilla_plus:has_structure/starting_house/cherry run scoreboard players set @s vpStartingHouseType 7
execute if biome ~ ~ ~ #vanilla_plus:has_structure/starting_house/desert run scoreboard players set @s vpStartingHouseType 8
execute if biome ~ ~ ~ #vanilla_plus:has_structure/starting_house/mesa if predicate vanilla_plus:starting_house/toggle_terracotta_room run scoreboard players set @s vpStartingHouseType 9
execute if biome ~ ~ ~ #vanilla_plus:has_structure/starting_house/mesa unless predicate vanilla_plus:starting_house/toggle_terracotta_room run scoreboard players set @s vpStartingHouseType 10
execute if biome ~ ~ ~ #vanilla_plus:has_structure/starting_house/stony_frozen run scoreboard players set @s vpStartingHouseType 11
execute if biome ~ ~ ~ #vanilla_plus:has_structure/starting_house/stony run scoreboard players set @s vpStartingHouseType 12

function vanilla_plus:starting_house/build