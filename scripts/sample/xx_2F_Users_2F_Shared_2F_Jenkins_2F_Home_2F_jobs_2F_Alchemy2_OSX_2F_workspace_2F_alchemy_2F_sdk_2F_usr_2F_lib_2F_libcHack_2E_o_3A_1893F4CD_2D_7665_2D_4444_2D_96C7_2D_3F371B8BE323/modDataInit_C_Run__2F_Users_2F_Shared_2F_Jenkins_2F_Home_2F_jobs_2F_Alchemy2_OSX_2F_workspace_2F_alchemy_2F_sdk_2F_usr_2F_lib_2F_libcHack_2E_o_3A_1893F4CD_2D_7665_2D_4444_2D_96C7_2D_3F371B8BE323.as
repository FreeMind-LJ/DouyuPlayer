package sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libcHack_2E_o_3A_1893F4CD_2D_7665_2D_4444_2D_96C7_2D_3F371B8BE323
{
   import sample.xx.ram;
   import sample.xx._memcpy;
   import avm2.intrinsics.memory.si32;
   import sample.xx._memmove;
   import sample.xx._ioctl;
   import sample.xx._mmap_file;
   import sample.xx._sigaction;
   import sample.xx.__sigaction;
   import sample.xx._ldexp;
   
   function modDataInit_C_Run__2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libcHack_2E_o_3A_1893F4CD_2D_7665_2D_4444_2D_96C7_2D_3F371B8BE323(param1:Object) : void
   {
      var _loc5_:int = param1[".bss"][0];
      ram.position = _loc5_;
      ram.writeBytes(new DS0());
      var _loc4_:int = param1[".data"][0];
      ram.position = _loc4_;
      ram.writeBytes(new DS1());
      var _loc3_:int = param1[".data.rel"][0];
      ram.position = _loc3_;
      ram.writeBytes(new DS2());
      var _loc2_:int = param1[".rodata.str1.1"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS3());
      si32(_memcpy,_loc3_ + 4);
      si32(_memmove,_loc3_ + 8);
      si32(_ioctl,_loc3_ + 12);
      si32(_mmap_file,_loc3_ + 16);
      si32(_sigaction,_loc3_ + 20);
      si32(__sigaction,_loc3_ + 24);
      si32(_ldexp,_loc3_ + 28);
   }
}
