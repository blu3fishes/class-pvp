####################################
# 메인 데이터팩으로 하여금 이 함수를 메인 데이터팩의 loop에서 실행시키도록 만들어야한다.
# 따로 돌아가는 tick은 다른 스레드에서 실행되게하므로 게임 메커니즘의 올바른 순서가 뒤섞이게 되기 때문이다.
####################################

function roc_char:swordmaster/sm_katana
function roc_char:swordmaster/sm_swit_swap
function roc_char:swordmaster/sm_sword
function roc_char:swordmaster/sm_remove
function roc_char:solarwizard/clearfire
function roc_char:solarwizard/foot_effect
function roc_char:solarwizard/summonfire

scoreboard players enable @a cp_swordmaster
execute if entity @a[scores={cp_swordmaster=1..},limit=1] run execute at @a[scores={cp_swordmaster=1..},limit=1] run function roc_char:swordmaster/swordmaster
scoreboard players set @a[scores={cp_swordmaster=1..}] cp_swordmaster 0
scoreboard players enable @a cp_solarwizard
execute if entity @a[scores={cp_solarwizard=1..},limit=1] run execute at @a[scores={cp_solarwizard=1..},limit=1] run function roc_char:solarwizard/solarwizard
scoreboard players set @a[scores={cp_solarwizard=1..}] cp_solarwizard 0