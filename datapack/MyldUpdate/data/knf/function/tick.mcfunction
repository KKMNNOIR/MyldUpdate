execute as @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{is_magma_cube:1b}}}}] at @s run function knf:basalt_deltas/ominous_trial/store_magma_cube_size

execute as @e[tag=knfTrialSpawnerOminizer] if block ~ ~-1 ~ minecraft:trial_spawner[ominous=false] positioned ~ ~-1 ~ run function knf:basalt_deltas/ominous_trial/trial_spawner_ominizer_ominize