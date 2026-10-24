# Blaze score operations
execute as @s[tag=!vpMaxHealthRegistered] run function vanilla_plus:volcanic/max_health_register
function vanilla_plus:volcanic/blaze_score_operation
execute as @s[predicate=vanilla_plus:blaze_on_fire] unless score @s vpBlazeCurrentHealth = @s vpBlazeMaxHealth unless score @s vpBlazeHealingTimer = @s vpBlazeHealingTimer run function vanilla_plus:volcanic/heal_blaze
function vanilla_plus:volcanic/heal_timer