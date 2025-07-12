# data merge storage kkmnnoir:miasma_effects {effects:[{id:"minecraft:poison",amplifier:3,duration:100},{id:"minecraft:blindness",amplifier:0,duration:200},{id:"minecraft:hunger",amplifier:0,duration:3600},{id:"minecraft:mining_fatigue",amplifier:3,duration:3600},{id:"minecraft:nausea",amplifier:0,duration:200},{id:"minecraft:slowness",amplifier:6,duration:100},{id:"minecraft:weakness",amplifier:6,duration:120},{id:"minecraft:infested",amplifier:0,duration:3600},{id:"minecraft:oozing",amplifier:0,duration:3600},{id:"minecraft:weaving",amplifier:0,duration:3600},{id:"minecraft:wind_charged",amplifier:0,duration:3600}]}

scoreboard objectives add kkmnMiasmaRadius dummy

# ShootBack
# Score:AttackerPosition
scoreboard objectives add keSBAttackerPositionX dummy
scoreboard objectives add keSBAttackerPositionY dummy
scoreboard objectives add keSBAttackerPositionZ dummy

# Score:VictimPosition
scoreboard objectives add keSBVictimPositionX dummy
scoreboard objectives add keSBVictimPositionY dummy
scoreboard objectives add keSBVictimPositionZ dummy

# Projectile Score
scoreboard objectives add keSBProjectileX dummy
scoreboard objectives add keSBProjectileY dummy
scoreboard objectives add keSBProjectileZ dummy

# Enchantment level correction
scoreboard objectives add keSBCorrection dummy

# エンチャントレベルに応じて撃ち返し速度補正
scoreboard objectives add keSBCorrection dummy

# ガストの火の玉の打ち返し方向補正(何故か勝手にMotionが0.8くらい増えるので)
scoreboard objectives add keSBFireballCorrection dummy
scoreboard players set $keSBFireball keSBFireballCorrection 8000

# Storage:Projectile data
data merge storage kkmnnoir:projectile_data {}