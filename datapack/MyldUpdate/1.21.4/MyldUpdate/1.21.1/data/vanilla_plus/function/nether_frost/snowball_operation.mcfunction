##
 # snowball_operation.mcfunction
 # 
 #
 # Created by .
##

# particle

# Add tags and Motions
data merge entity @s {Motion:[0.0,0.1,0.0],Tags:["fromZombie","SnowballAttack"]}
data modify entity @s Owner set from entity @e[tag=FrozenZombie,dy=-1,limit=1] UUID
damage @s 0.000000001 generic

# Set OWner
playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 2 0
# data modify entity @s Owner set from entity @e[distance=..5,tag=FrozenZombie,sort=nearest,limit=1] UUID

# Face player
# tp @s ^ ^ ^ facing entity @p[tag=SnowballTarget]

# Get Snowball Position
execute store result score $SnowballTarget PosIX run data get entity @s Pos[0] 1000
execute store result score $SnowballTarget PosIY run data get entity @s Pos[1] 1000
execute store result score $SnowballTarget PosIZ run data get entity @s Pos[2] 1000

#Summon AEC
# execute at @p[tag=SnowballTarget] facing entity @p[tag=SnowballTarget] feet positioned ^ ^1 ^ run summon area_effect_cloud ^ ^2.5 ^0.1 {Duration:0,Tags:["TargetMarker"],Particle:"block air"}
execute on origin on target at @s positioned ~ ~1 ~ run summon minecraft:area_effect_cloud ~ ~2 ~ {Duration:0,Tags:["TargetMarker"],Particle:"block air"}

# Get AEC Position
# execute store result score $SnowballTarget PosFX run data get entity @e[tag=TargetMarker,sort=nearest,limit=1] Pos[0] 1000
# execute store result score $SnowballTarget PosFY run data get entity @e[tag=TargetMarker,sort=nearest,limit=1] Pos[1] 1000
# execute store result score $SnowballTarget PosFZ run data get entity @e[tag=TargetMarker,sort=nearest,limit=1] Pos[2] 1000

execute store result score $SnowballTarget PosFX run data get entity @e[tag=TargetMarker,sort=nearest,limit=1] Pos[0] 1000
execute store result score $SnowballTarget PosFY run data get entity @e[tag=TargetMarker,sort=nearest,limit=1] Pos[1] 1000
execute store result score $SnowballTarget PosFZ run data get entity @e[tag=TargetMarker,sort=nearest,limit=1] Pos[2] 1000

# Calicurate difference
scoreboard players operation $SnowballTarget PosIX -= $SnowballTarget PosFX
scoreboard players operation $SnowballTarget PosIY -= $SnowballTarget PosFY
scoreboard players operation $SnowballTarget PosIZ -= $SnowballTarget PosFZ

execute store result entity @s Motion[0] double -0.0001 run scoreboard players get $SnowballTarget PosIX
execute store result entity @s Motion[1] double -0.0001 run scoreboard players get $SnowballTarget PosIY
execute store result entity @s Motion[2] double -0.0001 run scoreboard players get $SnowballTarget PosIZ
tag @s remove fromZombie

