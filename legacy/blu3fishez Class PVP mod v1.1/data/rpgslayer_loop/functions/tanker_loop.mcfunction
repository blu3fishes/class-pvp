scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:wooden_sword",tag:{tanker_ulti:1b}}},scores={damage_dealt=1..,tanker_skill=40..}] tanker_skill_use 1
execute at @a[nbt={SelectedItem:{id:"minecraft:wooden_sword",tag:{tanker_ulti:1b}}},scores={damage_dealt=1..,tanker_skill=40..}] run scoreboard players set @a[distance=..10,scores={damage_taken=1..,tanker_skill_use=0}] tanker_ulti 3

execute if entity @a[scores={tanker_ulti=1}] run tellraw @a [{"text":"[Class PVP]","color":"gray","bold":true,"italic":false},{"text":" Shine of Heaven pierces to ","bold":false,"italic":false},{"selector":"@a[scores={tanker_ulti=1..}]","color":"gray","bold":true,"italic":false},{"text":"!","color":"gray","bold":false,"italic":false}]
effect give @a[scores={tanker_skill_use=1}] absorption 3 1 true
execute at @e[scores={tanker_ulti=1}] run summon lightning_bolt ~ ~ ~
execute at @e[scores={tanker_ulti=1}] run particle minecraft:totem_of_undying ~ ~ ~ 1 1 1 0.4 800
execute as @e run effect give @a[scores={tanker_ulti=1}] slowness 3 99 false

scoreboard players remove @a[scores={tanker_ulti=1..}] tanker_ulti 1
scoreboard players set @a[scores={tanker_skill_use=1}] tanker_skill 0
scoreboard players set @a[scores={tanker_skill_use=1}] tanker_skill_use 0

execute at @a[scores={shield_block=1..}] run playsound minecraft:block.anvil.land master @a[distance=..30] ~ ~ ~ 1 0.96 0
scoreboard players set @a[scores={shield_block=1..}] shield_block 0