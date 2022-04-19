effect clear @p
clear @p
function roc_item:solarwizard/solarwand
function roc_item:solarwizard/solar_set
tag @p remove slayer
tag @p remove tanker
tag @p remove nuker
tag @p remove lancer
tag @p remove archer
tag @p remove kensho
tag @p add solar
give @p minecraft:golden_carrot{display:{Name:'{"text":"마나 물약","color":"blue","bold":true,"italic":false}'},CustomModelData:19132} 64