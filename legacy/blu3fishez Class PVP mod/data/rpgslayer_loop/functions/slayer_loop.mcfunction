scoreboard players set @a[scores={carrotstick_used=1..,slayer_skill=25..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{darkrune:1b}}}] dark_rune 1
scoreboard players set @a[scores={carrotstick_used=1..,slayer_skill=25..},nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{darkrune:1b},Slot:-106b}]}] dark_rune 1
execute at @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{darkrune:1b}}},scores={damage_dealt=1..}] run scoreboard players set @e[distance=..10,scores={damage_taken=1..}] sl_slow 1

execute at @a[scores={dark_rune=1..}] run particle minecraft:smoke ~ ~ ~ 1 1 1 0.4 800
execute at @a[scores={dark_rune=1..}] run particle minecraft:flame ~ ~ ~ 1 1 1 0.4 800
execute at @a[scores={dark_rune=1..}] run playsound minecraft:entity.ender_dragon.ambient master @a[distance=..20]
effect give @a[scores={dark_rune=1..}] haste 7 10 false
effect give @a[scores={dark_rune=1..}] absorption 7 1 false
effect give @a[scores={dark_rune=1..}] speed 7 1 false
effect give @a[scores={dark_rune=1..}] weakness 7 0 false
effect give @a[scores={sl_slow=1..}] slowness 1 4 false
execute if entity @a[scores={dark_rune=1..}] run tellraw @a [{"text":"[Class PVP] ","color":"gray","bold":true,"italic":false},{"selector":"@a[scores={dark_rune=1..}]","bold":true,"italic":false},{"text":" used Dark Rune!","color":"gray","bold":false,"italic":false}]

scoreboard players set @a sl_slow 0
scoreboard players set @a[scores={dark_rune=1..}] slayer_skill 0
scoreboard players set @a[scores={dark_rune=1..}] dark_rune 0
