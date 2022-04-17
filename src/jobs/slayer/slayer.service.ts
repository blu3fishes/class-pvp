import { clear, effect, execute, give, NBT, raw, scoreboard, Selector, tellraw, _ } from "sandstone";
import { Slayer } from "./slayer.model";


export class SlayerService {
  private SlayerModel = new Slayer();
  static ULTI_TIME = 800;
  static KIT_TIME = 12;
  getHealthKit() {
    _.if(this.SlayerModel.slayerKitTime.scoreboard('@s').greaterThan(44), () => {

    });
  }

  initializeSlayerClass() {
    effect.clear('@s');
    clear('@s');

    this.SlayerModel.slayerKitTime.scoreboard(Selector('@s')).set(SlayerService.KIT_TIME - 1);
    this.SlayerModel.slayerKitTime.scoreboard(Selector('@s')).set(SlayerService.ULTI_TIME - 1);

    this.SlayerModel.giveItem('@s');
  }

  reloadHealthKit() {
    execute.as('@a').as(this.SlayerModel.slayerTag).run(() => {
      let potion = this.SlayerModel.slayerKitTime.scoreboard('@s');
      effect.give('@s', "minecraft:haste", 3, 2, true);
      effect.give('@s', "minecraft:resistance", 3, 0, true);

      _.if(potion.matches(SlayerService.KIT_TIME), () => {
        execute.as(Selector('@s', { nbt: NBT.not({ Inventory: [{ id: "minecraft:splash_potion", tag: { sl_potion: NBT.byte(1) } }] }) })).run(() => {
          this.SlayerModel.giveHealthKit('@s');
          tellraw(`@s`,
            { "text": "[Skill] Dark Heal is ready.", "color": "dark_red", "bold": true, "italic": false }
          );
        });
      });
    });
  }

  announceUltimate() {
    execute.as('@a').as(this.SlayerModel.slayerTag).run(() => {
      _.if(this.SlayerModel.slayerUltiTime.scoreboard('@s').matches(SlayerService.ULTI_TIME), () => {
        tellraw(`@s`,
          { "text": "[Ulti] Dark Rune is ready.", "color": "dark_gray", "bold": true, "italic": false }
        );
      });
    });
  }

  ultimate() {
    let user_main = Selector('@a', {
      "scores": { ['carrotstick_used']: [1,], [this.SlayerModel.slayerUltiTime.scoreboard.name]: [25,] },
      "nbt": { SelectedItem: { id: "minecraft:carrot_on_a_stick", Count: NBT.byte(1), tag: { darkrune: NBT.byte(1) } } }
    });

    let user_off = Selector('@a', {
      "scores": { ['carrotstick_used']: [1,], [this.SlayerModel.slayerUltiTime.scoreboard.name]: [25,] },
      "nbt": { Inventory: [{ id: "minecraft:carrot_on_a_stick", Count: 1b, tag: { darkrune: NBT.byte(1) }, Slot: NBT.byte(-106) }] }
    });

    execute.as('@a').at(Selector('@s', {
      'scores': {
        ['carrotstick_used']: [1,],
        [this.SlayerModel.slayerUltiTime.scoreboard.name]: [],

      }
    }));

    raw('scoreboard players set @a[scores={carrotstick_used=1..,slayer_skill=25..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{darkrune:1b}}}] dark_rune 1');
    raw('execute at @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{darkrune:1b}}},scores={damage_dealt=1..}] run scoreboard players set @e[distance=..10,scores={damage_taken=1..}] sl_slow 1');

    raw('execute at @a[scores={dark_rune=1..}] run particle minecraft:smoke ~ ~ ~ 1 1 1 0.4 800');
    raw('execute at @a[scores={dark_rune=1..}] run particle minecraft:flame ~ ~ ~ 1 1 1 0.4 800');
    raw('execute at @a[scores={dark_rune=1..}] run playsound minecraft:entity.ender_dragon.ambient master @a[distance=..20]');
    raw('effect give @a[scores={dark_rune=1..}] haste 7 10 false');
    raw('effect give @a[scores={dark_rune=1..}] absorption 7 1 false');
    raw('effect give @a[scores={dark_rune=1..}] speed 7 1 false');
    raw('effect give @a[scores={dark_rune=1..}] weakness 7 0 false');
    raw('effect give @a[scores={sl_slow=1..}] slowness 1 4 false');
    raw('execute if entity @a[scores={dark_rune=1..}] run tellraw @a [{"text":"[Class PVP] ","color":"gray","bold":true,"italic":false},{"selector":"@a[scores={dark_rune=1..}]","bold":true,"italic":false},{"text":" used Dark Rune!","color":"gray","bold":false,"italic":false}]');

    raw('scoreboard players set @a sl_slow 0');
    raw('scoreboard players set @a[scores={dark_rune=1..}] slayer_skill 0');
    raw('scoreboard players set @a[scores={dark_rune=1..}] dark_rune 0');

  }

  giveSpeedWhenGrappedRune() {
    effect.give(`@a[tag=slayer,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{darkrune:1b}}}]`, 'minecraft:speed', 2, 1, false);
  }

  reloadKitScoreboard() {
    this.SlayerModel.
      slayerKitTime.
      scoreboard(Selector('@a', { "scores": { [this.SlayerModel.slayerKitTime.scoreboard.name]: [, SlayerService.KIT_TIME - 1] } }))
      .add(1);
  }

  reloadUltiScoreboard() {
    let scr = this.SlayerModel.slayerUltiTime.scoreboard;
    scr(Selector('@a', { "scores": { [scr.name]: [, SlayerService.ULTI_TIME - 1] } })).add(1);
  }
}