########################
# PUT THIS ON LAST LOOP SECTION
########################

scoreboard players remove @a[scores={ken_switch=1..}] ken_switch 1

scoreboard players remove @a[scores={ken_up=1..}] ken_up 1
scoreboard players set @a[scores={ken_uptake=1}] ken_uptake 0

effect give @a[tag=kensho,scores={ken_kill=1..}] minecraft:regeneration 2 4 true