package sample.xx_h_globals_2E_o_3A_BE3703DC_2D_DDE4_2D_433D_2D_A974_2D_4A1C4EA1F40C
{
   import sample.xx.ram;
   import avm2.intrinsics.memory.si32;
   
   function modDataInit_C_Run_eh_globals_2E_o_3A_BE3703DC_2D_DDE4_2D_433D_2D_A974_2D_4A1C4EA1F40C(param1:Object) : void
   {
      var _loc5_:int = param1[".bss"][0];
      ram.position = _loc5_;
      ram.writeBytes(new DS0());
      var _loc4_:int = param1[".ctors"][0];
      ram.position = _loc4_;
      ram.writeBytes(new DS1());
      var _loc3_:int = param1[".dtors"][0];
      ram.position = _loc3_;
      ram.writeBytes(new DS2());
      var _loc2_:int = param1[".gcc_except_table"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS3());
      si32(__GLOBAL__I___cxa_get_globals_fast,_loc4_ + 0);
      si32(__GLOBAL__D___cxa_get_globals_fast,_loc3_ + 0);
   }
}
