scoreboard players add _SYSTEM fireballtime 1
execute if score _SYSTEM fireballtime matches 3600 run kill @e[type=fireball]
execute if score _SYSTEM fireballtime matches 3600 run scoreboard players set _SYSTEM fireballtime 0