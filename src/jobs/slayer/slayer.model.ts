import { MVCScoreboard } from "mvcstone";
import { give, item, NBT, Selector, tag, Tag } from "sandstone";

export class Slayer {
  giveItem(selector: string) {

    give('@s', `minecraft:iron_axe{CustomModelData:1121,display:{Name:'{"text":"아레스의 대검","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"성기사의 몰락","color":"dark_gray","bold":true,"italic":false}']},Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.35,Operation:0,UUID:[I;526157,878662,0,1],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.01,Operation:0,UUID:[I;378980,649753,0,1],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:17,Operation:0,UUID:[I;804573,353456,0,1],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3.55,Operation:0,UUID:[I;394049,660243,0,1],Slot:"mainhand"}]}`);

    item.replace.entity('@s', "weapon.offhand").with(`minecraft:carrot_on_a_stick{display:{Name:'{"text":"[Ulti] 다크 룬","color":"dark_gray","bold":true,"italic":false}',Lore:['{"text":"<Ulti> 흑월","color":"gray","italic":false}','{"text":"어두운 달의 힘을 받아, 이동속도가 증가한다.","color":"gray","bold":true,"italic":false}','{"text":"[Skill] 어둠의 무도","color":"gray","italic":false}','{"text":"다크룬으로 적을 타격할 시,구속에 걸린다.","color":"gray","bold":true,"italic":false}','{"text":"[Ulti] 다크룬","color":"gray","italic":false}','{"text":"준비된 상태에서 우클릭을 눌러 힘을 개방한다.","color":"gray","bold":true,"italic":false}','{"text":" 슬레이어 집단의 정신 ","color":"dark_gray","bold":true,"italic":false}']},HideFlags:63,Unbreakable:1b,CustomModelData:324,darkrune:1b}`, 1);

  }
  giveHealthKit(selector: string) {
    give(`@s`, `minecraft:splash_potion{HideFlags:32,sl_potion:1b,display:{Name:'{"text":"[Skill] 피로 짙은 회복","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"슬레이어 집단 고유의 흑마술","color":"dark_gray","bold":true,"italic":false}']},CustomPotionEffects:[{Id:6b,Amplifier:2b,Duration:1}],CustomPotionColor:5373952}`
    );
  }
  public slayerTag = Selector('@s', {tag:"slayer"});
  public slayerUltiTime = new MVCScoreboard('sl.uttm', 'dummy');
  public slayerKitTime = new MVCScoreboard('sl.hltkttm', 'dummy');
}