# 召喚
$summon minecraft:magma_cube ~ ~ ~ {Motion:[0.0d,-1.0d,0.0d],Size:$(Size),equipment:{legs:{id:"minecraft:fire_charge",components:{"minecraft:enchantments":{"knf:blast_landing":$(blast_landing_level)}}}}}

# 召喚フラグ付与
tag @s add knfSummonedMagmaCube

# お片付け
data remove storage knf:basalt_deltas_frotress_trial_magma_cube Size
data remove storage knf:basalt_deltas_frotress_trial_magma_cube blast_landing_level

# 退場
kill @s