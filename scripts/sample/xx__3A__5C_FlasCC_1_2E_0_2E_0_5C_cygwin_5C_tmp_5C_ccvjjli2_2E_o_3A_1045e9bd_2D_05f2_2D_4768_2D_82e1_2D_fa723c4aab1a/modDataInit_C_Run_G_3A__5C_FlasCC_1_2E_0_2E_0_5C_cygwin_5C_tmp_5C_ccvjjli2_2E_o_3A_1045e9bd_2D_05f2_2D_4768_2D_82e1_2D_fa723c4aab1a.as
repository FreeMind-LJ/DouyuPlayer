package sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccvjjli2_2E_o_3A_1045e9bd_2D_05f2_2D_4768_2D_82e1_2D_fa723c4aab1a
{
   import sample.xx.ram;
   
   function modDataInit_C_Run_G_3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccvjjli2_2E_o_3A_1045e9bd_2D_05f2_2D_4768_2D_82e1_2D_fa723c4aab1a(param1:Object) : void
   {
      var _loc2_:int = param1[".bss"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS0());
      var _loc3_:int = param1[".rodata"][0];
      ram.position = _loc3_;
      ram.writeBytes(new DS1());
   }
}
