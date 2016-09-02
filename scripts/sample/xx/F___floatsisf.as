package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.lf32;
   
   public function F___floatsisf() : void
   {
      var _loc4_:* = 0;
      var _loc1_:* = 0;
      var _loc9_:* = 0;
      var _loc8_:int = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc2_:* = NaN;
      var _loc3_:* = int(ESP);
      _loc4_ = _loc3_;
      _loc3_ = int(_loc3_ - 4);
      _loc2_ = 0;
      _loc1_ = li32(_loc4_);
      if(_loc1_ != 0)
      {
         var _loc11_:* = _loc1_ >> 31;
         var _loc10_:int = _loc1_ + _loc11_;
         _loc9_ = _loc10_ ^ _loc11_;
         _loc11_ = _loc9_ | int(_loc9_ >>> 1);
         _loc11_ = _loc11_ | int(_loc11_ >>> 2);
         _loc11_ = _loc11_ | int(_loc11_ >>> 4);
         _loc11_ = _loc11_ | int(_loc11_ >>> 8);
         _loc11_ = _loc11_ | int(_loc11_ >>> 16);
         _loc11_ = _loc11_ ^ -1;
         _loc10_ = _loc11_ >>> 1;
         _loc10_ = _loc11_ - (_loc10_ & 1431655765);
         _loc10_ = _loc10_ >>> 2;
         _loc11_ = int((_loc10_ & 858993459) + (_loc10_ & 858993459));
         _loc11_ = int(_loc11_ + (int(_loc11_ >>> 4)));
         _loc11_ = _loc11_ & 252645135;
         _loc11_ = int(_loc11_ * 16843009);
         _loc8_ = 31 - (int(_loc11_ >>> 24));
         _loc1_ = _loc1_ & -2147483648;
         if(_loc8_ <= 23)
         {
            _loc11_ = _loc9_ << int(23 - _loc8_);
            _loc7_ = _loc11_ ^ 8388608;
         }
         else
         {
            _loc6_ = _loc9_ << int(55 - _loc8_);
            _loc7_ = 1;
            if(uint(_loc6_) <= 2147483648)
            {
               _loc7_ = 0;
            }
            _loc11_ = int(_loc8_ + -23);
            _loc9_ = int(_loc9_ >>> _loc11_);
            _loc11_ = _loc9_ ^ 8388608;
            _loc5_ = _loc7_ & 1;
            _loc7_ = int(_loc5_ + _loc11_);
            if(_loc6_ == -2147483648)
            {
               _loc11_ = int(_loc5_ + _loc9_);
               _loc11_ = _loc11_ & 1;
               _loc7_ = int(_loc11_ + _loc7_);
            }
         }
         _loc11_ = _loc8_ << 23;
         _loc11_ = int(_loc11_ + _loc7_);
         _loc11_ = int(_loc11_ + 1065353216);
         _loc11_ = _loc11_ | _loc1_;
         si32(_loc11_,_loc4_ - 4);
         _loc2_ = lf32(_loc4_ - 4);
      }
      st0 = _loc2_;
      _loc3_ = _loc4_;
      ESP = _loc3_;
   }
}
