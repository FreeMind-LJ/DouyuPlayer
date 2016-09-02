package sample.xx_ew_handler_2E_o_3A_4FCAF72B_2D_2EEA_2D_465A_2D_9D93_2D_82E6DCA37DA9
{
   import sample.xx.ram;
   import sample.xx.__ZTISt9bad_alloc;
   import avm2.intrinsics.memory.si32;
   import sample.xx.__ZNSt9bad_allocD1Ev;
   import sample.xx.__ZNSt9bad_allocD0Ev;
   import sample.xx.__ZNKSt9bad_alloc4whatEv;
   import sample.xx.__ZTVN10__cxxabiv120__si_class_type_infoE;
   import sample.xx.__ZTSSt9bad_alloc;
   import sample.xx.__ZTISt9exception;
   
   function modDataInit_C_Run_new_handler_2E_o_3A_4FCAF72B_2D_2EEA_2D_465A_2D_9D93_2D_82E6DCA37DA9(param1:Object) : void
   {
      var _loc7_:int = param1[".bss"][0];
      ram.position = _loc7_;
      ram.writeBytes(new DS0());
      var _loc6_:int = param1[".rodata"][0];
      ram.position = _loc6_;
      ram.writeBytes(new DS1());
      var _loc5_:int = param1[".rodata.str1.1"][0];
      ram.position = _loc5_;
      ram.writeBytes(new DS2());
      var _loc2_:int = param1[".data.rel.ro.__ZTVSt9bad_alloc"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS3());
      var _loc3_:int = param1[".data.rel.ro.__ZTISt9bad_alloc"][0];
      ram.position = _loc3_;
      ram.writeBytes(new DS4());
      var _loc4_:int = param1[".rodata.__ZTSSt9bad_alloc"][0];
      ram.position = _loc4_;
      ram.writeBytes(new DS5());
      si32(__ZTISt9bad_alloc,_loc2_ + 4);
      si32(__ZNSt9bad_allocD1Ev,_loc2_ + 8);
      si32(__ZNSt9bad_allocD0Ev,_loc2_ + 12);
      si32(__ZNKSt9bad_alloc4whatEv,_loc2_ + 16);
      si32(__ZTVN10__cxxabiv120__si_class_type_infoE + 8,_loc3_ + 0);
      si32(__ZTSSt9bad_alloc,_loc3_ + 4);
      si32(__ZTISt9exception,_loc3_ + 8);
   }
}
