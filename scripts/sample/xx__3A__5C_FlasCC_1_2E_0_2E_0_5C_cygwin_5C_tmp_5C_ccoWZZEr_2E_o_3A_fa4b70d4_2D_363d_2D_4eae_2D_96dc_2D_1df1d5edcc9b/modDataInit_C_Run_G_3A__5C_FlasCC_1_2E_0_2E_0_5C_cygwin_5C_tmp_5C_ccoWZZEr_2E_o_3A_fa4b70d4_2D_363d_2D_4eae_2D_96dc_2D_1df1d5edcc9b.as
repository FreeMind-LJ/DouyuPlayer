package sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccoWZZEr_2E_o_3A_fa4b70d4_2D_363d_2D_4eae_2D_96dc_2D_1df1d5edcc9b
{
   import sample.xx.ram;
   
   function modDataInit_C_Run_G_3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccoWZZEr_2E_o_3A_fa4b70d4_2D_363d_2D_4eae_2D_96dc_2D_1df1d5edcc9b(param1:Object) : void
   {
      var _loc2_:int = param1[".bss"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS0());
      var _loc3_:int = param1[".gcc_except_table"][0];
      ram.position = _loc3_;
      ram.writeBytes(new DS1());
      var _loc4_:int = param1[".rodata.str1.1"][0];
      ram.position = _loc4_;
      ram.writeBytes(new DS2());
   }
}
