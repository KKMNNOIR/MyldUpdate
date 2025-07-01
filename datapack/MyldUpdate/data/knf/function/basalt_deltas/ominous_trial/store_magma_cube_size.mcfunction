execute if data entity @s {Item:{components:{"minecraft:enchantments":{"knf:blast_landing":1}}}} run data modify storage knf:basalt_deltas_frotress_trial_magma_cube Size set value 0
execute if data entity @s {Item:{components:{"minecraft:enchantments":{"knf:blast_landing":2}}}} run data modify storage knf:basalt_deltas_frotress_trial_magma_cube Size set value 1
execute if data entity @s {Item:{components:{"minecraft:enchantments":{"knf:blast_landing":3}}}} run data modify storage knf:basalt_deltas_frotress_trial_magma_cube Size set value 3

execute store result storage knf:basalt_deltas_frotress_trial_magma_cube blast_landing_level int 1.0 run random value 1..3

execute as @s[tag=!knfSummonedMagmaCube] at @s run function knf:basalt_deltas/ominous_trial/summon_magma_cube with storage knf:basalt_deltas_frotress_trial_magma_cube {}