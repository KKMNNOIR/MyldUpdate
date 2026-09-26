# レベル2
execute positioned ^ ^ ^10 run place feature evw:evoker_fang_5
execute positioned ^ ^ ^12 run place feature evw:evoker_fang_6
execute positioned ^ ^ ^14 run place feature evw:evoker_fang_7
execute positioned ^ ^ ^16 run place feature evw:evoker_fang_8
execute positioned ^ ^ ^18 run place feature evw:evoker_fang_9
execute positioned ^ ^ ^20 run place feature evw:evoker_fang_10

# レベル3以上：続けて更に召喚
execute if predicate evw:ench_level_more_than_2 if predicate evw:ench_level_more_than_3 rotated ~ 0 run function evw:pierced_wand/attack/level_3