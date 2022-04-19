scoreboard players set @a[tag=!solar] sw_timer 11
scoreboard players add @a[tag=!solar] sw_timer 1

scoreboard players add @a[tag=solar,scores={sw_absorb=..12}] sw_absorb 1
effect give @a[tag=solar,scores={sw_absorb=12}] minecraft:absorption 13 1 true
execute at @a[tag=solar,scores={sw_absorb=12}] run playsound minecraft:entity.illusioner.prepare_mirror master @a[distance=..30] ~ ~ ~ 0.7 1.3 0
scoreboard players set @a[tag=solar,scores={sw_absorb=13}] sw_absorb 0
scoreboard players set @a[tag=!solar] sw_absorb 11