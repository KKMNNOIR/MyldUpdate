# 円 2
execute positioned ^ ^ ^-3 run place feature evw:evoker_fang_2
execute positioned ^2.12132 ^ ^-2.12132 run place feature evw:evoker_fang_2
execute positioned ^3 ^ ^ run place feature evw:evoker_fang_2
execute positioned ^2.12132 ^ ^2.12132 run place feature evw:evoker_fang_2
execute positioned ^ ^ ^3 run place feature evw:evoker_fang_2
execute positioned ^-2.12132 ^ ^2.12132 run place feature evw:evoker_fang_2
execute positioned ^-3 ^ ^ run place feature evw:evoker_fang_2
execute positioned ^-2.12132 ^ ^-2.12132 run place feature evw:evoker_fang_2

# レベル3なら続けて外側に
execute if predicate evw:ench_level_more_than_3 run function evw:pierced_wand/guard/level_3