package sample.xx
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F_coshf() : void
   {
      var _loc6_:* = 0;
      var _loc12_:* = 0;
      var _loc5_:Number = NaN;
      var _loc1_:* = 0;
      var _loc2_:* = NaN;
      var _loc3_:* = int(ESP);
      _loc6_ = _loc3_;
      _loc3_ = int(_loc3_ - 16);
      _loc2_ = lf32(_loc6_);
      sf32(_loc2_,_loc6_ - 4);
      _loc1_ = li32(_loc6_ - 4);
      _loc12_ = _loc1_ & 2147483647;
      if(uint(_loc12_) >= 2139095040)
      {
         var _loc8_:* = _loc2_;
         _loc8_ = Number(_loc8_ * _loc8_);
         _loc2_ = _loc8_;
      }
      else if(uint(_loc12_) <= 1051816471)
      {
         _loc3_ = int(_loc3_ - 16);
         si32(_loc12_,_loc3_);
         ESP = _loc3_;
         F_expm1f();
         _loc2_ = 1;
         _loc3_ = int(_loc3_ + 16);
         _loc5_ = st0;
         if(uint(_loc12_) >= 964689920)
         {
            var _loc7_:* = _loc5_;
            var _loc4_:* = 1;
            _loc8_ = _loc4_;
            var _loc9_:* = Number(_loc7_ + _loc8_);
            var _loc10_:* = _loc9_;
            _loc9_ = _loc10_;
            _loc9_ = Number(_loc9_ + _loc9_);
            _loc10_ = _loc9_;
            _loc7_ = Number(_loc7_ * _loc7_);
            var _loc11_:* = _loc7_;
            _loc7_ = _loc11_;
            _loc7_ = Number(_loc7_ / _loc10_);
            _loc11_ = _loc7_;
            _loc7_ = _loc11_;
            _loc8_ = Number(_loc7_ + _loc8_);
            _loc2_ = _loc8_;
         }
      }
      else if(uint(_loc12_) <= 1091567615)
      {
         _loc3_ = int(_loc3_ - 16);
         si32(_loc12_,_loc3_);
         ESP = _loc3_;
         F_expf();
         _loc4_ = 0.5;
         _loc8_ = _loc4_;
         _loc3_ = int(_loc3_ + 16);
         _loc11_ = Number(st0);
         _loc9_ = _loc11_;
         _loc7_ = Number(_loc8_ / _loc9_);
         _loc11_ = _loc7_;
         _loc8_ = Number(_loc9_ * _loc8_);
         _loc4_ = _loc8_;
         _loc8_ = _loc4_;
         _loc8_ = Number(_loc8_ + _loc11_);
         _loc2_ = _loc8_;
      }
      else if(uint(_loc12_) <= 1118925334)
      {
         _loc3_ = int(_loc3_ - 16);
         si32(_loc12_,_loc3_);
         ESP = _loc3_;
         F_expf();
         _loc4_ = 0.5;
         _loc3_ = int(_loc3_ + 16);
         _loc11_ = Number(st0);
         _loc7_ = _loc11_;
         _loc8_ = Number(_loc7_ * _loc4_);
         _loc2_ = _loc8_;
      }
      else
      {
         _loc2_ = Number(inf);
         if(uint(_loc12_) <= 1119016188)
         {
            si32(_loc12_,_loc6_ - 8);
            _loc4_ = 0.5;
            _loc8_ = _loc4_;
            _loc7_ = lf32(_loc6_ - 8);
            _loc3_ = int(_loc3_ - 16);
            sf32(Number(_loc7_ * _loc8_),_loc3_);
            ESP = _loc3_;
            F_expf();
            _loc3_ = int(_loc3_ + 16);
            _loc11_ = Number(st0);
            _loc7_ = _loc11_;
            _loc8_ = Number(_loc7_ * _loc8_);
            _loc4_ = _loc8_;
            _loc8_ = _loc4_;
            _loc8_ = Number(_loc8_ * _loc7_);
            _loc2_ = _loc8_;
         }
      }
      st0 = _loc2_;
      _loc3_ = _loc6_;
      ESP = _loc3_;
   }
}
