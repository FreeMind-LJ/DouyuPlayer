package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.lf32;
   
   public function F___floatundisf() : void
   {
      var _loc4_:* = 0;
      var _loc8_:int = 0;
      var _loc5_:* = 0;
      var _loc10_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = 0;
      var _loc11_:* = 0;
      var _loc7_:* = 0;
      var _loc1_:* = NaN;
      var _loc3_:* = int(ESP);
      _loc4_ = _loc3_;
      _loc3_ = int(_loc3_ - 16);
      _loc2_ = li32(_loc4_ + 4);
      _loc11_ = li32(_loc4_);
      _loc10_ = _loc11_ | _loc2_;
      _loc1_ = 0;
      if(_loc10_ != 0)
      {
         _loc10_ = _loc2_ | int(_loc2_ >>> 1);
         _loc10_ = _loc10_ | int(_loc10_ >>> 2);
         _loc10_ = _loc10_ | int(_loc10_ >>> 4);
         _loc10_ = _loc10_ | int(_loc10_ >>> 8);
         _loc10_ = _loc10_ | int(_loc10_ >>> 16);
         _loc10_ = _loc10_ ^ -1;
         var _loc9_:* = int(_loc10_ >>> 1);
         _loc9_ = int(_loc10_ - (_loc9_ & 1431655765));
         _loc9_ = int(_loc9_ >>> 2);
         _loc10_ = int((_loc9_ & 858993459) + (_loc9_ & 858993459));
         _loc10_ = int(_loc10_ + (int(_loc10_ >>> 4)));
         _loc10_ = _loc10_ & 252645135;
         _loc10_ = int(_loc10_ * 16843009);
         _loc8_ = _loc10_ >>> 24;
         if(_loc2_ == 0)
         {
            _loc10_ = _loc11_ | int(_loc11_ >>> 1);
            _loc9_ = _loc10_ | int(_loc10_ >>> 2);
            _loc9_ = _loc9_ | int(_loc9_ >>> 4);
            _loc9_ = _loc9_ | int(_loc9_ >>> 8);
            _loc10_ = _loc9_ | int(_loc9_ >>> 16);
            _loc10_ = _loc10_ ^ -1;
            _loc9_ = int(_loc10_ >>> 1);
            _loc9_ = int(_loc10_ - (_loc9_ & 1431655765));
            _loc9_ = int(_loc9_ >>> 2);
            _loc10_ = int((_loc9_ & 858993459) + (_loc9_ & 858993459));
            _loc10_ = int(_loc10_ + (int(_loc10_ >>> 4)));
            _loc10_ = _loc10_ & 252645135;
            _loc10_ = int(_loc10_ * 16843009);
            _loc10_ = int(_loc10_ >>> 24);
            _loc8_ = _loc10_ + 32;
         }
         _loc7_ = int(63 - _loc8_);
         _loc8_ = 64 - _loc8_;
         if(_loc8_ >= 25)
         {
            if(_loc8_ != 26)
            {
               if(_loc8_ == 25)
               {
                  _loc9_ = _loc2_ << 1;
                  _loc2_ = _loc9_ | int(_loc11_ >>> 31);
                  _loc11_ = _loc11_ << 1;
               }
               else
               {
                  _loc3_ = int(_loc3_ - 16);
                  _loc10_ = int(_loc8_ + -26);
                  si32(_loc10_,_loc3_ + 8);
                  si32(_loc11_,_loc3_);
                  si32(_loc2_,_loc3_ + 4);
                  ESP = _loc3_;
                  F___lshrdi3();
                  _loc3_ = int(_loc3_ + 16);
                  _loc6_ = int(eax);
                  _loc5_ = int(edx);
                  _loc3_ = int(_loc3_ - 16);
                  _loc10_ = int(90 - _loc8_);
                  si32(_loc10_,_loc3_ + 8);
                  si32(-1,_loc3_ + 4);
                  si32(-1,_loc3_);
                  ESP = _loc3_;
                  F___lshrdi3();
                  _loc3_ = int(_loc3_ + 16);
                  _loc10_ = int(edx);
                  _loc10_ = _loc10_ & _loc2_;
                  _loc9_ = int(eax) & _loc11_;
                  _loc2_ = 1;
                  if((_loc9_ | _loc10_) == 0)
                  {
                     _loc2_ = 0;
                  }
                  _loc10_ = _loc2_ & 1;
                  _loc11_ = _loc10_ | _loc6_;
                  _loc2_ = _loc5_;
               }
            }
            _loc10_ = int(_loc11_ >>> 2);
            _loc10_ = _loc10_ & 1;
            _loc10_ = _loc10_ | _loc11_;
            _loc11_ = int(_loc10_ + 1);
            _loc6_ = 1;
            _loc5_ = _loc6_;
            if(uint(_loc11_) >= uint(_loc10_))
            {
               _loc5_ = 0;
            }
            if(_loc11_ != 0)
            {
               _loc6_ = _loc5_;
            }
            _loc6_ = int(_loc2_ + _loc6_);
            _loc10_ = _loc6_ << 30;
            _loc9_ = int(_loc11_ >>> 2);
            _loc2_ = _loc9_ | _loc10_;
            _loc10_ = _loc2_ & 16777216;
            if(_loc10_ != 0)
            {
               _loc2_ = int(_loc11_ >>> 3) | _loc6_ << 29;
               _loc7_ = _loc8_;
            }
         }
         else
         {
            _loc3_ = int(_loc3_ - 16);
            si32(_loc11_,_loc3_);
            _loc10_ = int(24 - _loc8_);
            si32(_loc10_,_loc3_ + 8);
            si32(_loc2_,_loc3_ + 4);
            ESP = _loc3_;
            F___ashldi3();
            _loc3_ = int(_loc3_ + 16);
            _loc2_ = int(eax);
         }
         _loc10_ = _loc2_ & 8388607;
         _loc9_ = _loc7_ << 23;
         _loc9_ = int(_loc9_ + 1065353216);
         _loc10_ = _loc9_ | _loc10_;
         si32(_loc10_,_loc4_ - 4);
         _loc1_ = lf32(_loc4_ - 4);
      }
      st0 = _loc1_;
      _loc3_ = _loc4_;
      ESP = _loc3_;
   }
}
