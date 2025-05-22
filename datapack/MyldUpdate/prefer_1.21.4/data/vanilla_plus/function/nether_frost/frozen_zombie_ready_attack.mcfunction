##
 # frozen_zombie_ready_attack.mcfunction
 # 
 #
 # Created by .
##
# Timer set
scoreboard players add @s SnowballTimer 1
execute as @s[scores={SnowballTimer=650..}] run function vanilla_plus:nether_frost/throw_snowball