summon minecraft:zombie_horse ~ ~ ~ \
{equipment:\
 {body:{\
  id:"minecraft:leather_horse_armor",\
  components:{\
   "minecraft:dyed_color":6192150,\
   "minecraft:enchantments":{"kkmnnoir:sanitize":1}\
   }\
  },\
  saddle: {id:"minecraft:saddle"}\
 },\
drop_chances:{body:0.0f},\
attributes:[\
 {id:"minecraft:movement_speed",base:0.334},\
 {id:"minecraft:max_health",base:60}\
],Tame:1b,SaddleItem:{id:"minecraft:saddle"},Tags:["vpBurstingMiasmaHorse"]}
ride @s mount @n[tag=vpBurstingMiasmaHorse,dx=0]
tag @s add vpMiasmaRided