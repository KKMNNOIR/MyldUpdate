# Tag と Motion、Owner付与
data merge entity @s {Motion:[0.0,0.1,0.0],Tags:["fromZombie","SnowballAttack"]}
data modify entity @s Owner set from entity @e[tag=FrozenZombie,dy=-1,limit=1] UUID

# 挙動調整用微量のダメージ
damage @s 0.000000001 generic

# 演出：投げる音を鳴らす
playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 2 0
# data modify entity @s Owner set from entity @e[distance=..5,tag=FrozenZombie,sort=nearest,limit=1] UUID

# Face player
# tp @s ^ ^ ^ facing entity @p[tag=SnowballTarget]

# 雪玉の座標をスコアに保存
execute store result score $SnowballTarget PosIX run data get entity @s Pos[0] 1000
execute store result score $SnowballTarget PosIY run data get entity @s Pos[1] 1000
execute store result score $SnowballTarget PosIZ run data get entity @s Pos[2] 1000

# AECをターゲットの頭上に召喚
# execute at @p[tag=SnowballTarget] facing entity @p[tag=SnowballTarget] feet positioned ^ ^1 ^ run summon area_effect_cloud ^ ^2.5 ^0.1 {Duration:0,Tags:["TargetMarker"],Particle:"block air"}
execute on origin on target at @s positioned ~ ~1 ~ run summon minecraft:area_effect_cloud ~ ~2 ~ {Duration:0,Tags:["TargetMarker"],custom_particle:{type:"minecraft:block",block_state:{Name:"minecraft:air"}}}

# AECの座標をスコアに保存
execute store result score $SnowballTarget PosFX run data get entity @e[tag=TargetMarker,sort=nearest,limit=1] Pos[0] 1000
execute store result score $SnowballTarget PosFY run data get entity @e[tag=TargetMarker,sort=nearest,limit=1] Pos[1] 1000
execute store result score $SnowballTarget PosFZ run data get entity @e[tag=TargetMarker,sort=nearest,limit=1] Pos[2] 1000

# 雪玉 - ターゲット
scoreboard players operation $SnowballTarget PosIX -= $SnowballTarget PosFX
scoreboard players operation $SnowballTarget PosIY -= $SnowballTarget PosFY
scoreboard players operation $SnowballTarget PosIZ -= $SnowballTarget PosFZ

# 結果をMotionに代入
execute store result entity @s Motion[0] double -0.0001 run scoreboard players get $SnowballTarget PosIX
execute store result entity @s Motion[1] double -0.0001 run scoreboard players get $SnowballTarget PosIY
execute store result entity @s Motion[2] double -0.0001 run scoreboard players get $SnowballTarget PosIZ

# タグ除去
tag @s remove fromZombie

