scoreboard players set @a[tag=kensho,scores={damage_dealt=1..,ken_switch=1..,ken_uptime=9..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{kensho:2b}}}] ken_up 3
scoreboard players set @a[tag=kensho,scores={ken_up=3}] ken_uptime 0
execute at @a[tag=kensho,scores={ken_up=1..}] run scoreboard players set @p[scores={ken_up=0,damage_taken=1..}] ken_uptake 1
scoreboard players set @a[scores={ken_uptake=1}] ken_target 70
execute at @a[scores={ken_uptake=1}] run playsound minecraft:entity.generic.explode master @a[distance=..30] ~ ~ ~ 1 1.3 0
execute at @a[scores={ken_uptake=1}] run particle minecraft:explosion ~ ~ ~ 1 1 1 0.5 30
effect give @a[scores={ken_uptake=1}] minecraft:levitation 1 4 true
scoreboard players remove @a[scores={ken_target=1..}] ken_target 1