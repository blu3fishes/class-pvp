####################
# 쿨타임이 3초이면, 3초일때 tellraw, 4초까지 쿨타임 올리기, 검성아니면 2초까지 쿨타임 내리기
####################

tellraw @a[tag=kensho,scores={ken_uptime=9}] [{"text":"[Class PVP] ","color":"dark_gray","bold":true,"italic":false},{"text":"Upper Attack is ready.","color":"dark_gray","bold":true,"italic":false}]
scoreboard players add @a[tag=kensho,scores={ken_uptime=..9}] ken_uptime 1
scoreboard players set @a[tag=!kensho] ken_uptime 8