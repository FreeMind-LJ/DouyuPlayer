package sample.xx
{
   import avm2.intrinsics.memory.li32;
   
   public function F__ZN11CCommonFunc8SDBMHashEj() : void
   {
      var _loc1_:* = 0;
      var _loc3_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      _loc3_ = li32(_loc1_);
      _loc4_ = _loc3_ << 24;
      _loc4_ = _loc4_ >> 24;
      _loc5_ = _loc3_ << 16;
      _loc5_ = _loc5_ >> 24;
      _loc5_ = int(_loc5_ - _loc4_);
      _loc4_ = int(_loc4_ * 65600);
      _loc4_ = int(_loc5_ + _loc4_);
      _loc5_ = _loc3_ << 8;
      _loc5_ = _loc5_ >> 24;
      _loc5_ = int(_loc5_ - _loc4_);
      _loc4_ = int(_loc4_ * 65600);
      _loc4_ = int(_loc5_ + _loc4_);
      _loc3_ = _loc3_ >> 24;
      _loc3_ = int(_loc3_ - _loc4_);
      _loc4_ = int(_loc4_ * 65600);
      _loc3_ = int(_loc3_ + _loc4_);
      eax = _loc3_;
      _loc2_ = _loc1_;
      ESP = _loc2_;
   }
}
