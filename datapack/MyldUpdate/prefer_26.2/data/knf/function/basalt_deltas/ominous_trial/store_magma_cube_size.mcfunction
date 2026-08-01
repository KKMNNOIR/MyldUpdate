# マグマキューブのサイズを決める
execute if data entity @s {Item:{components:{"minecraft:enchantments":{"knf:blast_landing":1}}}} run data modify storage knf:basalt_deltas_frotress_trial_magma_cube Size set value 0
execute if data entity @s {Item:{components:{"minecraft:enchantments":{"knf:blast_landing":2}}}} run data modify storage knf:basalt_deltas_frotress_trial_magma_cube Size set value 1
execute if data entity @s {Item:{components:{"minecraft:enchantments":{"knf:blast_landing":3}}}} run data modify storage knf:basalt_deltas_frotress_trial_magma_cube Size set value 3

# 爆着のレベルを決める
data modify storage knf:basalt_deltas_frotress_trial_magma_cube blast_landing_level set from entity @s Item.components."minecraft:enchantments"."knf:blast_landing"

# 召喚
execute as @s[tag=!knfSummonedMagmaCube] at @s run function knf:basalt_deltas/ominous_trial/summon_magma_cube with storage knf:basalt_deltas_frotress_trial_magma_cube {}