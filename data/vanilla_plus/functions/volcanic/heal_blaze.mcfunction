particle minecraft:trial_spawner_detection ~ ~1 ~ 0.5 0.5 0.5 0 10
execute store result entity @s Health float 1 run scoreboard players add @s vpBlazeCurrentHealth 1
scoreboard players set @s vpBlazeHealingTimer 3