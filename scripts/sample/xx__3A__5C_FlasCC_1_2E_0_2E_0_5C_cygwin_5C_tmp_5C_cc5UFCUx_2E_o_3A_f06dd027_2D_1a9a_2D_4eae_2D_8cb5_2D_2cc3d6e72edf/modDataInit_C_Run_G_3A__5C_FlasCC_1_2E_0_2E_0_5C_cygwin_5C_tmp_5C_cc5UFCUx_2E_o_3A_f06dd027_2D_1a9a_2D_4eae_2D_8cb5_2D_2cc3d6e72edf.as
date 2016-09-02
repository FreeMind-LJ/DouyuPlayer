package sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_cc5UFCUx_2E_o_3A_f06dd027_2D_1a9a_2D_4eae_2D_8cb5_2D_2cc3d6e72edf
{
   import sample.xx.ram;
   
   function modDataInit_C_Run_G_3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_cc5UFCUx_2E_o_3A_f06dd027_2D_1a9a_2D_4eae_2D_8cb5_2D_2cc3d6e72edf(param1:Object) : void
   {
      var _loc2_:int = param1[".rodata"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS0());
      var _loc3_:int = param1[".rodata.str1.16"][0];
      ram.position = _loc3_;
      ram.writeBytes(new DS1());
   }
}
