$summon minecraft:magma_cube ~ ~ ~ {Motion:[0.0d,-1.0d,0.0d],Size:$(Size),equipment:{legs:{id:"minecraft:fire_charge",components:{"minecraft:enchantments":{"knf:blast_landing":$(blast_landing_level)}}}}}
tag @s add knfSummonedMagmaCube

data remove storage knf:basalt_deltas_frotress_trial_magma_cube Size
data remove storage knf:basalt_deltas_frotress_trial_magma_cube blast_landing_level

kill @s