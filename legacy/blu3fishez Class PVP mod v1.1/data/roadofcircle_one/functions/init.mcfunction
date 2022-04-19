scoreboard objectives add ken_uptake dummy
scoreboard objectives add ken_target dummy
scoreboard objectives add ken_up dummy
scoreboard objectives add ken_uptime dummy
scoreboard objectives add ken_switchtime dummy
scoreboard objectives add ken_switch dummy
scoreboard objectives add ken_ulti dummy
scoreboard objectives add ken_ultitime dummy
scoreboard objectives add ken_ultitake dummy
scoreboard objectives add ken_dmgtake dummy
scoreboard objectives add ken_swp_1 dummy
scoreboard objectives add ken_swp_2 dummy
scoreboard objectives add ken_kill minecraft.custom:minecraft.player_kills

scoreboard objectives add fireballtime dummy
scoreboard objectives add sw_timer dummy
scoreboard objectives add sw_throw dummy
scoreboard objectives add sw_absorb dummy

scoreboard objectives add cp_swordmaster trigger
scoreboard objectives add cp_solarwizard trigger

scoreboard players set @a ken_uptake 0
scoreboard players set @a ken_up 0
scoreboard players set @a ken_uptime 0
scoreboard players set @a ken_switchtime 0
scoreboard players set @a ken_switch 0
scoreboard players set @a ken_ulti 0
scoreboard players set @a ken_ultitime 0
scoreboard players set @a ken_ultitake 0
scoreboard players set @a ken_dmgtake 0
scoreboard players set @a ken_swp_1 0
scoreboard players set @a ken_swp_2 0
scoreboard players set @a ken_kill 0
scoreboard players set @a ken_target 0
scoreboard players set @a cp_swordmaster 0
scoreboard players set @a cp_solarwizard 0

scoreboard players set @a sw_throw 1
scoreboard players set @a sw_timer 0
scoreboard players set @a sw_absorb 8

tellraw @a [{"text":"[Class PVP] Road of Circle I is Loaded.","color":"dark_gray","bold":true,"italic":false}]