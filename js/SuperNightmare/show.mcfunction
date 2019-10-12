# ------------ 開場文本設計 ------------
execute @e[score_timer_min=1,score_timer=1] ~ ~ ~ effect @a blindness 25 1 true
execute @e[score_timer_min=1,score_timer=1] ~ ~ ~ effect @a resistance 33 5 true
execute @e[score_timer_min=1,score_timer=1] ~ ~ ~ effect @a saturation 5 255 true
execute @e[score_timer_min=1,score_timer=1] ~ ~ ~ effect @a regeneration 5 255 true
execute @e[score_timer_min=1,score_timer=1] ~ ~ ~ tp @a ~ ~2100 ~ ~ -90
execute @e[score_timer_min=1,score_timer=1] ~ ~ ~ title @a title ["",{"text":"▶夢魘生存◀","color":"green"}]
execute @e[score_timer_min=1,score_timer=1] ~ ~ ~ title @a subtitle ["",{"text":"Super NightMare Survive","color":"dark_red"}]
execute @e[score_timer_min=5,score_timer=5] ~ ~ ~ title @a title ["",{"text":"這將會是你的噩夢","color":"white"}]
execute @e[score_timer_min=5,score_timer=5] ~ ~ ~ title @a subtitle ["",{"text":"These will be your NightMare","color":"blue"}]
execute @e[score_timer_min=9,score_timer=9] ~ ~ ~ title @a title ["",{"text":"玩家將會被虛弱","color":"white"}]
execute @e[score_timer_min=9,score_timer=9] ~ ~ ~ title @a subtitle ["",{"text":"你將會獲得永久虛弱效果","color":"blue"}]
execute @e[score_timer_min=9,score_timer=9] ~ ~ ~ execute @a ~ ~ ~ playsound minecraft:entity.player.breath block @p ~ ~ ~ 1 0.5
execute @e[score_timer_min=13,score_timer=13] ~ ~ ~ title @a title ["",{"text":"怪物將會被強化","color":"white"}]
execute @e[score_timer_min=13,score_timer=13] ~ ~ ~ title @a subtitle ["",{"text":"怪物將會獲得永久力量效果","color":"blue"}]
execute @e[score_timer_min=13,score_timer=13] ~ ~ ~ execute @a ~ ~ ~ playsound minecraft:entity.zombie.ambient block @p ~ ~ ~ 1 0.8
execute @e[score_timer_min=17,score_timer=17] ~ ~ ~ title @a title ["",{"text":"隨機產生強化BOSS","color":"white"}]
execute @e[score_timer_min=17,score_timer=17] ~ ~ ~ title @a subtitle ["",{"text":"將隨機生成王級怪物","color":"blue"}]
execute @e[score_timer_min=17,score_timer=17] ~ ~ ~ execute @a ~ ~ ~ playsound minecraft:entity.blaze.ambient block @p ~ ~ ~ 1 0.8
execute @e[score_timer_min=21,score_timer=21] ~ ~ ~ title @a title ["",{"text":"傳奇將由你達成","color":"white"}]
execute @e[score_timer_min=21,score_timer=21] ~ ~ ~ title @a subtitle ["",{"text":"Legend will be accomplished by you","color":"blue"}]
execute @e[score_timer_min=21,score_timer=21] ~ ~ ~ execute @a ~ ~ ~ playsound minecraft:entity.blaze.ambient block @p ~ ~ ~ 1 0.8
execute @e[score_timer_min=25,score_timer=25] ~ ~ ~ title @a title ["",{"text":"即將開始創造你的噩夢生存！","color":"white"}]
execute @e[score_timer_min=25,score_timer=25] ~ ~ ~ title @a subtitle ["",{"text":"Your nightmare survival has begun to create","color":"green"}]
execute @e[score_timer_min=25,score_timer=25] ~ ~ ~ execute @a ~ ~ ~ playsound minecraft:entity.enderdragon.growl block @p ~ ~ ~ 1 0.8
execute @e[score_timer_min=25,score_timer=25] ~ ~ ~ weather clear
# ------------ 疲勞提醒設計 ------------
execute @a[tag=Tired1] ~ ~ ~ execute @s[tag=!Tired1Done] ~ ~ ~ tellraw @s ["",{"text":"小精靈：您的疲勞值已達30%，已經覺得疲累了！","color":"gray"}]
execute @a[tag=Tired1] ~ ~ ~ execute @s[tag=!Tired1Done] ~ ~ ~ scoreboard players tag @s add Tired1Done
execute @a[tag=!Tired1] ~ ~ ~ execute @s[tag=Tired1Done] ~ ~ ~ scoreboard players tag @s remove Tired1Done
execute @a[tag=Tired2] ~ ~ ~ execute @s[tag=!Tired2Done] ~ ~ ~ tellraw @s ["",{"text":"小精靈：您的疲勞值已達60%，已經非常的疲累了！！","color":"red"}]
execute @a[tag=Tired2] ~ ~ ~ execute @s[tag=!Tired2Done] ~ ~ ~ scoreboard players tag @s add Tired2Done
execute @a[tag=!Tired2] ~ ~ ~ execute @s[tag=Tired2Done] ~ ~ ~ scoreboard players tag @s remove Tired2Done
execute @a[tag=Tired3] ~ ~ ~ execute @s[tag=!Tired3Done] ~ ~ ~ tellraw @s ["",{"text":"小精靈：您的疲勞值已達90%，你快要累死了！！！","color":"dark_red"}]
execute @a[tag=Tired3] ~ ~ ~ execute @s[tag=!Tired3Done] ~ ~ ~ scoreboard players tag @s add Tired3Done
execute @a[tag=!Tired3] ~ ~ ~ execute @s[tag=Tired3Done] ~ ~ ~ scoreboard players tag @s remove Tired3Done
execute @a[tag=Tired4] ~ ~ ~ execute @s[tag=!Tired4Done] ~ ~ ~ tellraw @s ["",{"text":"小精靈：您的疲勞值已達100%，你過勞而死了。","color":"light_purple"}]
execute @a[tag=Tired4] ~ ~ ~ execute @s[tag=!Tired4Done] ~ ~ ~ scoreboard players tag @s add Tired4Done
execute @a[tag=!Tired4] ~ ~ ~ execute @s[tag=Tired4Done] ~ ~ ~ scoreboard players tag @s remove Tired4Done
# ------------ 身體水份設計 ------------
execute @a[tag=Thirst1] ~ ~ ~ execute @s[tag=!Thirst1Done] ~ ~ ~ tellraw @s ["",{"text":"小精靈：您的身體水份已只剩30%，已經覺得口渴了！","color":"gray"}]
execute @a[tag=Thirst1] ~ ~ ~ execute @s[tag=!Thirst1Done] ~ ~ ~ scoreboard players tag @s add Thirst1Done
execute @a[tag=!Thirst1] ~ ~ ~ execute @s[tag=Thirst1Done] ~ ~ ~ scoreboard players tag @s remove Thirst1Done
execute @a[tag=Thirst2] ~ ~ ~ execute @s[tag=!Thirst2Done] ~ ~ ~ tellraw @s ["",{"text":"小精靈：您的身體水份已只剩20%，身體已經缺乏水份了！！","color":"red"}]
execute @a[tag=Thirst2] ~ ~ ~ execute @s[tag=!Thirst2Done] ~ ~ ~ scoreboard players tag @s add Thirst2Done
execute @a[tag=!Thirst2] ~ ~ ~ execute @s[tag=Thirst2Done] ~ ~ ~ scoreboard players tag @s remove Thirst2Done
execute @a[tag=Thirst3] ~ ~ ~ execute @s[tag=!Thirst3Done] ~ ~ ~ tellraw @s ["",{"text":"小精靈：您的身體水份已只剩10%，你已經脫水快要渴死了！！！","color":"dark_red"}]
execute @a[tag=Thirst3] ~ ~ ~ execute @s[tag=!Thirst3Done] ~ ~ ~ scoreboard players tag @s add Thirst3Done
execute @a[tag=!Thirst3] ~ ~ ~ execute @s[tag=Thirst3Done] ~ ~ ~ scoreboard players tag @s remove Thirst3Done
execute @a[tag=Thirst4] ~ ~ ~ execute @s[tag=!Thirst4Done] ~ ~ ~ tellraw @s ["",{"text":"小精靈：您的身體水份已只剩0%，你脫水而死了。","color":"light_purple"}]
execute @a[tag=Thirst4] ~ ~ ~ execute @s[tag=!Thirst4Done] ~ ~ ~ scoreboard players tag @s add Thirst4Done
execute @a[tag=!Thirst4] ~ ~ ~ execute @s[tag=Thirst4Done] ~ ~ ~ scoreboard players tag @s remove Thirst4Done