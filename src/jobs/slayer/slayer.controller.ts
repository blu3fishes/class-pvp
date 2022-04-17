import { Controller, isLoopBy, isMCFunction } from "mvcstone";
import { SlayerService } from "./slayer.service";

@Controller()
export class SlayerController {
  private SlayerService: SlayerService = new SlayerService();

  @isMCFunction('slayer/init')
  initializeSlayerClass() : SlayerController{
    this.SlayerService.initializeSlayerClass();
    return this;
  }
  
  @isMCFunction('tick')
  loop() : SlayerController {
    this.SlayerService.getHealthKit();
    this.SlayerService.announceUltimate();
    this.SlayerService.ultimate();
    this.SlayerService.reloadUltiScoreboard();
    return this;
  }

  @isMCFunction('second')
  secondLoop() : SlayerController {
    this.SlayerService.giveSpeedWhenGrappedRune();
    this.SlayerService.reloadKitScoreboard();
    return this;
  }
}