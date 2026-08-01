##
 # left_clicked.mcfunction
 # 
 #
 # Created by .
##
advancement revoke @s only vanilla_plus:trial_chambers/function/attack_spike
execute as @e[tag=vpOxidizedCopperSpikeInteraction] at @s if data entity @s attack run function vanilla_plus:trial_chambers/oxidized_copper_spike/break