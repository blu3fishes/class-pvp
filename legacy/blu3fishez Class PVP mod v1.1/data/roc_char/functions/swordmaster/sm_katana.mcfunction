scoreboard players set @a[tag=kensho,scores={damage_dealt=1..,ken_switch=1..,ken_ultitime=20..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{kensho:1b}}}] ken_ulti 5
scoreboard players set @a[scores={ken_ulti=0,damage_taken=1..,ken_target=1..},nbt={OnGround:0b}] ken_dmgtake 5
execute at @a[tag=kensho,scores={ken_ulti=1..}] run scoreboard players set @a[scores={ken_dmgtake=3..}] ken_ultitake 5
execute as @a[scores={ken_ultitake=1..}] run scoreboard players set @a[tag=kensho,scores={ken_ulti=1..}] ken_ultitime 0
execute at @a[scores={ken_ultitake=1..4}] run playsound minecraft:item.trident.throw master @a[distance=..30] ~ ~ ~ 1 1.3 0
execute at @a[scores={ken_ultitake=1..4}] run playsound minecraft:item.trident.throw master @a[distance=..30] ~ ~ ~ 1 1.3 0
execute at @a[scores={ken_ultitake=1..4}] run particle minecraft:sweep_attack ~ ~ ~ 1 1 1 0.5 30
effect give @a[scores={ken_ultitake=1..}] instant_damage 10 1 true
scoreboard players remove @a[scores={ken_ulti=1..}] ken_ulti 1
scoreboard players remove @a[scores={ken_ultitake=1..}] ken_ultitake 1
scoreboard players remove @a[scores={ken_dmgtake=1..}] ken_dmgtake 1