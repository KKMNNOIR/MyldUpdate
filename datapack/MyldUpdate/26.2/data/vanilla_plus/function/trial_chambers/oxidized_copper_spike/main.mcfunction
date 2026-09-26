# 開発室にいない場合、lock解除
execute unless dimension vanilla_plus:development_room run data modify entity @s item.components."minecraft:custom_data".lock set value 0b

# lock:0bの場合、interactionにride
execute if data entity @s {item:{components:{"minecraft:custom_data":{blockstates:{lock:0b}}}}} unless predicate vanilla_plus:trial_chambers/oxidized_copper_spike/is_riding_on_interaction run function vanilla_plus:trial_chambers/oxidized_copper_spike/mount