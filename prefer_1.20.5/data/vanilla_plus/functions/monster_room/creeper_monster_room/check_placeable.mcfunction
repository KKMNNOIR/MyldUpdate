execute if predicate vanilla_plus:monster_room/can_set_monster_room run function vanilla_plus:monster_room/creeper_monster_room/place
execute unless predicate vanilla_plus:monster_room/can_set_monster_room run execute positioned ~ ~-1 ~ run function vanilla_plus:monster_room/creeper_monster_room/check_placeable