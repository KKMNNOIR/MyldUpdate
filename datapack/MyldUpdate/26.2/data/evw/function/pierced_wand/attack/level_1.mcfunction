# レベル1
execute positioned ^ ^ ^2 run place feature evw:evoker_fang_1
execute positioned ^ ^ ^4 run place feature evw:evoker_fang_2
execute positioned ^ ^ ^6 run place feature evw:evoker_fang_3
execute positioned ^ ^ ^8 run place feature evw:evoker_fang_4

# レベル2以上：続けて更に召喚
execute if predicate evw:ench_level_more_than_2 rotated ~ 0 run function evw:pierced_wand/attack/level_2