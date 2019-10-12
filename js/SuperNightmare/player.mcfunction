# ------------ 顯示疲勞值 ------------
execute @a ~ ~ ~ scoreboard players operation @s endurance1 = @s endurance
execute @a ~ ~ ~ scoreboard players operation @s endurance1 /= @e[tag=HG10] digit
execute @a ~ ~ ~ scoreboard players operation @s endurance1 /= @e[tag=HG10] digit
execute @a ~ ~ ~ scoreboard players operation @s endurance2 = @s endurance1
execute @a ~ ~ ~ title @s actionbar ["",{"text":"疲勞值: ","color":"green"},{"score":{"name":"@s","objective":"endurance2"},"color":"white"},{"text":"% "},{"text":"身體水份: ","color":"dark_blue"},{"score":{"name":"@s","objective":"water2"},"color":"white"},{"text":"% "}]
# ------------ 減少疲勞值 ------------
scoreboard players remove @a[score_endurance_min=1] endurance 5
execute @a[score_endurance_min=2500] ~ ~ ~ scoreboard players remove @a[score_endurance_min=1] endurance 4
execute @a[score_endurance_min=5000] ~ ~ ~ scoreboard players remove @a[score_endurance_min=1] endurance 3
execute @a[score_endurance_min=7500] ~ ~ ~ scoreboard players remove @a[score_endurance_min=1] endurance 2
# ------------ 增加疲勞值 ------------
execute @a[score_swim_min=50] ~ ~ ~ scoreboard players add @p endurance 75
execute @a[score_swim_min=50] ~ ~ ~ scoreboard players set @p swim 0
execute @a[score_dive_min=50] ~ ~ ~ scoreboard players add @p endurance 75
execute @a[score_dive_min=50] ~ ~ ~ scoreboard players set @p dive 0
execute @a[score_run_min=100] ~ ~ ~ scoreboard players add @p endurance 75
execute @a[score_run_min=100] ~ ~ ~ scoreboard players set @p run 0
execute @a[score_jump_min=1] ~ ~ ~ scoreboard players add @p endurance 300
execute @a[score_jump_min=1] ~ ~ ~ scoreboard players set @p jump 0
execute @a[score_dig1_min=1] ~ ~ ~ scoreboard players add @p endurance 200
execute @a[score_dig1_min=1] ~ ~ ~ scoreboard players set @p dig1 0
execute @a[score_dig2_min=1] ~ ~ ~ scoreboard players add @p endurance 200
execute @a[score_dig2_min=1] ~ ~ ~ scoreboard players set @p dig2 0
execute @a[score_dig3_min=1] ~ ~ ~ scoreboard players add @p endurance 200
execute @a[score_dig3_min=1] ~ ~ ~ scoreboard players set @p dig3 0
execute @a[score_dig4_min=1] ~ ~ ~ scoreboard players add @p endurance 200
execute @a[score_dig4_min=1] ~ ~ ~ scoreboard players set @p dig4 0
execute @a[score_dig5_min=1] ~ ~ ~ scoreboard players add @p endurance 200
execute @a[score_dig5_min=1] ~ ~ ~ scoreboard players set @p dig5 0
execute @a[score_dig6_min=1] ~ ~ ~ scoreboard players add @p endurance 200
execute @a[score_dig6_min=1] ~ ~ ~ scoreboard players set @p dig6 0
execute @a[score_dig7_min=1] ~ ~ ~ scoreboard players add @p endurance 200
execute @a[score_dig7_min=1] ~ ~ ~ scoreboard players set @p dig7 0
execute @a[score_dig8_min=1] ~ ~ ~ scoreboard players add @p endurance 200
execute @a[score_dig8_min=1] ~ ~ ~ scoreboard players set @p dig8 0
execute @a[score_dig9_min=1] ~ ~ ~ scoreboard players add @p endurance 200
execute @a[score_dig9_min=1] ~ ~ ~ scoreboard players set @p dig9 0
execute @a[score_dig10_min=1] ~ ~ ~ scoreboard players add @p endurance 200
execute @a[score_dig10_min=1] ~ ~ ~ scoreboard players set @p dig10 0
execute @a[score_dig11_min=1] ~ ~ ~ scoreboard players add @p endurance 200
execute @a[score_dig11_min=1] ~ ~ ~ scoreboard players set @p dig11 0
execute @a[score_dig12_min=1] ~ ~ ~ scoreboard players add @p endurance 200
execute @a[score_dig12_min=1] ~ ~ ~ scoreboard players set @p dig12 0
execute @a[score_dig13_min=1] ~ ~ ~ scoreboard players add @p endurance 200
execute @a[score_dig13_min=1] ~ ~ ~ scoreboard players set @p dig13 0
execute @a[score_dig14_min=1] ~ ~ ~ scoreboard players add @p endurance 200
execute @a[score_dig14_min=1] ~ ~ ~ scoreboard players set @p dig14 0
execute @a[score_dig15_min=1] ~ ~ ~ scoreboard players add @p endurance 200
execute @a[score_dig15_min=1] ~ ~ ~ scoreboard players set @p dig15 0
execute @a[score_dig16_min=1] ~ ~ ~ scoreboard players add @p endurance 200
execute @a[score_dig16_min=1] ~ ~ ~ scoreboard players set @p dig16 0
execute @a[score_dig17_min=1] ~ ~ ~ scoreboard players add @p endurance 200
execute @a[score_dig17_min=1] ~ ~ ~ scoreboard players set @p dig17 0
execute @a[score_dig18_min=1] ~ ~ ~ scoreboard players add @p endurance 200
execute @a[score_dig18_min=1] ~ ~ ~ scoreboard players set @p dig18 0
execute @a[score_dig19_min=1] ~ ~ ~ scoreboard players add @p endurance 200
execute @a[score_dig19_min=1] ~ ~ ~ scoreboard players set @p dig19 0
execute @a[score_dig20_min=1] ~ ~ ~ scoreboard players add @p endurance 200
execute @a[score_dig20_min=1] ~ ~ ~ scoreboard players set @p dig20 0
execute @a[score_dig21_min=1] ~ ~ ~ scoreboard players add @p endurance 200
execute @a[score_dig21_min=1] ~ ~ ~ scoreboard players set @p dig21 0
execute @a[score_dig22_min=1] ~ ~ ~ scoreboard players add @p endurance 200
execute @a[score_dig22_min=1] ~ ~ ~ scoreboard players set @p dig22 0
execute @a[score_dig23_min=1] ~ ~ ~ scoreboard players add @p endurance 200
execute @a[score_dig23_min=1] ~ ~ ~ scoreboard players set @p dig23 0
execute @a[score_dig24_min=1] ~ ~ ~ scoreboard players add @p endurance 200
execute @a[score_dig24_min=1] ~ ~ ~ scoreboard players set @p dig24 0
execute @a[score_dig25_min=1] ~ ~ ~ scoreboard players add @p endurance 200
execute @a[score_dig25_min=1] ~ ~ ~ scoreboard players set @p dig25 0
# ------------ 永久虛弱 ------------
execute @e[tag=delay_end] ~ ~ ~ effect @a weakness 999999 1 true
# ------------ 疲勞設定 ------------
execute @a[score_endurance=2999] ~ ~ ~ scoreboard players tag @s remove Tired1 
execute @a[score_endurance_min=3000,score_endurance=5999] ~ ~ ~ effect @s slowness 1 0 true
execute @a[score_endurance_min=3000,score_endurance=5999] ~ ~ ~ scoreboard players tag @s[tag=!Tired1] add Tired1
execute @a[score_endurance_min=6000] ~ ~ ~ scoreboard players tag @s remove Tired1
execute @a[score_endurance=5999] ~ ~ ~ scoreboard players tag @s remove Tired2
execute @a[score_endurance_min=6000,score_endurance=8999] ~ ~ ~ effect @s slowness 1 2 true
execute @a[score_endurance_min=6000,score_endurance=8999] ~ ~ ~ scoreboard players tag @s[tag=!Tired2] add Tired2
execute @a[score_endurance_min=9000] ~ ~ ~ scoreboard players tag @s remove Tired2
execute @a[score_endurance=8999] ~ ~ ~ scoreboard players tag @s remove Tired3
execute @a[score_endurance_min=9000,score_endurance=9999] ~ ~ ~ effect @s slowness 1 4 true
execute @a[score_endurance_min=9000,score_endurance=9999] ~ ~ ~ scoreboard players tag @s[tag=!Tired3] add Tired3
execute @a[score_endurance_min=10000] ~ ~ ~ scoreboard players tag @s remove Tired3
execute @a[score_endurance=9999] ~ ~ ~ scoreboard players tag @s remove Tired4
execute @a[score_endurance_min=10000] ~ ~ ~ effect @a instant_damage 1 10
execute @a[score_endurance_min=10000] ~ ~ ~ scoreboard players tag @s add Tired4
# ------------ 禁止睡床 ------------
execute @a[score_sleep_min=1] ~ ~ ~ setblock ~ ~ ~ air
execute @a[score_sleep_min=1] ~ ~ ~ particle barrier ~ ~ ~ 0 1 0 0 1 force
execute @a[score_sleep_min=1] ~ ~ ~ particle spell ~ ~1 ~ 1 0 1 1 100
execute @a[score_sleep_min=1] ~ ~ ~ scoreboard players set @s sleep 0
execute @a ~ ~ ~ detect ~ ~ ~ bed -1 scoreboard players remove @a[score_endurance_min=1] endurance 40
# ------------ 身體水份 ------------
execute @e[tag=delay_end] ~ ~ ~ scoreboard players add @e[tag=HG] water 1
execute @e[tag=Ndelay_end] ~ ~ ~ scoreboard players add @e[tag=HG] water 1
execute @e[tag=HG,score_water_min=1] ~ ~ ~ scoreboard players remove @a[score_water_min=1] water 1
execute @e[tag=HG,score_water_min=1] ~ ~ ~ scoreboard players set @e[tag=HG] water 0
execute @a[score_water=300] ~ ~ ~ effect @s mining_fatigue 1 0 true
execute @a[score_water=200] ~ ~ ~ effect @s mining_fatigue 1 2 true
execute @a[score_water=100] ~ ~ ~ effect @s mining_fatigue 1 4 true
execute @a[score_water=0] ~ ~ ~ effect @a instant_damage 1 10
execute @a[score_water_min=1000] ~ ~ ~ scoreboard players set @s water 1000
execute @a[score_drink_min=1] ~ ~ ~ scoreboard players add @s[score_water=999] water 200
execute @a[score_drink_min=1] ~ ~ ~ scoreboard players set @s drink 0
execute @a[score_drink1_min=1] ~ ~ ~ scoreboard players add @s[score_water=999] water 300
execute @a[score_drink1_min=1] ~ ~ ~ scoreboard players set @s drink1 0
execute @a[score_drink2_min=1] ~ ~ ~ scoreboard players add @s[score_water=999] water 400
execute @a[score_drink2_min=1] ~ ~ ~ scoreboard players set @s drink2 0
execute @a[score_drink3_min=1] ~ ~ ~ scoreboard players add @s[score_water=999] water 500
execute @a[score_drink3_min=1] ~ ~ ~ scoreboard players set @s drink3 0
execute @a[score_drink4_min=1] ~ ~ ~ scoreboard players add @s[score_water=999] water 500
execute @a[score_drink4_min=1] ~ ~ ~ scoreboard players set @s drink4 0
execute @a ~ ~ ~ scoreboard players operation @s water1 = @s water
execute @a ~ ~ ~ scoreboard players operation @s water1 /= @e[tag=HG10] digit
execute @a ~ ~ ~ scoreboard players operation @s water2 = @s water1
execute @a[score_water_min=301] ~ ~ ~ scoreboard players tag @s remove Thirst1
execute @a[score_water=300,score_water_min=201] ~ ~ ~ scoreboard players tag @s add Thirst1
execute @a[score_water=200] ~ ~ ~ scoreboard players tag @s remove Thirst1
execute @a[score_water_min=201] ~ ~ ~ scoreboard players tag @s remove Thirst2
execute @a[score_water=200,score_water_min=101] ~ ~ ~ scoreboard players tag @s add Thirst2
execute @a[score_water=100] ~ ~ ~ scoreboard players tag @s remove Thirst2
execute @a[score_water_min=101] ~ ~ ~ scoreboard players tag @s remove Thirst3
execute @a[score_water=100,score_water_min=1] ~ ~ ~ scoreboard players tag @s add Thirst3
execute @a[score_water=0] ~ ~ ~ scoreboard players tag @s remove Thirst3
execute @a[score_water_min=1] ~ ~ ~ scoreboard players tag @s remove Thirst4
execute @a[score_water=0] ~ ~ ~ scoreboard players tag @s add Thirst4