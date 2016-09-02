package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.lf32;
   
   public function F___powisf2() : void
   {
      var _loc6_:* = 0;
      var _loc1_:* = 0;
      var _loc10_:* = 0;
      var _loc5_:* = NaN;
      var _loc2_:* = NaN;
      var _loc3_:* = int(ESP);
      _loc6_ = _loc3_;
      _loc2_ = 1;
      _loc1_ = li32(_loc6_ + 4);
      _loc5_ = lf32(_loc6_);
      _loc10_ = _loc1_;
      while(true)
      {
         var _loc9_:* = _loc10_ & 1;
         if(_loc9_ != 0)
         {
            var _loc7_:* = _loc2_;
            _loc7_ = Number(_loc7_ * _loc5_);
            _loc2_ = _loc7_;
         }
         _loc9_ = int(_loc10_ + 1);
         if(uint(_loc9_) >= 3)
         {
            _loc9_ = int(_loc10_ + (int(_loc10_ >>> 31)));
            _loc10_ = _loc9_ >> 1;
            _loc7_ = _loc5_;
            _loc7_ = Number(_loc7_ * _loc7_);
            _loc5_ = _loc7_;
            continue;
         }
         break;
      }
      if(_loc1_ <= -1)
      {
         var _loc4_:* = 1;
         var _loc8_:* = _loc4_;
         _loc7_ = Number(_loc8_ / _loc2_);
         _loc2_ = _loc7_;
      }
      st0 = _loc2_;
      _loc3_ = _loc6_;
      ESP = _loc3_;
   }
}
