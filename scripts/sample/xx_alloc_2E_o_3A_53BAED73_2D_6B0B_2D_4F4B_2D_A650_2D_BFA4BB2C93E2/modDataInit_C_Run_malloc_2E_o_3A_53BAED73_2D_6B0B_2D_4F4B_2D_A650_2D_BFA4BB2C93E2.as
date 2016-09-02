package sample.xx_alloc_2E_o_3A_53BAED73_2D_6B0B_2D_4F4B_2D_A650_2D_BFA4BB2C93E2
{
   import sample.xx.ram;
   import avm2.intrinsics.memory.si32;
   
   function modDataInit_C_Run_malloc_2E_o_3A_53BAED73_2D_6B0B_2D_4F4B_2D_A650_2D_BFA4BB2C93E2(param1:Object) : void
   {
      var _loc7_:int = param1[".bss"][0];
      ram.position = _loc7_;
      ram.writeBytes(new DS0());
      var _loc6_:int = param1[".data"][0];
      ram.position = _loc6_;
      ram.writeBytes(new DS1());
      var _loc5_:int = param1[".rodata"][0];
      ram.position = _loc5_;
      ram.writeBytes(new DS2());
      var _loc2_:int = param1[".data.rel.local"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS3());
      var _loc3_:int = param1[".rodata.str1.1"][0];
      ram.position = _loc3_;
      ram.writeBytes(new DS4());
      var _loc4_:int = param1[".rodata.str1.16"][0];
      ram.position = _loc4_;
      ram.writeBytes(new DS5());
      si32(_wrtmessage,_loc2_ + 0);
   }
}
