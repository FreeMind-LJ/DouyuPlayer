package sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_cc1dWras_2E_o_3A_db4a8bee_2D_e63d_2D_4f16_2D_9777_2D_01c121f35cc9
{
   import sample.xx.ram;
   
   function modDataInit_C_Run_G_3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_cc1dWras_2E_o_3A_db4a8bee_2D_e63d_2D_4f16_2D_9777_2D_01c121f35cc9(param1:Object) : void
   {
      var _loc2_:int = param1[".data"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS0());
      var _loc3_:int = param1[".rodata.str1.1"][0];
      ram.position = _loc3_;
      ram.writeBytes(new DS1());
   }
}
