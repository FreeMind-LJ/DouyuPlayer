package sample.xx_printf_float_2E_o_3A_C4FC3488_2D_1919_2D_4ECA_2D_B95B_2D_0F277BFFF845
{
   import sample.xx.ram;
   
   function modDataInit_C_Run_xprintf_float_2E_o_3A_C4FC3488_2D_1919_2D_4ECA_2D_B95B_2D_0F277BFFF845(param1:Object) : void
   {
      var _loc3_:int = param1[".rodata.str1.16"][0];
      ram.position = _loc3_;
      ram.writeBytes(new DS0());
      var _loc2_:int = param1[".rodata.str1.1"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS1());
   }
}
