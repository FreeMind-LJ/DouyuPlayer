package sample.xx_etlocale_2E_o_3A_DA3676CD_2D_76D7_2D_4C38_2D_BE1B_2D_97214930A33F
{
   import sample.xx.ram;
   import avm2.intrinsics.memory.si32;
   
   function modDataInit_C_Run_setlocale_2E_o_3A_DA3676CD_2D_76D7_2D_4C38_2D_BE1B_2D_97214930A33F(param1:Object) : void
   {
      var _loc6_:int = param1[".bss"][0];
      ram.position = _loc6_;
      ram.writeBytes(new DS0());
      var _loc5_:int = param1[".data"][0];
      ram.position = _loc5_;
      ram.writeBytes(new DS1());
      var _loc4_:int = param1[".data.rel.ro.local"][0];
      ram.position = _loc4_;
      ram.writeBytes(new DS2());
      var _loc2_:int = param1[".rodata.str1.1"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS3());
      var _loc3_:int = param1[".rodata.str1.16"][0];
      ram.position = _loc3_;
      ram.writeBytes(new DS4());
      si32(L__2E_str,_loc4_ + 0);
      si32(L__2E_str1,_loc4_ + 4);
      si32(L__2E_str2,_loc4_ + 8);
      si32(L__2E_str3,_loc4_ + 12);
      si32(L__2E_str4,_loc4_ + 16);
      si32(L__2E_str5,_loc4_ + 20);
      si32(L__2E_str6,_loc4_ + 24);
   }
}
