package sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_cc88TyAk_2E_o_3A_bbfd1c34_2D_06d1_2D_4424_2D_b888_2D_e4144a3847dc
{
   import sample.xx.ram;
   
   function modDataInit_C_Run_G_3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_cc88TyAk_2E_o_3A_bbfd1c34_2D_06d1_2D_4424_2D_b888_2D_e4144a3847dc(param1:Object) : void
   {
      var _loc2_:int = param1[".rodata"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS0());
      var _loc3_:int = param1[".rodata.str1.1"][0];
      ram.position = _loc3_;
      ram.writeBytes(new DS1());
      var _loc4_:int = param1[".rodata.str1.16"][0];
      ram.position = _loc4_;
      ram.writeBytes(new DS2());
   }
}
