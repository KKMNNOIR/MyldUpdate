execute store result score @s kkmnMiasmaRadius run data get entity @s ArmorItems[3].components."minecraft:enchantments".levels."kkmnnoir:miasma"
execute store result storage kkmnnoir:miasma_effects Radius float 1 run scoreboard players add @s kkmnMiasmaRadius 4
execute unless entity @e[tag=kkmnnoirMiasma,distance=..5] run function kkmnnoir:miasma/summon_aec with storage kkmnnoir:miasma_effects {}