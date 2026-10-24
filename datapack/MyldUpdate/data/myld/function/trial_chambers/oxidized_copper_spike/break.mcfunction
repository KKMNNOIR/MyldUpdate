##
 # break.mcfunction
 # 
 #
 # Created by .
##
# 演出
playsound minecraft:block.copper.break block @a ~ ~ ~ 1 1
particle block{block_state:"minecraft:oxidized_copper"} ~ ~0.5 ~ 0.125 0.5 0.125 0 20
# particle block{block_state:"minecraft:oxidized_copper"} ~ ~1 ~ 0.125 0.125 0.125 0 5

# 適正ツールを持っていれば、ドロップ
execute on attacker if predicate vanilla_plus:trial_chambers/oxidized_copper_spike_mining_tools run loot spawn ~ ~1 ~ loot vanilla_plus:blocks/oxidized_copper_spike

# 棘破壊
execute on passengers run kill @s[type=minecraft:item_display,tag=vpOxidizedCopperSpike]

# 退場
kill @s