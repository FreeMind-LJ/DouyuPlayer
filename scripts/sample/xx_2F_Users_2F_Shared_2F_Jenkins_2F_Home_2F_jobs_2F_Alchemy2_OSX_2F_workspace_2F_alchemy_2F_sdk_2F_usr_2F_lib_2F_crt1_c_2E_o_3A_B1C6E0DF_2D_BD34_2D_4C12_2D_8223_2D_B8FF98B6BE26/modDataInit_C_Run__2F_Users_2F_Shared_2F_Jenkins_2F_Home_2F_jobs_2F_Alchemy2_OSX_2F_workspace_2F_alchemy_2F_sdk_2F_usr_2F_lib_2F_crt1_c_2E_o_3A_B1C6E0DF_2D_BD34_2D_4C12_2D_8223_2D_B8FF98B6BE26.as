package sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_crt1_c_2E_o_3A_B1C6E0DF_2D_BD34_2D_4C12_2D_8223_2D_B8FF98B6BE26
{
   import sample.xx.ram;
   import avm2.intrinsics.memory.si32;
   
   function modDataInit_C_Run__2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_crt1_c_2E_o_3A_B1C6E0DF_2D_BD34_2D_4C12_2D_8223_2D_B8FF98B6BE26(param1:Object) : void
   {
      var _loc5_:int = param1[".bss"][0];
      ram.position = _loc5_;
      ram.writeBytes(new DS0());
      var _loc4_:int = param1[".data.rel.local"][0];
      ram.position = _loc4_;
      ram.writeBytes(new DS1());
      var _loc3_:int = param1[".rodata.str1.1"][0];
      ram.position = _loc3_;
      ram.writeBytes(new DS2());
      var _loc2_:int = param1[".note.ABI-tag"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS3());
      si32(L__2E_str,_loc4_ + 0);
   }
}
