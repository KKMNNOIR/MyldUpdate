##
 # success.mcfunction
 # 
 #
 # Created by .
##
# summon minecraft:husk ~ ~ ~ {Tags: ["ReplacedHusk"]}
# tp ~ -200 ~
# execute as @e[tag=ReplacedHusk] at @s if biome ~ ~ ~ vanilla_plus:desert_cave run data modify entity @s {} merge from storage vanilla_plus:zombie_data {}
data modify entity @s {} merge from entity @e[dx=0,type=minecraft:zombie,tag=Done,limit=1] {}
execute as @e[dx=0] at @s run tp ~ -200 ~