####################
# 쿨타임이 3초이면, 3초일때 tellraw, 4초까지 쿨타임 올리기, 검성아니면 2초까지 쿨타임 내리기
####################

tellraw @a[tag=kensho,scores={ken_ultitime=20}] [{"text":"[Class PVP] ","color":"dark_gray","bold":true,"italic":false},{"text":"검객일단이 준비됐다.","color":"dark_gray","bold":true,"italic":false}]
scoreboard players add @a[tag=kensho,scores={ken_ultitime=..20}] ken_ultitime 1
scoreboard players set @a[tag=!kensho] ken_ultitime 19