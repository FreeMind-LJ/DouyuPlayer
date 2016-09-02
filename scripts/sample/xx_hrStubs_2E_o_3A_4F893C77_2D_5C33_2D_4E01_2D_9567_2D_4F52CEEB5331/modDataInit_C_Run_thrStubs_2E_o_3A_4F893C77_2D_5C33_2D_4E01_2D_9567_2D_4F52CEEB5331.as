package sample.xx_hrStubs_2E_o_3A_4F893C77_2D_5C33_2D_4E01_2D_9567_2D_4F52CEEB5331
{
   import sample.xx.ram;
   
   function modDataInit_C_Run_thrStubs_2E_o_3A_4F893C77_2D_5C33_2D_4E01_2D_9567_2D_4F52CEEB5331(param1:Object) : void
   {
      var _loc3_:int = param1[".bss"][0];
      ram.position = _loc3_;
      ram.writeBytes(new DS0());
      var _loc2_:int = param1[".data"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS1());
   }
}
