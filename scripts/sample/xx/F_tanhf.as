package sample.xx
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F_tanhf() : void
   {
      var _loc6_:* = 0;
      var _loc1_:* = 0;
      var _loc11_:* = 0;
      var _loc7_:* = NaN;
      var _loc4_:* = NaN;
      var _loc2_:* = NaN;
      var _loc3_:* = int(ESP);
      _loc6_ = _loc3_;
      _loc3_ = int(_loc3_ - 16);
      _loc2_ = lf32(_loc6_);
      sf32(_loc2_,_loc6_ - 4);
      _loc1_ = li32(_loc6_ - 4);
      _loc11_ = _loc1_ & 2147483647;
      if(uint(_loc11_) >= 2139095040)
      {
         var _loc5_:* = 1;
         _loc7_ = _loc5_;
         var _loc9_:* = Number(_loc7_ / _loc2_);
         _loc4_ = _loc9_;
         if(_loc1_ >= 0)
         {
            _loc9_ = _loc4_;
            _loc9_ = Number(_loc9_ + _loc7_);
            _loc2_ = _loc9_;
         }
         else
         {
            var _loc10_:* = -1;
            _loc9_ = Number(_loc4_ + _loc10_);
            _loc2_ = _loc9_;
         }
      }
      else
      {
         _loc4_ = 1;
         if(uint(_loc11_) <= 1091567615)
         {
            if(uint(_loc11_) <= 964689919)
            {
               _loc10_ = 1.00000001504747e30;
               _loc9_ = Number(_loc2_ + _loc10_);
               _loc5_ = _loc9_;
               _loc10_ = 1;
               if(_loc5_ <= _loc10_)
               {
               }
            }
            si32(_loc11_,_loc6_ - 8);
            _loc4_ = lf32(_loc6_ - 8);
            if(uint(_loc11_) >= 1065353216)
            {
               _loc3_ = int(_loc3_ - 16);
               _loc9_ = _loc4_;
               _loc9_ = Number(_loc9_ + _loc9_);
               sf32(_loc9_,_loc3_);
               ESP = _loc3_;
               F_expm1f();
               _loc5_ = 2;
               _loc3_ = int(_loc3_ + 16);
               _loc10_ = Number(st0);
               var _loc8_:* = _loc10_;
               _loc9_ = Number(_loc8_ + _loc5_);
               _loc5_ = _loc9_;
               _loc10_ = -2;
               _loc8_ = _loc10_;
               _loc9_ = Number(_loc8_ / _loc5_);
               _loc5_ = _loc9_;
               _loc10_ = 1;
               _loc9_ = Number(_loc5_ + _loc10_);
               _loc4_ = _loc9_;
            }
            else
            {
               _loc10_ = -2;
               _loc3_ = int(_loc3_ - 16);
               sf32(Number(_loc4_ * _loc10_),_loc3_);
               ESP = _loc3_;
               F_expm1f();
               _loc5_ = 2;
               _loc3_ = int(_loc3_ + 16);
               _loc5_ = Number(st0);
               _loc9_ = _loc5_;
               _loc8_ = Number(_loc9_ + _loc5_);
               _loc10_ = _loc8_;
               _loc9_ = Number(-_loc9_);
               _loc5_ = _loc9_;
               _loc9_ = _loc5_;
               _loc9_ = Number(_loc9_ / _loc10_);
               _loc4_ = _loc9_;
            }
         }
         _loc2_ = _loc4_;
         if(_loc1_ <= -1)
         {
            _loc9_ = _loc4_;
            _loc9_ = Number(-_loc9_);
            _loc2_ = _loc9_;
         }
      }
      st0 = _loc2_;
      _loc3_ = _loc6_;
      ESP = _loc3_;
   }
}
