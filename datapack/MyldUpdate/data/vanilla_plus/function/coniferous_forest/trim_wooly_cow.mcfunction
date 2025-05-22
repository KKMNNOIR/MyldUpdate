execute on target run say y
execute on target at @s run tag @s add Trimmed
execute on target at @s run playsound minecraft:entity.sheep.shear neutral @a ~ ~-1 ~ 1 1
execute on target at @s run loot spawn ~ ~-1 ~ loot minecraft:blocks/brown_wool
advancement revoke @s only vanilla_plus:coniferous_forest/clicked_wooly_cows