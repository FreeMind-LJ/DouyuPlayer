package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F_log10() : void
   {
      var _loc3_:* = 0;
      var _loc2_:* = 0;
      var _loc11_:int = 0;
      var _loc12_:* = 0;
      var _loc5_:* = NaN;
      var _loc4_:Number = NaN;
      var _loc1_:* = int(ESP);
      _loc3_ = _loc1_;
      _loc1_ = int(_loc1_ - 32);
      _loc5_ = lf64(_loc3_);
      sf64(_loc5_,_loc3_ - 8);
      _loc2_ = int(_loc3_ - 8);
      _loc2_ = _loc2_ | 4;
      _loc12_ = li32(_loc2_);
      _loc11_ = -1023;
      if(_loc12_ <= 1048575)
      {
         var _loc9_:* = _loc12_ & 2147483647;
         _loc4_ = -inf;
         if((_loc9_ | li32(_loc3_ - 8)) != 0)
         {
            if(_loc12_ <= -1)
            {
               var _loc10_:Number = _loc5_ - _loc5_;
               _loc4_ = _loc10_ / 0;
            }
            else
            {
               _loc5_ = Number(_loc5_ * 18014398509482000);
               sf64(_loc5_,_loc3_ - 16);
               _loc12_ = li32(int(_loc3_ - 16) | 4);
               _loc11_ = -1077;
            }
         }
         addr204:
         st0 = _loc4_;
         _loc1_ = _loc3_;
         ESP = _loc1_;
         return;
      }
      if(_loc12_ >= 2146435072)
      {
         _loc4_ = _loc5_ + _loc5_;
      }
      else
      {
         sf64(_loc5_,_loc3_ - 24);
         _loc1_ = int(_loc1_ - 16);
         si32(li32(_loc3_ - 24),_loc1_);
         _loc9_ = int((_loc12_ >> 20) + _loc11_);
         _loc2_ = int(_loc9_ >>> 31);
         var _loc7_:* = int(1023 - _loc2_);
         _loc7_ = _loc7_ << 20 | _loc12_ & 1048575;
         si32(_loc7_,_loc1_ + 4);
         _loc10_ = int(_loc2_ + _loc9_);
         ESP = _loc1_;
         F_log();
         _loc1_ = int(_loc1_ + 16);
         var _loc13_:Number = st0;
         _loc10_ = _loc10_ * 0.301029995663612;
         _loc4_ = _loc10_ + (Number(Number(_loc10_ * 3.69423907715893e-13) + Number(_loc13_ * 0.434294481903252)));
      }
      §§goto(addr204);
   }
}
