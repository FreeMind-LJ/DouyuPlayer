package sample.xx
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F_cbrtf() : void
   {
      var _loc5_:* = 0;
      var _loc4_:* = 0;
      var _loc12_:* = 0;
      var _loc11_:* = 0;
      var _loc1_:* = NaN;
      var _loc3_:* = int(ESP);
      _loc5_ = _loc3_;
      _loc3_ = int(_loc3_ - 12);
      _loc1_ = lf32(_loc5_);
      sf32(_loc1_,_loc5_ - 4);
      _loc4_ = li32(_loc5_ - 4);
      _loc12_ = _loc4_ & -2147483648;
      _loc11_ = _loc12_ ^ _loc4_;
      if(_loc11_ >= 2139095040)
      {
         var _loc7_:* = _loc1_;
         _loc7_ = Number(_loc7_ + _loc7_);
         _loc1_ = _loc7_;
      }
      else
      {
         if(_loc11_ <= 8388607)
         {
            if(_loc4_ != _loc12_)
            {
               _loc7_ = Number(_loc1_ * 16777216);
               sf32(_loc7_,_loc5_ - 8);
               var _loc9_:* = li32(_loc5_ - 8);
               _loc9_ = _loc9_ & 2147483647;
               _loc9_ = int(uint(_loc9_) / 3);
               _loc11_ = int(_loc9_ + 642849266);
            }
         }
         else
         {
            _loc9_ = int(_loc11_ / 3);
            _loc11_ = int(_loc9_ + 709958130);
         }
         _loc9_ = _loc11_ | _loc12_;
         si32(_loc9_,_loc5_ - 12);
         var _loc10_:* = lf32(_loc5_ - 12);
         _loc7_ = Number(_loc10_ * _loc10_);
         var _loc8_:Number = _loc7_ * _loc10_;
         var _loc6_:* = _loc1_;
         _loc7_ = Number(_loc6_ + _loc8_);
         var _loc13_:Number = _loc7_ + _loc8_;
         _loc7_ = Number(_loc6_ + _loc6_);
         _loc8_ = _loc7_ + _loc8_;
         _loc10_ = Number(_loc8_ * _loc10_);
         _loc10_ = Number(_loc10_ / _loc13_);
         _loc13_ = _loc10_ * _loc10_;
         _loc13_ = _loc13_ * _loc10_;
         _loc6_ = Number(_loc6_ + _loc13_);
         _loc6_ = Number(_loc6_ + _loc13_);
         _loc7_ = Number(_loc7_ + _loc13_);
         _loc7_ = Number(_loc7_ * _loc10_);
         _loc7_ = Number(_loc7_ / _loc6_);
         _loc1_ = _loc7_;
      }
      st0 = _loc1_;
      _loc3_ = _loc5_;
      ESP = _loc3_;
   }
}
