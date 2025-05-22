# 前提：ネザーでスポーンした
## vpNetherSpawnedをタグ付け

# 要塞でスポーンした
## vpFortressSpawnedをタグ付け

# ソウルサンド版の要塞のモンスターに限定

# 要塞のスポーン範囲：全体
# 要塞内に出したいmobとそうじゃないmobを纏めて登録してある
## ウィザースケルトン, スケルトン, ブレイズ, マグマキューブ, ゾンビピグリン, ガスト,エンダーマン
## 要塞内に出したいmob : ウィザースケルトン, スケルトン, ブレイズ, マグマキューブ, ゾンビピグリン
### エンダーマンとガスト: 要塞パーツ外, 中心から一定範囲内の距離, 要塞構築ブロック上 => 奈落tp
### 或いは 要塞パーツ内 => 奈落tp
## 要塞に出したいmobがパーツ外 / 要塞構築ブロック上にいない => 奈落tp

# ソウルサンド版要塞モンスター - 要塞モンスター: 要塞パーツ内 => 奈落tp
execute as @s[type=!#knf:nether_fortress_monsters,predicate=knf:in_fortress_or_on_bricks] at @s run tp ~ -64 ~

# ソウルサンド版要塞モンスター - 要塞モンスター: 要塞パーツ外, 中心から一定範囲内の距離, 要塞構築ブロック上 => 奈落tp
execute as @s[type=!#knf:nether_fortress_monsters,predicate=knf:in_fortress_or_on_bricks] at @s run execute at @e[type=minecraft:block_display,tag=knfFortressCenter,sort=nearest] if predicate knf:distance_from_center run tp ~ -64 ~

# 要塞モンスター
## 要塞パーツ外 AND 中心から一定範囲内の距離 AND構築ブロック上じゃない
execute as @s[type=#knf:nether_fortress_monsters,predicate=!knf:in_fortress_or_on_bricks] at @e[type=minecraft:block_display,tag=knfFortressCenter,sort=nearest] if predicate knf:distance_from_center run tp ~ -64 ~

tag @s add vpFortressSpawned