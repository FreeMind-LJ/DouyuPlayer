package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZNSs7replaceEN9__gnu_cxx17__normal_iteratorIPcSsEES2_S2_S2_() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc7_:* = 0;
      var _loc5_:int = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = li32(_loc3_);
      si32(_loc1_,_loc2_);
      _loc7_ = li32(_loc3_ + 4);
      _loc6_ = li32(_loc3_ + 8);
      _loc5_ = _loc6_ - _loc7_;
      ESP = _loc2_;
      F__ZNKSs9_M_ibeginEv();
      _loc2_ = int(_loc2_ + 16);
      _loc6_ = int(eax);
      _loc2_ = int(_loc2_ - 32);
      si32(_loc5_,_loc2_ + 8);
      _loc6_ = int(_loc7_ - _loc6_);
      si32(_loc6_,_loc2_ + 4);
      si32(_loc1_,_loc2_);
      _loc6_ = li32(_loc3_ + 12);
      si32(_loc6_,_loc2_ + 12);
      var _loc4_:* = li32(_loc3_ + 16);
      _loc6_ = int(_loc4_ - _loc6_);
      si32(_loc6_,_loc2_ + 16);
      ESP = _loc2_;
      F__ZNSs7replaceEjjPKcj();
      _loc2_ = int(_loc2_ + 32);
      _loc6_ = int(eax);
      eax = _loc6_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
