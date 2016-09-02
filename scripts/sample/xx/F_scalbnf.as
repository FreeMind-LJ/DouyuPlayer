package sample.xx
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F_scalbnf() : void
   {
      var _loc6_:* = 0;
      var _loc10_:* = 0;
      var _loc1_:* = 0;
      var _loc11_:* = 0;
      var _loc2_:* = NaN;
      var _loc3_:* = int(ESP);
      _loc6_ = _loc3_;
      _loc3_ = int(_loc3_ - 36);
      _loc2_ = lf32(_loc6_);
      sf32(_loc2_,_loc6_ - 4);
      _loc1_ = li32(_loc6_ - 4);
      var _loc12_:* = int(_loc1_ >>> 23);
      _loc11_ = _loc12_ & 255;
      _loc10_ = li32(_loc6_ + 4);
      if(_loc11_ == 0)
      {
         _loc12_ = _loc1_ & 2147483647;
         if(_loc12_ != 0)
         {
            var _loc5_:* = 33554432;
            var _loc8_:* = Number(_loc2_ * _loc5_);
            _loc2_ = _loc8_;
            sf32(_loc2_,_loc6_ - 8);
            _loc1_ = li32(_loc6_ - 8);
            _loc12_ = int(_loc1_ >>> 23);
            _loc12_ = _loc12_ & 255;
            _loc11_ = int(_loc12_ + -25);
            if(_loc10_ <= -50001)
            {
               _loc5_ = 1.00000000317108e-30;
               _loc8_ = Number(_loc2_ * _loc5_);
               _loc2_ = _loc8_;
            }
         }
         addr312:
         st0 = _loc2_;
         _loc3_ = _loc6_;
         ESP = _loc3_;
         return;
      }
      if(_loc11_ == 255)
      {
         _loc8_ = _loc2_;
         _loc8_ = Number(_loc8_ + _loc8_);
         _loc2_ = _loc8_;
      }
      else
      {
         _loc11_ = int(_loc11_ + _loc10_);
         if(_loc11_ >= 255)
         {
            sf32(_loc2_,_loc6_ - 32);
            _loc12_ = li32(_loc6_ - 32);
            _loc12_ = _loc12_ & -2147483648;
            _loc12_ = _loc12_ | 1900671690;
            si32(_loc12_,_loc6_ - 36);
            var _loc4_:* = 1.00000001504747e30;
            var _loc7_:* = lf32(_loc6_ - 36);
            _loc8_ = Number(_loc7_ * _loc4_);
            _loc2_ = _loc8_;
         }
         else if(_loc11_ >= 1)
         {
            _loc12_ = _loc1_ & -2139095041;
            _loc12_ = _loc12_ | _loc11_ << 23;
            si32(_loc12_,_loc6_ - 28);
            _loc2_ = lf32(_loc6_ - 28);
         }
         else if(_loc11_ <= -25)
         {
            sf32(_loc2_,_loc6_ - 16);
            _loc12_ = li32(_loc6_ - 16);
            _loc1_ = _loc12_ & -2147483648;
            if(_loc10_ >= 50001)
            {
               _loc12_ = _loc1_ | 1900671690;
               si32(_loc12_,_loc6_ - 24);
               _loc4_ = 1.00000001504747e30;
               _loc7_ = lf32(_loc6_ - 24);
               _loc8_ = Number(_loc7_ * _loc4_);
               _loc2_ = _loc8_;
            }
            else
            {
               _loc12_ = _loc1_ | 228737632;
               si32(_loc12_,_loc6_ - 20);
               _loc4_ = 1.00000000317108e-30;
               _loc7_ = lf32(_loc6_ - 20);
               _loc8_ = Number(_loc7_ * _loc4_);
               _loc2_ = _loc8_;
            }
         }
         else
         {
            var _loc9_:* = _loc11_ << 23;
            _loc9_ = int(_loc9_ + 209715200);
            _loc12_ = _loc9_ | _loc1_ & -2139095041;
            si32(_loc12_,_loc6_ - 12);
            _loc4_ = 2.98023223876953e-8;
            _loc7_ = lf32(_loc6_ - 12);
            _loc8_ = Number(_loc7_ * _loc4_);
            _loc2_ = _loc8_;
         }
      }
      §§goto(addr312);
   }
}
