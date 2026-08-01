##
 # throw_snowball_others.mcfunction
 # 
 #
 # Created by .
##
summon minecraft:splash_potion ~ ~2 ~ {Motion:[0.0,0.1,0.0],Tags:["fromZombie","SnowballAttack"],Item:{id:"minecraft:snowball",count:1b,components:{"minecraft:potion_contents":{custom_color:10287359,custom_effects:[{id:"minecraft:slowness",amplifier:2,duration:100}]}}}}
execute as @e[tag=fromZombie] at @s run function vanilla_plus:nether_frost/snowball_operation_others
scoreboard players reset @s SnowballTimer

tag @e[tag=SnowballTarget] remove SnowballTarget

# Slowness Resist