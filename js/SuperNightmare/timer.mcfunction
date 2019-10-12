# ------------ 連閃計時 ------------
kill @e[type=armor_stand,tag=delay_end]
scoreboard players tag @e[type=armor_stand,tag=delay] add delay_end {PortalCooldown:0}
execute @e[tag=delay_end] ~ ~ ~ summon armor_stand ~ 1 ~ {Tags:["delay"],PortalCooldown:20}
execute @e[tag=delay_end] ~ ~ ~ scoreboard players add @e[tag=HG] timer 1
# ------------ 開頭顯示 ------------
execute @e[tag=delay_end] ~ ~ ~ function hageeshow:supernightmare/show
function hageeshow:supernightmare/player
function hageeshow:supernightmare/monster
# ------------ 到地獄 ------------
scoreboard players set @a InNether 0 {Dimension:0}
scoreboard players set @a InNether 1 {Dimension:-1}
scoreboard players set @a InNether 1 {Dimension:1}
execute @a[tag=!N,score_InNether_min=1] ~ ~ ~ summon armor_stand ~ 129 ~ {Tags:["Ndelay"],PortalCooldown:20}
# ------------ 地獄計時 ------------
kill @e[type=armor_stand,tag=Ndelay_end]
scoreboard players tag @e[type=armor_stand,tag=Ndelay] add Ndelay_end {PortalCooldown:0}
execute @e[tag=Ndelay_end] ~ ~ ~ summon armor_stand ~ 129 ~ {Tags:["Ndelay"],PortalCooldown:20}
execute @e[tag=Ndelay] ~ ~ ~ scoreboard players tag @a add N