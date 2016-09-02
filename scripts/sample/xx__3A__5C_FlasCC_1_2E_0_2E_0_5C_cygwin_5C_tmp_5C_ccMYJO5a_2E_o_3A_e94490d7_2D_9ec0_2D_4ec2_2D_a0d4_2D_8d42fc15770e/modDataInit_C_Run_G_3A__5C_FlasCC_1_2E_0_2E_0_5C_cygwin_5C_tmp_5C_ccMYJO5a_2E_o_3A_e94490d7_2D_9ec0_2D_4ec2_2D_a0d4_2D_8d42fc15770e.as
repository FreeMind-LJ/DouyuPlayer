package sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccMYJO5a_2E_o_3A_e94490d7_2D_9ec0_2D_4ec2_2D_a0d4_2D_8d42fc15770e
{
   import sample.xx.ram;
   import avm2.intrinsics.memory.si32;
   
   function modDataInit_C_Run_G_3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccMYJO5a_2E_o_3A_e94490d7_2D_9ec0_2D_4ec2_2D_a0d4_2D_8d42fc15770e(param1:Object) : void
   {
      var _loc2_:int = param1[".bss"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS0());
      var _loc3_:int = param1[".ctors"][0];
      ram.position = _loc3_;
      ram.writeBytes(new DS1());
      var _loc4_:int = param1[".gcc_except_table"][0];
      ram.position = _loc4_;
      ram.writeBytes(new DS2());
      si32(__GLOBAL__I__Z11InitialHashv,_loc3_ + 0);
   }
}
