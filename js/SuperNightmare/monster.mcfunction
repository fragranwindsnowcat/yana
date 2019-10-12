# ------------ 怪物強化 ------------
scoreboard players tag @e[type=Zombie,tag=!Done] add Convert
scoreboard players tag @e[type=Skeleton,tag=!Done] add Convert
scoreboard players tag @e[type=creeper,tag=!Done] add Convert
scoreboard players tag @e[type=spider,tag=!Done] add Convert
scoreboard players tag @e[type=slime,tag=!Done] add Convert
scoreboard players set @e[tag=Convert] digit 0
scoreboard players operation @e[tag=Convert] digit = @r[type=armor_stand,tag=Random] digit
scoreboard players tag @e[type=!armor_stand,score_digit=1] add Boss
execute @e[tag=Convert] ~ ~ ~ entitydata @s[type=Zombie,tag=Boss] {CustomName:"不朽屍王",CustomNameVisible:1,Attributes:[{Name:generic.maxHealth,Base:50}],Health:50.0f,HandItems:[{Count:1,id:diamond_sword},{Count:1,id:diamond_sword}],ArmorItems:[{Count:1,id:diamond_boots,Damage:300},{Count:1,id:command_block},{Count:1,id:diamond_chestplate,Damage:500},{Count:1,id:diamond_helmet,Damage:300}],ArmorDropChances:[0.05f,1.0f,0.05f,0.05f]}
execute @e[tag=Convert] ~ ~ ~ entitydata @s[type=Skeleton,tag=Boss] {CustomName:"我很會射",CustomNameVisible:1,Attributes:[{Name:generic.maxHealth,Base:50}],Health:50.0f,ArmorItems:[{Count:1,id:diamond_boots,Damage:300},{Count:1,id:command_block},{Count:1,id:diamond_chestplate,Damage:500},{Count:1,id:diamond_helmet,Damage:300}],ArmorDropChances:[0.05f,1.0f,0.05f,0.05f]}
execute @e[tag=Convert] ~ ~ ~ entitydata @s[type=Creeper,tag=Boss] {CustomName:"高壓蠕蟲",CustomNameVisible:1,Attributes:[{Name:generic.maxHealth,Base:50}],Health:50.0f,powered:1,ArmorItems:[{Count:1,id:command_block},{},{},{}],ArmorDropChances:[1.0f,0.0f,0.0f,0.0f]}
execute @e[tag=Convert] ~ ~ ~ entitydata @s[type=Spider,tag=Boss] {CustomName:"黑寡婦",CustomNameVisible:1,Attributes:[{Name:generic.maxHealth,Base:50}],Health:50.0f,ArmorItems:[{Count:1,id:barrier},{Count:1,id:command_block},{},{}],ArmorDropChances:[1.0f,1.0f,0.0f,0.0f]}
execute @e[tag=Convert] ~ ~ ~ entitydata @s[type=Slime,tag=Boss] {Size:5,CustomName:"巨大果凍",CustomNameVisible:1,Attributes:[{Name:generic.maxHealth,Base:200}],Health:200.0f,powered:1,ArmorItems:[{Count:1,id:command_block},{},{},{}],ArmorDropChances:[1.0f,0.0f,0.0f,0.0f]}
scoreboard players tag @e[tag=Convert] add Done
scoreboard players tag @e[tag=Done] remove Convert
# ------------ 所有怪物強化 ------------
execute @e[tag=Done] ~ ~ ~ effect @s speed 1 0 true
execute @e[type=Skeleton,tag=Done] ~ ~ ~ effect @s speed 1 1 true
# ------------ 所有BOSS強化 ------------
effect @e[tag=Boss] glowing 1 0 true
effect @e[tag=Boss] speed 1 1 true
effect @e[tag=Boss] fire_resistance 1 0 true
# ------------ 其他怪物強化 ------------
effect @e[type=spider,tag=Done,score_digit_min=7] invisibility 1 0
scoreboard players tag @e[type=Item] add SpawnSpider {Item:{id:"minecraft:barrier"}}
execute @e[tag=SpawnSpider] ~ ~ ~ summon minecraft:cave_spider
execute @e[tag=SpawnSpider] ~ ~ ~ summon minecraft:cave_spider
execute @e[tag=SpawnSpider] ~ ~ ~ summon minecraft:cave_spider
execute @e[tag=SpawnSpider] ~ ~ ~ summon minecraft:cave_spider
execute @e[tag=SpawnSpider] ~ ~ ~ summon minecraft:cave_spider
kill @e[tag=SpawnSpider]
# ------------ BOSS 特效 ------------
execute @e[tag=Boss] ~ ~ ~ particle flame ~ ~1 ~ 0.5 0.5 0.5 0 1
execute @e[tag=Boss,type=Zombie,rx=-20,rxm=-90] ~ ~ ~ effect @s minecraft:levitation 1 1 true
# ------------ BOSS 掉落物 ------------
scoreboard players tag @e[type=Item] add BossDrop {Item:{id:"minecraft:command_block"}}
execute @e[tag=BossDrop] ~ ~ ~ summon Item ~ ~ ~ {Item:{id:emerald,Count:10}}
execute @e[tag=BossDrop] ~ ~ ~ summon minecraft:xp_orb ~.1 ~ ~.1 {Value:50}
execute @e[tag=BossDrop] ~ ~ ~ summon minecraft:xp_orb ~.1 ~ ~ {Value:50}
execute @e[tag=BossDrop] ~ ~ ~ summon minecraft:xp_orb ~.1 ~ ~-.1 {Value:50}
execute @e[tag=BossDrop] ~ ~ ~ summon minecraft:xp_orb ~.1 ~ ~.1 {Value:50}
execute @e[tag=BossDrop] ~ ~ ~ summon minecraft:xp_orb ~.1 ~ ~ {Value:50}
execute @e[tag=BossDrop] ~ ~ ~ summon minecraft:xp_orb ~.1 ~ ~-.1 {Value:50}
execute @e[tag=BossDrop] ~ ~ ~ summon minecraft:xp_orb ~.1 ~ ~.1 {Value:50}
execute @e[tag=BossDrop] ~ ~ ~ summon minecraft:xp_orb ~.1 ~ ~ {Value:50}
execute @e[tag=BossDrop] ~ ~ ~ summon minecraft:xp_orb ~.1 ~ ~-.1 {Value:50}
execute @e[tag=BossDrop] ~ ~ ~ summon minecraft:xp_orb ~.1 ~ ~ {Value:50}
kill @e[tag=BossDrop]