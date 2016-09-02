package sample.xx_printf_quote_2E_o_3A_1AE5FDB1_2D_E170_2D_4A5B_2D_8B15_2D_70E1E37D78F8
{
   import sample.xx.ram;
   
   function modDataInit_C_Run_xprintf_quote_2E_o_3A_1AE5FDB1_2D_E170_2D_4A5B_2D_8B15_2D_70E1E37D78F8(param1:Object) : void
   {
      var _loc3_:int = param1[".rodata.str1.1"][0];
      ram.position = _loc3_;
      ram.writeBytes(new DS0());
      var _loc2_:int = param1[".rodata.str1.16"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS1());
   }
}
