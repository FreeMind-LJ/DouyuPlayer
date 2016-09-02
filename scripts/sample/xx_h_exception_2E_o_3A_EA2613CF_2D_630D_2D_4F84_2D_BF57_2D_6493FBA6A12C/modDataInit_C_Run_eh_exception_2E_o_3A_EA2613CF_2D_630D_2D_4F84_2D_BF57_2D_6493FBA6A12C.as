package sample.xx_h_exception_2E_o_3A_EA2613CF_2D_630D_2D_4F84_2D_BF57_2D_6493FBA6A12C
{
   import sample.xx.ram;
   import sample.xx.__ZTISt13bad_exception;
   import avm2.intrinsics.memory.si32;
   import sample.xx.__ZNSt13bad_exceptionD1Ev;
   import sample.xx.__ZNSt13bad_exceptionD0Ev;
   import sample.xx.__ZNKSt13bad_exception4whatEv;
   import sample.xx.__ZTVN10__cxxabiv120__si_class_type_infoE;
   import sample.xx.__ZTSSt13bad_exception;
   import sample.xx.__ZTISt9exception;
   import sample.xx.__ZTVN10__cxxabiv117__class_type_infoE;
   import sample.xx.__ZTSSt9exception;
   import sample.xx.__ZNSt9exceptionD1Ev;
   import sample.xx.__ZNSt9exceptionD0Ev;
   import sample.xx.__ZNKSt9exception4whatEv;
   
   function modDataInit_C_Run_eh_exception_2E_o_3A_EA2613CF_2D_630D_2D_4F84_2D_BF57_2D_6493FBA6A12C(param1:Object) : void
   {
      var _loc9_:int = param1[".rodata.str1.1"][0];
      ram.position = _loc9_;
      ram.writeBytes(new DS0());
      var _loc8_:int = param1[".rodata.str1.16"][0];
      ram.position = _loc8_;
      ram.writeBytes(new DS1());
      var _loc7_:int = param1[".data.rel.ro.__ZTVSt13bad_exception"][0];
      ram.position = _loc7_;
      ram.writeBytes(new DS2());
      var _loc2_:int = param1[".data.rel.ro.__ZTISt13bad_exception"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS3());
      var _loc3_:int = param1[".rodata.__ZTSSt13bad_exception"][0];
      ram.position = _loc3_;
      ram.writeBytes(new DS4());
      var _loc4_:int = param1[".data.rel.ro.__ZTISt9exception"][0];
      ram.position = _loc4_;
      ram.writeBytes(new DS5());
      var _loc5_:int = param1[".rodata.__ZTSSt9exception"][0];
      ram.position = _loc5_;
      ram.writeBytes(new DS6());
      var _loc6_:int = param1[".data.rel.ro.__ZTVSt9exception"][0];
      ram.position = _loc6_;
      ram.writeBytes(new DS7());
      si32(__ZTISt13bad_exception,_loc7_ + 4);
      si32(__ZNSt13bad_exceptionD1Ev,_loc7_ + 8);
      si32(__ZNSt13bad_exceptionD0Ev,_loc7_ + 12);
      si32(__ZNKSt13bad_exception4whatEv,_loc7_ + 16);
      si32(__ZTVN10__cxxabiv120__si_class_type_infoE + 8,_loc2_ + 0);
      si32(__ZTSSt13bad_exception,_loc2_ + 4);
      si32(__ZTISt9exception,_loc2_ + 8);
      si32(__ZTVN10__cxxabiv117__class_type_infoE + 8,_loc4_ + 0);
      si32(__ZTSSt9exception,_loc4_ + 4);
      si32(__ZTISt9exception,_loc6_ + 4);
      si32(__ZNSt9exceptionD1Ev,_loc6_ + 8);
      si32(__ZNSt9exceptionD0Ev,_loc6_ + 12);
      si32(__ZNKSt9exception4whatEv,_loc6_ + 16);
   }
}
