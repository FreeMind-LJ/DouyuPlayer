package sample.xx_printf_time_2E_o_3A_E624CC77_2D_3DE7_2D_4B86_2D_B31D_2D_F6413E3D7DB7
{
   import sample.xx.ram;
   
   function modDataInit_C_Run_xprintf_time_2E_o_3A_E624CC77_2D_3DE7_2D_4B86_2D_B31D_2D_F6413E3D7DB7(param1:Object) : void
   {
      var _loc3_:int = param1[".rodata.str1.1"][0];
      ram.position = _loc3_;
      ram.writeBytes(new DS0());
      var _loc2_:int = param1[".rodata.str1.16"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS1());
   }
}
