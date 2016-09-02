package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F___fixunsdfdi() : void
   {
      var _loc3_:* = 0;
      var _loc5_:* = 0;
      var _loc7_:* = 0;
      var _loc6_:int = 0;
      var _loc8_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = _loc3_;
      _loc1_ = _loc1_ | 4;
      _loc8_ = li32(_loc1_);
      _loc1_ = int(_loc8_ >>> 20);
      _loc7_ = _loc1_ & 2047;
      _loc6_ = _loc7_ + -1023;
      _loc5_ = 0;
      _loc4_ = _loc5_;
      if(_loc6_ >= 0)
      {
         _loc5_ = 0;
         _loc4_ = _loc5_;
         if(_loc8_ >= 0)
         {
            _loc5_ = li32(_loc3_);
            _loc8_ = _loc8_ & 1048575 | 1048576;
            if(_loc6_ >= 53)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_loc5_,_loc2_);
               si32(int(_loc7_ + -1075),_loc2_ + 8);
               si32(_loc8_,_loc2_ + 4);
               ESP = _loc2_;
               F___ashldi3();
               _loc2_ = int(_loc2_ + 16);
               _loc5_ = int(eax);
               _loc4_ = int(edx);
            }
            else
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_loc5_,_loc2_);
               si32(int(1075 - _loc7_),_loc2_ + 8);
               si32(_loc8_,_loc2_ + 4);
               ESP = _loc2_;
               F___lshrdi3();
               _loc2_ = int(_loc2_ + 16);
               _loc5_ = int(eax);
               _loc4_ = int(edx);
            }
         }
      }
      eax = _loc5_;
      edx = _loc4_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
