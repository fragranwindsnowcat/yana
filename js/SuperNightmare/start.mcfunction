# ------------ 前置設定 ------------
time set day
weather thunder
difficulty 3
gamerule commandBlockOutput false
gamerule naturalRegeneration false
gamerule sendCommandFeedback false
setworldspawn ~ ~ ~
execute @a ~ ~ ~ gamemode s @p
execute @a ~ ~ ~ clear @p
# ------------ 記分板設定 ------------
scoreboard objectives add timer dummy
scoreboard objectives add digit dummy
scoreboard objectives add endurance dummy 疲勞值
scoreboard objectives add endurance1 dummy 暫存疲勞值
scoreboard objectives add endurance2 dummy 顯示疲勞值
scoreboard objectives add run stat.sprintOneCm 跑步
scoreboard objectives add jump stat.jump 跳
scoreboard objectives add sleep stat.sleepInBed 睡床
scoreboard objectives add water dummy 身體水份
scoreboard objectives add water1 dummy 暫存身體水份
scoreboard objectives add water2 dummy 顯示身體水份
scoreboard objectives add hungry food 玩家飢餓值
scoreboard objectives add drink stat.useItem.minecraft.potion 喝水
scoreboard objectives add drink1 stat.useItem.minecraft.milk_bucket 喝牛奶
scoreboard objectives add drink2 stat.useItem.minecraft.mushroom_stew 喝蘑菇湯
scoreboard objectives add drink3 stat.useItem.minecraft.beetroot_soup 喝甜菜湯
scoreboard objectives add drink4 stat.useItem.minecraft.rabbit_stew 喝兔肉湯
scoreboard objectives add swim stat.swimOneCm 游泳
scoreboard objectives add dive stat.diveOneCm 潛水
scoreboard objectives add dig1 stat.useItem.minecraft.wooden_sword
scoreboard objectives add dig2 stat.useItem.minecraft.wooden_shovel
scoreboard objectives add dig3 stat.useItem.minecraft.wooden_pickaxe
scoreboard objectives add dig4 stat.useItem.minecraft.wooden_axe
scoreboard objectives add dig5 stat.useItem.minecraft.wooden_hoe
scoreboard objectives add dig6 stat.useItem.minecraft.stone_sword
scoreboard objectives add dig7 stat.useItem.minecraft.stone_shovel
scoreboard objectives add dig8 stat.useItem.minecraft.stone_pickaxe
scoreboard objectives add dig9 stat.useItem.minecraft.stone_axe
scoreboard objectives add dig10 stat.useItem.minecraft.stone_hoe
scoreboard objectives add dig11 stat.useItem.minecraft.iron_sword
scoreboard objectives add dig12 stat.useItem.minecraft.iron_shovel
scoreboard objectives add dig13 stat.useItem.minecraft.iron_pickaxe
scoreboard objectives add dig14 stat.useItem.minecraft.iron_axe
scoreboard objectives add dig15 stat.useItem.minecraft.iron_hoe
scoreboard objectives add dig16 stat.useItem.minecraft.golden_sword
scoreboard objectives add dig17 stat.useItem.minecraft.golden_shovel
scoreboard objectives add dig18 stat.useItem.minecraft.golden_pickaxe
scoreboard objectives add dig19 stat.useItem.minecraft.golden_axe
scoreboard objectives add dig20 stat.useItem.minecraft.golden_hoe
scoreboard objectives add dig21 stat.useItem.minecraft.diamond_sword
scoreboard objectives add dig22 stat.useItem.minecraft.diamond_shovel
scoreboard objectives add dig23 stat.useItem.minecraft.diamond_pickaxe
scoreboard objectives add dig24 stat.useItem.minecraft.diamond_axe
scoreboard objectives add dig25 stat.useItem.minecraft.diamond_hoe
scoreboard objectives add InNether dummy
scoreboard players set @a endurance2 0
scoreboard players set @a water 800
# ------------ 盔甲架設定 ------------
summon armor_stand ~ 0 ~ {NoGravity:1,Invisible:1,UUIDMost:8787,UUIDLeast:0,Tags:[HG]}
summon armor_stand ~ 0 ~ {NoGravity:1,Invisible:1,UUIDMost:8787,UUIDLeast:1,Tags:[Random,HG1]}
summon armor_stand ~ 0 ~ {NoGravity:1,Invisible:1,UUIDMost:8787,UUIDLeast:2,Tags:[Random,HG2]}
summon armor_stand ~ 0 ~ {NoGravity:1,Invisible:1,UUIDMost:8787,UUIDLeast:3,Tags:[Random,HG3]}
summon armor_stand ~ 0 ~ {NoGravity:1,Invisible:1,UUIDMost:8787,UUIDLeast:4,Tags:[Random,HG4]}
summon armor_stand ~ 0 ~ {NoGravity:1,Invisible:1,UUIDMost:8787,UUIDLeast:5,Tags:[Random,HG5]}
summon armor_stand ~ 0 ~ {NoGravity:1,Invisible:1,UUIDMost:8787,UUIDLeast:6,Tags:[Random,HG6]}
summon armor_stand ~ 0 ~ {NoGravity:1,Invisible:1,UUIDMost:8787,UUIDLeast:7,Tags:[Random,HG7]}
summon armor_stand ~ 0 ~ {NoGravity:1,Invisible:1,UUIDMost:8787,UUIDLeast:8,Tags:[Random,HG8]}
summon armor_stand ~ 0 ~ {NoGravity:1,Invisible:1,UUIDMost:8787,UUIDLeast:9,Tags:[Random,HG9]}
summon armor_stand ~ 0 ~ {NoGravity:1,Invisible:1,UUIDMost:8787,UUIDLeast:10,Tags:[Random,HG10]}
scoreboard players set @e[tag=HG1] digit 1
scoreboard players set @e[tag=HG2] digit 2
scoreboard players set @e[tag=HG3] digit 3
scoreboard players set @e[tag=HG4] digit 4
scoreboard players set @e[tag=HG5] digit 5
scoreboard players set @e[tag=HG6] digit 6
scoreboard players set @e[tag=HG7] digit 7
scoreboard players set @e[tag=HG8] digit 8
scoreboard players set @e[tag=HG9] digit 9
scoreboard players set @e[tag=HG10] digit 10
execute @e[tag=HG] ~ ~ ~ summon armor_stand ~ 1 ~ {Tags:["delay"],PortalCooldown:20}
# ------------ 執行其他連閃 ------------
gamerule gameLoopFunction hageeshow:supernightmare/timer
# ------------ 顯示安裝成功 ------------
tellraw @a ["",{"text":"【夢魘生存】","color":"light_purple"},{"text":"安裝成功！","color":"green"}]
tellraw @a ["",{"text":"【夢魘生存】","color":"light_purple"},{"text":"目前遊戲為Ver 1.4 (將持續更新)","color":"green"}]
tellraw @a ["",{"text":"【夢魘生存】","color":"light_purple"},{"text":"更新日期：2017.09.14 19:23","color":"gray"}]
execute @a ~ ~ ~ playsound minecraft:entity.player.levelup block @a
give @p written_book 1 0 {title:"【 夢魘生存說明書 】",author:"哈記Hagee",pages:["[\"\",{\"text\":\"   【 夢魘生存說明書 】\\n\\n\",\"color\":\"dark_purple\"},{\"text\":\" 玩膩了一般的生存嗎？\\n 挑戰過極限模式了嗎？\\n 連超極限生存都不吸引你？\\n\\n 試試看這個 \",\"color\":\"black\"},{\"text\":\"夢魘生存\",\"color\":\"gold\"},{\"text\":\" ！\\n 將大幅提高生存困難度\\n 如果仍然覺得不夠刺激\\n 沒關係！這個生存會越來越難\\n 只要持續更新此指令檔案\\n 絕對滿足大大們的需求！\",\"color\":\"none\"}]","[\"\",{\"text\":\" ● 疲勞值\\n\",\"color\":\"dark_blue\"},{\"text\":\"玩家將會看到自己的疲勞值，跑步和跳躍將會提升疲勞值。\\n疲勞值大於 30%獲得緩速1\\n疲勞值大於 60%獲得緩速3\\n疲勞值大於 90%獲得緩速5\\n疲勞值大於 100%直接過勞死\\n\\n玩家無法利用床度過晚上，\\n但可以站在床上，\\n快速恢復疲勞值。\",\"color\":\"black\"}]","[\"\",{\"text\":\" ● 身體水份\\n\",\"color\":\"dark_aqua\"},{\"text\":\"正常的玩家身體需要水份，而水份會慢慢逐漸流失。\\n身體水份小於 30%挖掘減速1\\n身體水份小於 20%挖掘減速3\\n身體水份小於 10%挖掘減速5\\n身體水份小於 0%脫水而死\\n\\n玩家可以喝水回復身體水份，\\n也可以站在水裡用皮膚吸收水份！\",\"color\":\"black\"}]","[\"\",{\"text\":\" ● 永久虛弱\\n\",\"color\":\"blue\"},{\"text\":\"玩家將會永久獲得虛弱效果，當玩家攻擊力為0時，將無法對怪物造成任何傷害和擊退效果！\\n\\n\",\"color\":\"black\"},{\"text\":\" ● 怪物強化\\n\",\"color\":\"gold\"},{\"text\":\"怪物的跑速將會大幅提升，怪物也有機率有隱形效果。\",\"color\":\"black\"}]","[\"\",{\"text\":\" ● 隨機 BOSS\\n\",\"color\":\"dark_green\"},{\"text\":\"各種怪物將有機會變成菁英怪！菁英等級的怪物血量非常高、速度非常快，自帶發光效果和抗火特性。\",\"color\":\"black\"}]"]}