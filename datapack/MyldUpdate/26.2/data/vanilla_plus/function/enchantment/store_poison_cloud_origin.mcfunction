execute store result storage vanilla_plus:ench_levels poison_cloud_amplifier int 1 run data get entity @s SelectedItem.components.minecraft:enchantments.levels.ench_test:poison_cloud
execute store result score @s enchTestPoisonCloudRadius run data get entity @s SelectedItem.components.minecraft:enchantments.levels.ench_test:poison_cloud
scoreboard players add @s enchTestPoisonCloudRadius 2
execute store result storage vanilla_plus:ench_levels poison_cloud_radius int 1 run scoreboard players get @s enchTestPoisonCloudRadius