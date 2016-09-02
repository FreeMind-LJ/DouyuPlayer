package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sxi8;
   
   public function F__ZN11CCommonFunc6AphashEj() : void
   {
      var _loc1_:* = 0;
      var _loc3_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc4_:* = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      _loc2_ = int(_loc2_ - 4);
      _loc3_ = li32(_loc1_);
      si32(_loc3_,_loc1_ - 4);
      _loc4_ = int(_loc1_ - 4);
      _loc5_ = _loc4_ | 1;
      _loc5_ = si8(li8(_loc5_));
      _loc3_ = _loc3_ << 24;
      _loc3_ = _loc3_ >> 24;
      _loc3_ = int(_loc3_ * 357913941);
      _loc3_ = _loc3_ ^ -86;
      _loc6_ = int(_loc3_ >>> 5);
      _loc6_ = _loc5_ ^ _loc6_;
      _loc5_ = _loc3_ << 11;
      _loc5_ = int(_loc6_ + _loc5_);
      _loc5_ = _loc5_ ^ _loc3_;
      _loc5_ = _loc5_ ^ -1;
      _loc3_ = int(_loc5_ >>> 3);
      _loc6_ = _loc4_ | 2;
      _loc6_ = si8(li8(_loc6_));
      _loc3_ = int(_loc6_ * _loc3_);
      _loc6_ = _loc5_ << 7;
      _loc3_ = _loc3_ ^ _loc6_;
      _loc5_ = _loc3_ ^ _loc5_;
      _loc3_ = int(_loc5_ >>> 5);
      _loc4_ = _loc4_ | 3;
      _loc4_ = si8(li8(_loc4_));
      _loc4_ = _loc4_ ^ _loc3_;
      _loc3_ = _loc5_ << 11;
      _loc4_ = int(_loc4_ + _loc3_);
      _loc4_ = _loc4_ ^ _loc5_;
      _loc4_ = _loc4_ ^ -1;
      eax = _loc4_;
      _loc2_ = _loc1_;
      ESP = _loc2_;
   }
}
