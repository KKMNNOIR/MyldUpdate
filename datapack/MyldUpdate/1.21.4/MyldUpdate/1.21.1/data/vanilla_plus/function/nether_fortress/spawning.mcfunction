# ネザーレンガの上にいる
execute if block ~ ~-1 ~ #vanilla_plus:fortress_monster_spawnables_on run function vanilla_plus:nether_fortress/spawner_modify/fortress

# ネザーレンガの上にいない
execute unless block ~ ~-1 ~ #vanilla_plus:fortress_monster_spawnables_on run function vanilla_plus:nether_fortress/spawner_modify/others

# 退場

schedule function vanilla_plus:nether_fortress/spawner_modify/minecart_self_kill 2t