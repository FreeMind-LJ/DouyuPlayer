package sample.xx_monetary_2E_o_3A_55CDA4EF_2D_114E_2D_4B0C_2D_BDAE_2D_88C716C45799
{
   import sample.xx.ram;
   import avm2.intrinsics.memory.si32;
   
   function modDataInit_C_Run_lmonetary_2E_o_3A_55CDA4EF_2D_114E_2D_4B0C_2D_BDAE_2D_88C716C45799(param1:Object) : void
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
      si32(_empty,_loc3_ + 0);
      si32(_empty,_loc3_ + 4);
      si32(_empty,_loc3_ + 8);
      si32(_empty,_loc3_ + 12);
      si32(_numempty,_loc3_ + 16);
      si32(_empty,_loc3_ + 20);
      si32(_empty,_loc3_ + 24);
      si32(_numempty,_loc3_ + 28);
      si32(_numempty,_loc3_ + 32);
      si32(_numempty,_loc3_ + 36);
      si32(_numempty,_loc3_ + 40);
      si32(_numempty,_loc3_ + 44);
      si32(_numempty,_loc3_ + 48);
      si32(_numempty,_loc3_ + 52);
      si32(_numempty,_loc3_ + 56);
      si32(_numempty,_loc3_ + 60);
      si32(_numempty,_loc3_ + 64);
      si32(_numempty,_loc3_ + 68);
      si32(_numempty,_loc3_ + 72);
      si32(_numempty,_loc3_ + 76);
      si32(_numempty,_loc3_ + 80);
   }
}
