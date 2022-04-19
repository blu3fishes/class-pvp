####################################
# 메인 데이터팩으로 하여금 이 함수를 메인 데이터팩의 secondloop에서 실행시키도록 만들어야한다.
# 따로 돌아가는 tick은 다른 스레드에서 실행되게하므로 게임 메커니즘의 올바른 순서가 뒤섞이게 되기 때문이다.
####################################

effect give @a[tag=kensho] minecraft:speed 2 0 true

function roc_char:swordmaster/sm_kat_timer
function roc_char:swordmaster/sm_swo_timer
function roc_char:swordmaster/sm_swit_timer
function roc_char:solarwizard/secondloop