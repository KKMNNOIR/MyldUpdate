execute store result score @s kkmnOozingSlimeSize run data get entity @s Size 0.5
execute store result storage kkmnnoir:oozing_level Size int 1 run scoreboard players get @s kkmnOozingSlimeSize

execute store result score @s kkmnOozingLevel unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"equipment":{"chest":{components:{"minecraft:enchantments":{"kkmnnoir:oozing":1}}}}}} run data get entity @s ArmorItems[2].components."minecraft:enchantments".levels."kkmnnoir:oozing"
execute store result storage kkmnnoir:oozing_level oozing_level int 1 run scoreboard players get @s kkmnOozingLevel

function kkmnnoir:oozing/summon_slime with storage kkmnnoir:oozing_level {}
data remove storage kkmnnoir:oozing_level Size
data remove storage kkmnnoir:oozing_level oozing_level
scoreboard players reset @s kkmnOozingSlimeSize
scoreboard players reset @s kkmnOozingLevel