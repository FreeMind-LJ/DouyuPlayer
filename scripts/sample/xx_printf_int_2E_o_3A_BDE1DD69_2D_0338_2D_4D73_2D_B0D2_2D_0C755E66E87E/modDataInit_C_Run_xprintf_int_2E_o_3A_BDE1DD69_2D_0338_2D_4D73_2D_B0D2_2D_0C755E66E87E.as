package sample.xx_printf_int_2E_o_3A_BDE1DD69_2D_0338_2D_4D73_2D_B0D2_2D_0C755E66E87E
{
   import sample.xx.ram;
   
   function modDataInit_C_Run_xprintf_int_2E_o_3A_BDE1DD69_2D_0338_2D_4D73_2D_B0D2_2D_0C755E66E87E(param1:Object) : void
   {
      var _loc3_:int = param1[".rodata.str1.16"][0];
      ram.position = _loc3_;
      ram.writeBytes(new DS0());
      var _loc2_:int = param1[".rodata.str1.1"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS1());
   }
}
