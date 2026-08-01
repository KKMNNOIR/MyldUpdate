# 飛び道具のMotion用スコア = 終点用座標スコア
scoreboard players operation $keSBProjectile keSBProjectileX = $keSBAttacker keSBAttackerPositionX
scoreboard players operation $keSBProjectile keSBProjectileY = $keSBAttacker keSBAttackerPositionY
scoreboard players operation $keSBProjectile keSBProjectileZ = $keSBAttacker keSBAttackerPositionZ
scoreboard players operation $keSBFireball keSBFireballCorrection = $keSBAttacker keSBAttackerPositionY

# 終点 - 始点
scoreboard players operation $keSBProjectile keSBProjectileX -= $keSBVictim keSBVictimPositionX
scoreboard players operation $keSBProjectile keSBProjectileY -= $keSBVictim keSBVictimPositionY
scoreboard players operation $keSBProjectile keSBProjectileZ -= $keSBVictim keSBVictimPositionZ
scoreboard players operation $keSBFireball keSBProjectileY -= $keSBVictim keSBProjectileY

# 補正
scoreboard players operation $keSBProjectile keSBProjectileX *= $keSBCorrection keSBCorrection
scoreboard players operation $keSBProjectile keSBProjectileZ *= $keSBCorrection keSBCorrection
scoreboard players operation $keSBFireball keSBProjectileY -= $keSBFireball keSBFireballCorrection