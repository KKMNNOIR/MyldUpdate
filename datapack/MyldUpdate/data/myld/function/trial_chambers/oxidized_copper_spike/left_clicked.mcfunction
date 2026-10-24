##
 # left_clicked.mcfunction
 # 
 #
 # Created by .
##
advancement revoke @s only myld:trial_chambers/function/attack_spike
execute as @e[tag=vpOxidizedCopperSpikeInteraction] at @s if data entity @s attack run function myld:trial_chambers/oxidized_copper_spike/break