package sample.xx
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F_atanhf() : void
   {
      var _loc6_:* = 0;
      var _loc5_:* = 0;
      var _loc12_:* = 0;
      var _loc10_:* = NaN;
      var _loc13_:Number = NaN;
      var _loc1_:* = NaN;
      var _loc4_:* = int(ESP);
      _loc6_ = _loc4_;
      _loc4_ = int(_loc4_ - 16);
      _loc1_ = lf32(_loc6_);
      sf32(_loc1_,_loc6_ - 4);
      _loc5_ = li32(_loc6_ - 4);
      _loc12_ = _loc5_ & 2147483647;
      if(uint(_loc12_) >= 1065353217)
      {
         var _loc8_:* = _loc1_;
         _loc8_ = Number(_loc8_ - _loc8_);
         _loc8_ = _loc8_;
         _loc8_ = Number(_loc8_ / _loc8_);
         _loc1_ = _loc8_;
      }
      else if(_loc12_ == 1065353216)
      {
         _loc8_ = Number(_loc1_ / 0);
         _loc1_ = _loc8_;
      }
      else
      {
         if(uint(_loc12_) <= 830472191)
         {
            _loc8_ = Number(_loc1_ + 1.00000001504747e30);
            if(_loc8_ <= 0)
            {
            }
         }
         si32(_loc12_,_loc6_ - 8);
         var _loc3_:* = lf32(_loc6_ - 8);
         _loc10_ = _loc3_;
         _loc8_ = Number(_loc10_ + _loc10_);
         _loc1_ = _loc8_;
         if(uint(_loc12_) <= 1056964607)
         {
            _loc8_ = _loc1_;
            var _loc7_:* = Number(_loc8_ * _loc10_);
            var _loc11_:* = 1;
            var _loc9_:* = _loc11_;
            _loc9_ = Number(_loc9_ - _loc10_);
            _loc11_ = _loc9_;
            _loc7_ = Number(_loc7_ / _loc11_);
            _loc7_ = _loc7_;
            _loc4_ = int(_loc4_ - 16);
            sf32(Number(_loc7_ + _loc8_),_loc4_);
            ESP = _loc4_;
            F_log1pf();
            _loc4_ = int(_loc4_ + 16);
            _loc13_ = st0;
         }
         else
         {
            _loc8_ = 1;
            _loc8_ = Number(_loc8_ - _loc10_);
            _loc8_ = _loc1_;
            _loc4_ = int(_loc4_ - 16);
            sf32(Number(_loc8_ / _loc8_),_loc4_);
            ESP = _loc4_;
            F_log1pf();
            _loc4_ = int(_loc4_ + 16);
            _loc13_ = st0;
         }
         _loc8_ = _loc13_;
         var _loc2_:* = 0.5;
         _loc7_ = _loc2_;
         _loc8_ = Number(_loc8_ * _loc7_);
         _loc1_ = _loc8_;
         if(_loc5_ <= -1)
         {
            _loc8_ = _loc1_;
            _loc8_ = Number(-_loc8_);
            _loc1_ = _loc8_;
         }
      }
      st0 = _loc1_;
      _loc4_ = _loc6_;
      ESP = _loc4_;
   }
}
