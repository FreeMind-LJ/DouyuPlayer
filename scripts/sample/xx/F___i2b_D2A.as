package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   
   public function F___i2b_D2A() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      si32(1,_loc2_);
      ESP = _loc2_;
      F___Balloc_D2A();
      _loc1_ = li32(_loc3_);
      _loc2_ = int(_loc2_ + 16);
      _loc4_ = eax;
      si32(_loc1_,_loc4_ + 20);
      si32(1,_loc4_ + 16);
      eax = _loc4_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
