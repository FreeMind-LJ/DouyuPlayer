package sample.xx_os_failure_2E_o_3A_F89064E9_2D_F8EA_2D_48FA_2D_A8DB_2D_2AB2135F3DE6
{
   import sample.xx.ram;
   import sample.xx.__ZTINSt8ios_base7failureE;
   import avm2.intrinsics.memory.si32;
   import sample.xx.__ZNSt8ios_base7failureD1Ev;
   import sample.xx.__ZNSt8ios_base7failureD0Ev;
   import sample.xx.__ZNKSt8ios_base7failure4whatEv;
   import sample.xx.__ZTVN10__cxxabiv120__si_class_type_infoE;
   import sample.xx.__ZTSNSt8ios_base7failureE;
   import sample.xx.__ZTISt9exception;
   
   function modDataInit_C_Run_ios_failure_2E_o_3A_F89064E9_2D_F8EA_2D_48FA_2D_A8DB_2D_2AB2135F3DE6(param1:Object) : void
   {
      var _loc5_:int = param1[".gcc_except_table"][0];
      ram.position = _loc5_;
      ram.writeBytes(new DS0());
      var _loc4_:int = param1[".data.rel.ro.__ZTVNSt8ios_base7failureE"][0];
      ram.position = _loc4_;
      ram.writeBytes(new DS1());
      var _loc3_:int = param1[".data.rel.ro.__ZTINSt8ios_base7failureE"][0];
      ram.position = _loc3_;
      ram.writeBytes(new DS2());
      var _loc2_:int = param1[".rodata.__ZTSNSt8ios_base7failureE"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS3());
      si32(__ZTINSt8ios_base7failureE,_loc4_ + 4);
      si32(__ZNSt8ios_base7failureD1Ev,_loc4_ + 8);
      si32(__ZNSt8ios_base7failureD0Ev,_loc4_ + 12);
      si32(__ZNKSt8ios_base7failure4whatEv,_loc4_ + 16);
      si32(__ZTVN10__cxxabiv120__si_class_type_infoE + 8,_loc3_ + 0);
      si32(__ZTSNSt8ios_base7failureE,_loc3_ + 4);
      si32(__ZTISt9exception,_loc3_ + 8);
   }
}
