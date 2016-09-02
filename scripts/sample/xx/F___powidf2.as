package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.lf64;
   
   public function F___powidf2() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc7_:* = 0;
      var _loc4_:* = NaN;
      var _loc5_:* = NaN;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc5_ = 1;
      _loc1_ = li32(_loc3_ + 8);
      _loc4_ = lf64(_loc3_);
      _loc7_ = _loc1_;
      while(true)
      {
         var _loc6_:* = _loc7_ & 1;
         if(_loc6_ != 0)
         {
            _loc5_ = Number(_loc5_ * _loc4_);
         }
         _loc6_ = int(_loc7_ + 1);
         if(uint(_loc6_) >= 3)
         {
            _loc6_ = int(_loc7_ + (int(_loc7_ >>> 31)));
            _loc7_ = _loc6_ >> 1;
            _loc4_ = Number(_loc4_ * _loc4_);
            continue;
         }
         break;
      }
      if(_loc1_ <= -1)
      {
         _loc5_ = Number(1 / _loc5_);
      }
      st0 = _loc5_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
