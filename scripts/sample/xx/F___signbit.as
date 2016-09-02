package sample.xx
{
   import avm2.intrinsics.memory.li32;
   
   public function F___signbit() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = _loc3_;
      _loc1_ = _loc1_ | 4;
      _loc1_ = li32(_loc1_);
      _loc1_ = int(_loc1_ >>> 31);
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
