# [ImportKey]: NobwRALgngDgpmAXGAxgSwE4oDYIDRgCuhaAJkmAOyUCsATAAwqkBGAtAIwouVsAsADgYC2AQwCccOGwBs4gMwC4AMyXUpYAgDtRAWwTJAYYoACDprAxRGPQGck4FAHtCWiEhoEUcV3Az2wAG6i2IQG4AAeSAwEUFEAvnEE1qRohHaIdAQ2EFZuiNFgcNjYaDA2BhwMBRiOORAGBWg2AKLFpeXNAI6EwdhQAMqWXuSIysHlCXjg0PAU6Fi45sRkFDIoMgK0ohyy4qR8-HQcymIoNKKycgykNHAsUjJm2noGYCZ05pbWuukOzq5IASebz1PyIcBBEJhMCRfIxeKJMDJVLpeRZHIYPIFIolMoVKpJWqiepRAhNVq4jrdXoDIZwEZjbATOIAXSAA_3
# 円 2
# execute positioned ^ ^ ^-3 run place feature evw:evoker_fang
# execute positioned ^2.12132 ^ ^-2.12132 run place feature evw:evoker_fang
# execute positioned ^3 ^ ^ run place feature evw:evoker_fang
# execute positioned ^2.12132 ^ ^2.12132 run place feature evw:evoker_fang
# execute positioned ^ ^ ^3 run place feature evw:evoker_fang
# execute positioned ^-2.12132 ^ ^2.12132 run place feature evw:evoker_fang
# execute positioned ^-3 ^ ^ run place feature evw:evoker_fang
# execute positioned ^-2.12132 ^ ^-2.12132 run place feature evw:evoker_fang

# 円 1
# execute positioned ^ ^ ^-1.4 run place feature evw:evoker_fang
# execute positioned ^1.33148 ^ ^-0.43262 run place feature evw:evoker_fang
# execute positioned ^0.8229 ^ ^1.13262 run place feature evw:evoker_fang
# execute positioned ^-0.8229 ^ ^1.1326 run place feature evw:evoker_fang
# execute positioned ^-1.33148 ^ ^-0.43262 run place feature evw:evoker_fang

function evw:pierced_wand/guard/level_1

# Set Owner
execute as @e[tag=evwEvokedByPlayer,type=minecraft:evoker_fangs] run data modify entity @s Owner set from entity @p[distance=..1] UUID

# 音
execute if entity @e[type=minecraft:evoker_fangs,distance=..33] run playsound minecraft:entity.evoker.prepare_attack player @s ~ ~ ~ 1 1
