# 円 1
execute positioned ^ ^ ^-1.4 run place feature evw:evoker_fang_1
execute positioned ^1.33148 ^ ^-0.43262 run place feature evw:evoker_fang_1
execute positioned ^0.8229 ^ ^1.13262 run place feature evw:evoker_fang_1
execute positioned ^-0.8229 ^ ^1.1326 run place feature evw:evoker_fang_1
execute positioned ^-1.33148 ^ ^-0.43262 run place feature evw:evoker_fang_1

# レベル2なら、続けて外側も出す
execute if predicate evw:ench_level_more_than_2 run function evw:pierced_wand/guard/level_2