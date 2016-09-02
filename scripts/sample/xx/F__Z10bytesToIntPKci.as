package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   
   public function F__Z10bytesToIntPKci() : void
   {
      var _loc1_:* = 0;
      var _loc3_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      _loc3_ = li32(_loc1_ + 4);
      _loc4_ = li32(_loc1_);
      _loc3_ = int(_loc4_ + _loc3_);
      _loc4_ = li8(_loc3_);
      _loc5_ = li8(_loc3_ + 1);
      _loc5_ = _loc5_ << 8;
      _loc4_ = _loc5_ | _loc4_;
      _loc5_ = li8(_loc3_ + 2);
      _loc5_ = _loc5_ << 16;
      _loc4_ = _loc4_ | _loc5_;
      _loc3_ = li8(_loc3_ + 3);
      _loc3_ = _loc3_ << 24;
      _loc3_ = _loc4_ | _loc3_;
      eax = _loc3_;
      _loc2_ = _loc1_;
      ESP = _loc2_;
   }
}
