# マーキング
execute as @n[dx=0] run tag @s add evwVexTarget

# 続けてvexに敵対させる
execute at @s if function evw:used_wand/check_exist_vex as @e[type=minecraft:vex,tag=evwEvokedByPlayer,distance=..128] at @s run function evw:vex/hurt_mob

# マーキング解除
execute as @e[tag=evwVexTarget] run tag @s remove evwVexTarget