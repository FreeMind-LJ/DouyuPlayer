package sample.xx_dtoa_misc_2E_o_3A_CAC42ED2_2D_032E_2D_4175_2D_B9DB_2D_C2338140AFF7
{
   import sample.xx.ram;
   import avm2.intrinsics.memory.si32;
   
   function modDataInit_C_Run_gdtoa_misc_2E_o_3A_CAC42ED2_2D_032E_2D_4175_2D_B9DB_2D_C2338140AFF7(param1:Object) : void
   {
      var _loc4_:int = param1[".bss"][0];
      ram.position = _loc4_;
      ram.writeBytes(new DS0());
      var _loc3_:int = param1[".rodata"][0];
      ram.position = _loc3_;
      ram.writeBytes(new DS1());
      var _loc2_:int = param1[".data.rel.local"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS2());
      si32(_private_mem,_loc2_ + 0);
   }
}
