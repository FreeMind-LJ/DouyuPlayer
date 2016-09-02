package sample.xx_printf_vis_2E_o_3A_A9926426_2D_67E4_2D_4B3E_2D_96A9_2D_2DD2FA10A150
{
   import sample.xx.ram;
   
   function modDataInit_C_Run_xprintf_vis_2E_o_3A_A9926426_2D_67E4_2D_4B3E_2D_96A9_2D_2DD2FA10A150(param1:Object) : void
   {
      var _loc3_:int = param1[".rodata.str1.1"][0];
      ram.position = _loc3_;
      ram.writeBytes(new DS0());
      var _loc2_:int = param1[".rodata.str1.16"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS1());
   }
}
