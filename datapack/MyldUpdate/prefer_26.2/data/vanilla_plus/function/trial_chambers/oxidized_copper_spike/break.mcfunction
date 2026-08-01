##
 # break.mcfunction
 # 
 #
 # Created by .
##
kill @n[type=minecraft:item_display,tag=vpOxidizedCopperSpike]
# data modify entity @n[tag=vpOxidizedCopperSpikeMarker] player.UUID set from storage vanilla_plus:oxidized_copper_spike_player_data player.UUID
# data modify entity @n[tag=vpOxidizedCopperSpikeMarker] player.mining_tool set from storage vanilla_plus:oxidized_copper_spike_player_data player.mining_tool
playsound minecraft:block.copper.break block @a ~ ~ ~ 1 1
particle block{block_state:"minecraft:oxidized_copper"} ~ ~ ~ 0.125 0.125 0.125 0 5
particle block{block_state:"minecraft:oxidized_copper"} ~ ~1 ~ 0.125 0.125 0.125 0 5

execute on attacker if predicate vanilla_plus:trial_chambers/oxidized_copper_spike_mining_tools run loot spawn ~ ~1 ~ loot vanilla_plus:blocks/oxidized_copper_spike
kill @s