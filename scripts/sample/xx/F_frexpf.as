package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.sf32;
   
   public function F_frexpf() : void
   {
      var _loc5_:* = 0;
      var _loc2_:* = 0;
      var _loc9_:int = 0;
      var _loc11_:* = 0;
      var _loc10_:* = 0;
      var _loc1_:* = NaN;
      var _loc3_:* = int(ESP);
      _loc5_ = _loc3_;
      _loc3_ = int(_loc3_ - 12);
      _loc2_ = li32(_loc5_ + 4);
      si32(0,_loc2_);
      _loc1_ = lf32(_loc5_);
      sf32(_loc1_,_loc5_ - 4);
      _loc11_ = li32(_loc5_ - 4);
      _loc10_ = _loc11_ & 2147483647;
      if(uint(_loc10_) <= 2139095039)
      {
         if(_loc10_ != 0)
         {
            _loc9_ = -126;
            if(uint(_loc10_) <= 8388607)
            {
               si32(-25,_loc2_);
               var _loc4_:* = 33554432;
               var _loc7_:Number = _loc1_ * _loc4_;
               sf32(_loc7_,_loc5_ - 8);
               _loc11_ = li32(_loc5_ - 8);
               _loc10_ = _loc11_ & 2147483647;
               _loc9_ = -151;
            }
            var _loc8_:* = int(_loc10_ >>> 23);
            _loc8_ = int(_loc8_ + _loc9_);
            si32(_loc8_,_loc2_);
            _loc8_ = _loc11_ & -2139095041;
            _loc8_ = _loc8_ | 1056964608;
            si32(_loc8_,_loc5_ - 12);
            _loc1_ = lf32(_loc5_ - 12);
         }
      }
      st0 = _loc1_;
      _loc3_ = _loc5_;
      ESP = _loc3_;
   }
}
