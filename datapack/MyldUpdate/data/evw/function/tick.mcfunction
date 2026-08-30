# Fang:パーティクル
execute as @e[type=minecraft:evoker_fangs,tag=evwEvokedByPlayer,nbt={Warmup:1}] at @s run particle minecraft:dust_color_transition{from_color:[0.588,0.412,0.145],to_color:[1.000,0.929,0.651],scale:1} ~ ~-0.25 ~ 0.25 0.25 0.25 0 10 force

# Vex:
# プレイヤーに攻撃したエンティティに敵対
execute as @e[type=minecraft:vex,tag=evwEvokedByPlayer] at @s run function evw:vex/owner_hurt

# プレイヤーが攻撃したMobに敵対
execute as @e[nbt={HurtTime:9s}] at @s on attacker if entity @s[type=minecraft:player] run function evw:vex/hurt_mob_init

# Blue Sheep:詠唱スコア加算
execute as @e[type=minecraft:sheep,scores={evwWololoCasting=1..}] at @s run function evw:used_wand/change_sheep_colour/timer_count