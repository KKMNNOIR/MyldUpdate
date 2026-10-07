# $summon minecraft:slime ~ ~ ~ {Size:$(Size),ArmorItems:[{},{},{"id":"minecraft:chainmail_chestplate",components:{"minecraft:enchantments":{levels:{"kkmnnoir:oozing":$(oozing_level)}}}},{}]}
# $summon minecraft:slime ~ ~ ~ {Size:$(Size),ArmorItems:[{},{},{"id":"minecraft:chainmail_chestplate",components:{"minecraft:enchantments":{levels:{"kkmnnoir:oozing":$(oozing_level)}}}},{}]}

summon minecraft:slime ~ ~ ~ {Size:$(size),equipment:{chest:{id:"minecraft:chainmail_chestplate",components:{"minecraft:enchantments":{"kkmnnoir:oozing":$(level)}}}}}