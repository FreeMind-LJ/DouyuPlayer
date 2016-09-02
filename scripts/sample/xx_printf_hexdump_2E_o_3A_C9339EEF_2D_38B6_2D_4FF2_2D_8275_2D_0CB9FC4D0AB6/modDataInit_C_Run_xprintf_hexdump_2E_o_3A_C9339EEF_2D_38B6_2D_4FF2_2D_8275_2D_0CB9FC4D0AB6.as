package sample.xx_printf_hexdump_2E_o_3A_C9339EEF_2D_38B6_2D_4FF2_2D_8275_2D_0CB9FC4D0AB6
{
   import sample.xx.ram;
   
   function modDataInit_C_Run_xprintf_hexdump_2E_o_3A_C9339EEF_2D_38B6_2D_4FF2_2D_8275_2D_0CB9FC4D0AB6(param1:Object) : void
   {
      var _loc3_:int = param1[".rodata.str1.1"][0];
      ram.position = _loc3_;
      ram.writeBytes(new DS0());
      var _loc2_:int = param1[".rodata.str1.16"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS1());
   }
}
