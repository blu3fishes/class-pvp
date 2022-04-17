import { Controller, isLoopBy, isLoopTick } from "mvcstone";

@Controller()
export class AppController {
  @isLoopTick('tick')
  tick () {}
  @isLoopBy('second', 20)
  second () {}
}