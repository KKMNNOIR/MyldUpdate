# 不吉な試練
# 爆破キューブ
execute as @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{is_magma_cube:1b}}}}] at @s run function knf:basalt_deltas/ominous_trial/store_magma_cube_size

# 強制不吉化
execute as @e[tag=knfTrialSpawnerOminizer] at @s if block ~ ~ ~ minecraft:trial_spawner[ominous=false] positioned ~ ~ ~ run function knf:basalt_deltas/ominous_trial/trial_spawner_ominizer_ominize