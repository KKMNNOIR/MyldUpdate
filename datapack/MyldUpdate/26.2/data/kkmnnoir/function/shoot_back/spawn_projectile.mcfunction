# 極小ダメージを与えて召喚後の停止を回避
damage @s 0.000000001 minecraft:generic


# 撃たれた飛び道具のデータを代入
data modify entity @s {} merge from storage kkmnnoir:projectile_data data

# Ownerをvictimの物にする
execute if data entity @s Owner run data modify entity @s Owner set from storage kkmnnoir:projectile_data victim_uuid

# Trident:DealthDamage削除
data remove entity @s[type=minecraft:trident] DealtDamage

# スコアを計算
function kkmnnoir:shoot_back/projectile/spawned/score_op

# スコアをMotionに代入
execute store result entity @s Motion[0] double 0.0001 run scoreboard players get $keSBProjectile keSBProjectileX
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get $keSBProjectile keSBProjectileY
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get $keSBProjectile keSBProjectileZ

# Fireballの場合、Motion[1]を下げる
execute store result entity @s[type=minecraft:fireball] Motion[1] double 0.0001 run scoreboard players get $keSBFireball keSBProjectileY

# storageとscore片付け
data remove storage kkmnnoir:projectile_data data
data remove storage kkmnnoir:projectile_data victim_uuid
data remove storage kkmnnoir:projectile_data type
scoreboard players reset $keSBProjectile keSBProjectileX
scoreboard players reset $keSBProjectile keSBProjectileY
scoreboard players reset $keSBProjectile keSBProjectileZ
scoreboard players reset $keSBAttacker keSBAttackerPositionX
scoreboard players reset $keSBAttacker keSBAttackerPositionY
scoreboard players reset $keSBAttacker keSBAttackerPositionZ
scoreboard players reset $keSBVictim keSBVictimPositionX 
scoreboard players reset $keSBVictim keSBVictimPositionY
scoreboard players reset $keSBVictim keSBVictimPositionZ
scoreboard players reset $keSBCorrection keSBCorrection
scoreboard players reset $keSBFireball keSBFireballCorrection