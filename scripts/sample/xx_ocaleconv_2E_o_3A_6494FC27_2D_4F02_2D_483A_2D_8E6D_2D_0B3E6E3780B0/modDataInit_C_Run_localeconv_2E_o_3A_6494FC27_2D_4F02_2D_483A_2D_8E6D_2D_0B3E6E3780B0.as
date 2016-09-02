package sample.xx_ocaleconv_2E_o_3A_6494FC27_2D_4F02_2D_483A_2D_8E6D_2D_0B3E6E3780B0
{
   import sample.xx.ram;
   
   function modDataInit_C_Run_localeconv_2E_o_3A_6494FC27_2D_4F02_2D_483A_2D_8E6D_2D_0B3E6E3780B0(param1:Object) : void
   {
      var _loc3_:int = param1[".bss"][0];
      ram.position = _loc3_;
      ram.writeBytes(new DS0());
      var _loc2_:int = param1[".data"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS1());
   }
}
