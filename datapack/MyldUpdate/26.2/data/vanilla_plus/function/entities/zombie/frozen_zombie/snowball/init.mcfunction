# タイマーセット
scoreboard players add @s SnowballTimer 1

# 一定値に達したら投げる
execute as @s[scores={SnowballTimer=650..}] run function vanilla_plus:nether_frost/frozen_zombie/snowball/throw