package sample.xx_messages_2E_o_3A_F492CD4D_2D_D224_2D_4FEA_2D_986C_2D_4ED7987E3A70
{
   import sample.xx.ram;
   import avm2.intrinsics.memory.si32;
   
   function modDataInit_C_Run_lmessages_2E_o_3A_F492CD4D_2D_D224_2D_4FEA_2D_986C_2D_4ED7987E3A70(param1:Object) : void
   {
      var _loc4_:int = param1[".bss"][0];
      ram.position = _loc4_;
      ram.writeBytes(new DS0());
      var _loc3_:int = param1[".data.rel.ro.local"][0];
      ram.position = _loc3_;
      ram.writeBytes(new DS1());
      var _loc2_:int = param1[".rodata.str1.1"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS2());
      si32(L__2E_str,_loc3_ + 0);
      si32(L__2E_str1,_loc3_ + 4);
      si32(L__2E_str2,_loc3_ + 8);
      si32(L__2E_str3,_loc3_ + 12);
   }
}
