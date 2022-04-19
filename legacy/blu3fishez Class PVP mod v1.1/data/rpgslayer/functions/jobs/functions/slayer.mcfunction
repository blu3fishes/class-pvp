effect clear @p
clear @p
scoreboard players set @p give_slayer 1
scoreboard players set @p[name=lees2541,scores={give_slayer=1}] lees_only 1
scoreboard players set @p[name=!"lees2541",scores={give_slayer=1}] lees_only 2
execute if entity @p[scores={lees_only=2}] run function rpgslayer:item/ares_no_sword
execute if entity @p[scores={lees_only=1}] run function rpgslayer:item/tsumi_no_sword
function rpgslayer:item/dark_rune
function rpgslayer:item/grow_potion
tag @p add slayer
tag @p remove tanker
tag @p remove nuker
tag @p remove lancer
tag @p remove archer
tag @p remove kensho
tag @p remove solar
scoreboard players set @a lees_only 0
scoreboard players set @a give_slayer 0
give @p minecraft:golden_carrot{display:{Name:'{"text":"마나 물약","color":"blue","bold":true,"italic":false}'},CustomModelData:19132} 64