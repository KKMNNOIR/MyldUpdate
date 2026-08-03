##
 # success.mcfunction
 # 
 #
 # Created by .
##
# summon minecraft:husk ~ ~ ~ {Tags: ["ReplacedHusk"]}
# tp ~ -200 ~
# execute as @e[tag=ReplacedHusk] at @s if biome ~ ~ ~ vanilla_plus:desert_cave run data modify entity @s {} merge from storage vanilla_plus:zombie_data {}
data modify entity @s {} merge from entity @n[dx=0,type=minecraft:zombie,tag=Done] {}
execute as @n[dx=0,type=minecraft:zombie] at @s run tp ~ -200 ~