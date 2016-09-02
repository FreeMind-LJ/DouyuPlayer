package sample.xx_dtoa_strtod_2E_o_3A_AEFFF15D_2D_D802_2D_4C13_2D_A5C3_2D_49AD87A738B7
{
   import sample.xx.ram;
   
   function modDataInit_C_Run_gdtoa_strtod_2E_o_3A_AEFFF15D_2D_D802_2D_4C13_2D_A5C3_2D_49AD87A738B7(param1:Object) : void
   {
      var _loc4_:int = param1[".data"][0];
      ram.position = _loc4_;
      ram.writeBytes(new DS0());
      var _loc3_:int = param1[".rodata"][0];
      ram.position = _loc3_;
      ram.writeBytes(new DS1());
      var _loc2_:int = param1[".rodata.str1.1"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS2());
   }
}
