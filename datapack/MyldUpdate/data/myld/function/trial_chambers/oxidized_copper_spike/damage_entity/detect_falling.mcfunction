##
 # detect_falling.mcfunction
 # 
 #
 # Created by .
##
# storageに保存
function myld:trial_chambers/oxidized_copper_spike/store_data

# スコアに保存
# execute store result score @s vpCopperSpikeFallingDistance run data get storage myld:falling_distance FallDistance
# scoreboard players operation @s vpCopperSpikeFallingDistance *= $OxidizedCopperSpike vpCopperSpikeDamageConstant2
# scoreboard players add @s vpCopperSpikeFallingDistance 2

# 計算
data modify storage myld:falling_distance FinalDamage set compute entity @s float myld:trial_chambers/oxidized_copper_spike/damage
# execute store result storage myld:falling_distance FinalDamage float 1.0 run scoreboard players get @s vpCopperSpikeFallingDistance

# ダメージ
function myld:trial_chambers/oxidized_copper_spike/damage_entity/damage_entity with storage myld:falling_distance {}