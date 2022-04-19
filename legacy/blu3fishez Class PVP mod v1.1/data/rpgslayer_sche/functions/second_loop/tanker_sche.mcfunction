effect give @a[tag=tanker] weakness 3 0 true
effect give @a[tag=tanker] resistance 3 1 true
effect give @a[tag=tanker,nbt=!{Inventory:[{id:"minecraft:shield",Slot:-106b,tag:{tanker_shield:1b}}]}] slowness 2 2 true

tellraw @a[tag=tanker,scores={tanker_skill=40}] {"text":"[Ulti] Shine o' Heaven is ready.","color":"yellow","bold":true,"italic":false}

scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:wooden_sword",tag:{move_curse:1b}}}] using_curse 1
execute at @a[nbt={SelectedItem:{id:"minecraft:wooden_sword",tag:{move_curse:1b}}}] run effect give @e[distance=..10,type=!minecraft:item,scores={using_curse=0}] slowness 5 0
effect give @a[nbt={SelectedItem:{id:"minecraft:wooden_sword",tag:{move_curse:1b}}}] speed 2 1 false

scoreboard players add @a[tag=tanker,scores={tanker_skill=..40}] tanker_skill 1

scoreboard players set @a[tag=!tanker] tanker_skill 39

scoreboard players set @a using_curse 0