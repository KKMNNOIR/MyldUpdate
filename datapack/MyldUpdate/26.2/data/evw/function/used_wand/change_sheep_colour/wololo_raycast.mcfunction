# particle end_rod ~ ~ ~ 0 0 0 0 1 force
execute unless entity @s[distance=..16] run return fail
execute as @e[distance=..1,type=minecraft:sheep,nbt={Color:11b}] at @s run return run function evw:used_wand/change_sheep_colour/timer_count
execute positioned ^ ^ ^0.1 run function evw:used_wand/change_sheep_colour/wololo_raycast