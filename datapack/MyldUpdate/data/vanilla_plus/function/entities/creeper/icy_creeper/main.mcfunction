# エフェクト
particle dust_color_transition{from_color:[0.149,0.773,1.000],scale:1,to_color:[0.910,0.976,1.000]} ~ ~ ~ 0.25 0.5 0.25 5 10 force
# execute if entity @p[distance=..3,gamemode=!creative] run data modify entity @s active_effects append value {Id:2,ShowParticles:1b,Amplifier:2b,Duration:120}

# ターゲットに近づいたら、もしくは着火したら立ち止まる
execute if function vanilla_plus:entities/creeper/icy_creeper/check_stop run effect give @s minecraft:slowness 6 2 true