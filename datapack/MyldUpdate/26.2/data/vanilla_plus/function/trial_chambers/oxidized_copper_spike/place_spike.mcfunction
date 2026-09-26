##
 # placed.mcfunction
 # 
 #
 # Created by .
##
# advancement revoke @s only vanilla_plus:trial_chambers/function/placed_spike
playsound minecraft:block.copper.place block @a ~ ~ ~ 1 1
summon minecraft:item_display ~ ~0.5 ~ {Tags:["vpOxidizedCopperSpike"],item:{id:"minecraft:armor_stand",components:{"minecraft:entity_data":{id:"minecraft:armor_stand"},"minecraft:custom_model_data":10000,"minecraft:custom_data":{blockstates:{activate:true,damage_item:false}}}},scale:[1.0f,1.0f,1.0f]}
summon minecraft:interaction ~ ~ ~ {Tags:["vpOxidizedCopperSpikeInteraction"],width:0.9f,height:1.5f}
kill @s