##
 # detect_falling.mcfunction
 # 
 #
 # Created by .
##
function vanilla_plus:trial_chambers/oxidized_copper_spike/store_data
execute store result score @s vpCopperSpikeFallingDistance run data get storage vanilla_plus:falling_distance FallDistance
scoreboard players operation @s vpCopperSpikeFallingDistance *= $OxidizedCopperSpike vpCopperSpikeDamageConstant2
scoreboard players add @s vpCopperSpikeFallingDistance 2
execute store result storage vanilla_plus:falling_distance FinalDamage float 1.0 run scoreboard players get @s vpCopperSpikeFallingDistance
function vanilla_plus:trial_chambers/oxidized_copper_spike/damage_entity/damage_entity with storage vanilla_plus:falling_distance {}