package sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccf8iwcn_2E_o_3A_97b2014d_2D_8ddb_2D_4d42_2D_b61d_2D_986fcc55eb9e
{
   import sample.xx.ram;
   
   function modDataInit_C_Run_G_3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccf8iwcn_2E_o_3A_97b2014d_2D_8ddb_2D_4d42_2D_b61d_2D_986fcc55eb9e(param1:Object) : void
   {
      var _loc3_:int = param1[".bss"][0];
      ram.position = _loc3_;
      ram.writeBytes(new DS0());
      var _loc4_:int = param1[".rodata"][0];
      ram.position = _loc4_;
      ram.writeBytes(new DS1());
      var _loc5_:int = param1[".gcc_except_table"][0];
      ram.position = _loc5_;
      ram.writeBytes(new DS2());
      var _loc2_:int = param1[".rodata.str1.1"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS3());
   }
}
