data modify entity @s {} merge from entity @e[dx=0,type=minecraft:zombie,tag=Done,limit=1] {}
execute as @e[dx=0] at @s run tp ~ -200 ~