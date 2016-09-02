package sample.xx_tomicity_2E_o_3A_44ABF313_2D_6049_2D_4BB7_2D_89B0_2D_8B517D33973B
{
   import sample.xx.ram;
   import sample.xx.__ZTIN9__gnu_cxx24__concurrence_lock_errorE;
   import avm2.intrinsics.memory.si32;
   import sample.xx.__ZN9__gnu_cxx24__concurrence_lock_errorD1Ev;
   import sample.xx.__ZN9__gnu_cxx24__concurrence_lock_errorD0Ev;
   import sample.xx.__ZNK9__gnu_cxx24__concurrence_lock_error4whatEv;
   import sample.xx.__ZTVN10__cxxabiv120__si_class_type_infoE;
   import sample.xx.__ZTSN9__gnu_cxx24__concurrence_lock_errorE;
   import sample.xx.__ZTISt9exception;
   import sample.xx.__ZTIN9__gnu_cxx26__concurrence_unlock_errorE;
   import sample.xx.__ZN9__gnu_cxx26__concurrence_unlock_errorD1Ev;
   import sample.xx.__ZN9__gnu_cxx26__concurrence_unlock_errorD0Ev;
   import sample.xx.__ZNK9__gnu_cxx26__concurrence_unlock_error4whatEv;
   import sample.xx.__ZTSN9__gnu_cxx26__concurrence_unlock_errorE;
   
   function modDataInit_C_Run_atomicity_2E_o_3A_44ABF313_2D_6049_2D_4BB7_2D_89B0_2D_8B517D33973B(param1:Object) : void
   {
      var _loc11_:int = param1[".bss"][0];
      ram.position = _loc11_;
      ram.writeBytes(new DS0());
      var _loc10_:int = param1[".ctors"][0];
      ram.position = _loc10_;
      ram.writeBytes(new DS1());
      var _loc9_:int = param1[".gcc_except_table"][0];
      ram.position = _loc9_;
      ram.writeBytes(new DS2());
      var _loc2_:int = param1[".rodata.str1.16"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS3());
      var _loc3_:int = param1[".data.rel.ro.__ZTVN9__gnu_cxx24__concurrence_lock_errorE"][0];
      ram.position = _loc3_;
      ram.writeBytes(new DS4());
      var _loc4_:int = param1[".data.rel.ro.__ZTIN9__gnu_cxx24__concurrence_lock_errorE"][0];
      ram.position = _loc4_;
      ram.writeBytes(new DS5());
      var _loc5_:int = param1[".rodata.__ZTSN9__gnu_cxx24__concurrence_lock_errorE"][0];
      ram.position = _loc5_;
      ram.writeBytes(new DS6());
      var _loc6_:int = param1[".data.rel.ro.__ZTVN9__gnu_cxx26__concurrence_unlock_errorE"][0];
      ram.position = _loc6_;
      ram.writeBytes(new DS7());
      var _loc7_:int = param1[".data.rel.ro.__ZTIN9__gnu_cxx26__concurrence_unlock_errorE"][0];
      ram.position = _loc7_;
      ram.writeBytes(new DS8());
      var _loc8_:int = param1[".rodata.__ZTSN9__gnu_cxx26__concurrence_unlock_errorE"][0];
      ram.position = _loc8_;
      ram.writeBytes(new DS9());
      si32(__ZTIN9__gnu_cxx24__concurrence_lock_errorE,_loc3_ + 4);
      si32(__ZN9__gnu_cxx24__concurrence_lock_errorD1Ev,_loc3_ + 8);
      si32(__ZN9__gnu_cxx24__concurrence_lock_errorD0Ev,_loc3_ + 12);
      si32(__ZNK9__gnu_cxx24__concurrence_lock_error4whatEv,_loc3_ + 16);
      si32(__ZTVN10__cxxabiv120__si_class_type_infoE + 8,_loc4_ + 0);
      si32(__ZTSN9__gnu_cxx24__concurrence_lock_errorE,_loc4_ + 4);
      si32(__ZTISt9exception,_loc4_ + 8);
      si32(__ZTIN9__gnu_cxx26__concurrence_unlock_errorE,_loc6_ + 4);
      si32(__ZN9__gnu_cxx26__concurrence_unlock_errorD1Ev,_loc6_ + 8);
      si32(__ZN9__gnu_cxx26__concurrence_unlock_errorD0Ev,_loc6_ + 12);
      si32(__ZNK9__gnu_cxx26__concurrence_unlock_error4whatEv,_loc6_ + 16);
      si32(__ZTVN10__cxxabiv120__si_class_type_infoE + 8,_loc7_ + 0);
      si32(__ZTSN9__gnu_cxx26__concurrence_unlock_errorE,_loc7_ + 4);
      si32(__ZTISt9exception,_loc7_ + 8);
   }
}
