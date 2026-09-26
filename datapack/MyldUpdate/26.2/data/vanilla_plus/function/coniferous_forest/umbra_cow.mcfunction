tag @s add vpUmbraCow
team join NameHidden @s
data modify entity @s CustomName set value '{"text":"Umbra Cow","italic":false}'
data modify entity @s DeathLootTable set value "vanilla_plus:entities/umbra_cow"
data modify entity @s Passengers merge value {id:"minecraft:interaction",width:1f,height:2f,response:1b,Tags:["vpUmbraCowClickPoint"]}