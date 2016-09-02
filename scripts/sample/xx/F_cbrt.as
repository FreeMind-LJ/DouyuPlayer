package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F_cbrt() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:int = 0;
      var _loc10_:* = 0;
      var _loc12_:* = 0;
      var _loc5_:* = NaN;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 40);
      _loc5_ = lf64(_loc3_);
      sf64(_loc5_,_loc3_ - 8);
      _loc1_ = int(_loc3_ - 8);
      _loc1_ = _loc1_ | 4;
      _loc1_ = li32(_loc1_);
      _loc12_ = _loc1_ & -2147483648;
      _loc10_ = _loc12_ ^ _loc1_;
      if(_loc10_ >= 2146435072)
      {
         _loc5_ = Number(_loc5_ + _loc5_);
      }
      else
      {
         if(_loc10_ <= 1048575)
         {
            if((_loc10_ | li32(_loc3_ - 8)) != 0)
            {
               var _loc4_:* = Number(_loc5_ * 18014398509482000);
               sf64(_loc4_,_loc3_ - 16);
               _loc10_ = int(int((uint(li32(int(_loc3_ - 16) | 4) & 2147483647)) / 3) + 696219795);
            }
         }
         else
         {
            _loc10_ = int(int(_loc10_ / 3) + 715094163);
         }
         _loc1_ = _loc10_ | _loc12_;
         var _loc9_:* = int(_loc3_ - 24);
         _loc9_ = _loc9_ | 4;
         si32(_loc1_,_loc9_);
         si32(0,_loc3_ - 24);
         _loc4_ = lf64(_loc3_ - 24);
         var _loc8_:Number = _loc4_ / _loc5_;
         var _loc7_:Number = _loc4_ * _loc4_;
         _loc8_ = _loc7_ * _loc8_;
         _loc7_ = _loc8_ * _loc8_;
         _loc7_ = _loc7_ * _loc8_;
         var _loc11_:Number = _loc8_ * 0.145996192886612;
         _loc11_ = _loc11_ + -0.758397934778766;
         _loc7_ = _loc7_ * _loc11_;
         _loc11_ = _loc8_ * 1.62142972010535;
         _loc11_ = _loc11_ + -1.88497979543377;
         _loc8_ = _loc11_ * _loc8_;
         _loc8_ = _loc8_ + 1.87595182427177;
         _loc8_ = _loc8_ + _loc7_;
         _loc4_ = Number(_loc8_ * _loc4_);
         sf64(_loc4_,_loc3_ - 32);
         _loc1_ = li32(_loc3_ - 32);
         _loc6_ = _loc1_ + -2147483648;
         _loc12_ = 1;
         _loc10_ = _loc12_;
         if(uint(_loc6_) >= uint(_loc1_))
         {
            _loc10_ = 0;
         }
         if(_loc6_ <= -1)
         {
            _loc12_ = _loc10_;
         }
         _loc1_ = int(_loc3_ - 32);
         _loc1_ = _loc1_ | 4;
         _loc1_ = li32(_loc1_);
         _loc1_ = int(_loc1_ + _loc12_);
         _loc9_ = int(_loc3_ - 40);
         _loc9_ = _loc9_ | 4;
         si32(_loc1_,_loc9_);
         _loc1_ = _loc6_ & -1073741824;
         si32(_loc1_,_loc3_ - 40);
         _loc4_ = lf64(_loc3_ - 40);
         _loc8_ = _loc4_ * _loc4_;
         _loc7_ = _loc5_ / _loc8_;
         _loc8_ = _loc4_ + _loc4_;
         _loc8_ = _loc8_ + _loc7_;
         _loc7_ = _loc7_ - _loc4_;
         _loc8_ = _loc7_ / _loc8_;
         _loc8_ = _loc4_ * _loc8_;
         _loc5_ = Number(_loc8_ + _loc4_);
      }
      st0 = _loc5_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
