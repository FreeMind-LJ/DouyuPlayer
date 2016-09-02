package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public function F_cfmakeraw() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      var _loc4_:* = li32(_loc1_);
      _loc4_ = _loc4_ & -10240;
      _loc4_ = _loc4_ | 1;
      si32(_loc4_,_loc1_);
      _loc4_ = li32(_loc1_ + 4);
      _loc4_ = _loc4_ & -2;
      si32(_loc4_,_loc1_ + 4);
      _loc4_ = li32(_loc1_ + 12);
      _loc4_ = _loc4_ & 1606416993;
      si32(_loc4_,_loc1_ + 12);
      _loc4_ = li32(_loc1_ + 8);
      _loc4_ = _loc4_ & -6913;
      _loc4_ = _loc4_ | 2816;
      si32(_loc4_,_loc1_ + 8);
      si8(1,_loc1_ + 32);
      si8(0,_loc1_ + 33);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
