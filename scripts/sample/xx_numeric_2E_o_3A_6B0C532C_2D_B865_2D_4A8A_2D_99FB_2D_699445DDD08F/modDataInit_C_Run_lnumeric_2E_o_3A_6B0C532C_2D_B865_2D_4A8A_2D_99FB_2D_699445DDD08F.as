package sample.xx_numeric_2E_o_3A_6B0C532C_2D_B865_2D_4A8A_2D_99FB_2D_699445DDD08F
{
   import sample.xx.ram;
   import avm2.intrinsics.memory.si32;
   
   function modDataInit_C_Run_lnumeric_2E_o_3A_6B0C532C_2D_B865_2D_4A8A_2D_99FB_2D_699445DDD08F(param1:Object) : void
   {
      var _loc5_:int = param1[".bss"][0];
      ram.position = _loc5_;
      ram.writeBytes(new DS0());
      var _loc4_:int = param1[".data"][0];
      ram.position = _loc4_;
      ram.writeBytes(new DS1());
      var _loc3_:int = param1[".data.rel.ro.local"][0];
      ram.position = _loc3_;
      ram.writeBytes(new DS2());
      var _loc2_:int = param1[".rodata.str1.1"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS3());
      si32(L__2E_str,_loc3_ + 0);
      si32(L__2E_str1,_loc3_ + 4);
      si32(_numempty,_loc3_ + 8);
   }
}
