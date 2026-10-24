# Blaze score operations
execute as @s[tag=!vpMaxHealthRegistered] run function myld:volcanic/max_health_register
function myld:volcanic/blaze_score_operation
execute as @s[predicate=myld:blaze_on_fire] unless score @s vpBlazeCurrentHealth = @s vpBlazeMaxHealth unless score @s vpBlazeHealingTimer = @s vpBlazeHealingTimer run function myld:volcanic/heal_blaze
function myld:volcanic/heal_timer