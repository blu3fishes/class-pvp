effect clear @p
clear @p
tag @p remove slayer
tag @p remove tanker
tag @p remove nuker
tag @p remove lancer
tag @p add archer
tag @p remove kensho
tag @p remove solar
function rpgslayer:item/hyulmangbow
function rpgslayer:item/poisonbow
function rpgslayer:item/techbow
function rpgslayer:item/waterarrow
give @p minecraft:golden_carrot{display:{Name:'{"text":"마나 물약","color":"blue","bold":true,"italic":false}'},CustomModelData:19132} 64
give @p arrow 64