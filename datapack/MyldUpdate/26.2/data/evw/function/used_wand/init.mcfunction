advancement revoke @s only evw:used_wand
execute if predicate evw:is_sneaking if entity @e[type=minecraft:sheep,distance=..16,nbt={Color:11b}] run return run function evw:used_wand/change_sheep_colour/wololo_init
execute unless function evw:used_wand/check_exist_vex positioned ~ ~2 ~ run function evw:used_wand/summon_vex