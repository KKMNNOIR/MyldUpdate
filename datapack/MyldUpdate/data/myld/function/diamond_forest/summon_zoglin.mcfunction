tag @s add vpSummoned
execute unless predicate vanilla_plus:30_percent run return 0
execute store result score @s vpHoglinAge run data get entity @s Age
execute if score @s vpHoglinAge matches 0.. run summon minecraft:zoglin ~ ~ ~ {IsBaby:0b}
execute unless score @s vpHoglinAge matches 0.. run summon minecraft:zoglin ~ ~ ~ {IsBaby:1b}
data modify entity @s IsBaby set from entity @e[type=minecraft:hoglin,dx=0,limit=1] Age
tp ~ -1024 ~