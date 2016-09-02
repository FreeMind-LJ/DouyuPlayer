package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F___udivmodsi4() : void
   {
      var _loc3_:* = 0;
      var _loc11_:* = 0;
      var _loc12_:* = 0;
      var _loc7_:int = 0;
      var _loc8_:int = 0;
      var _loc5_:int = 0;
      var _loc6_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = 0;
      _loc12_ = li32(_loc3_ + 4);
      _loc11_ = li32(_loc3_);
      if(_loc12_ != 0)
      {
         if(_loc11_ != 0)
         {
            var _loc10_:* = _loc11_ | int(_loc11_ >>> 1);
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
            _loc10_ = _loc12_ | int(_loc12_ >>> 1);
            _loc10_ = _loc10_ | int(_loc10_ >>> 2);
            _loc10_ = _loc10_ | int(_loc10_ >>> 4);
            _loc9_ = _loc10_ | int(_loc10_ >>> 8);
            _loc10_ = _loc9_ | int(_loc9_ >>> 16);
            _loc10_ = _loc10_ ^ -1;
            _loc9_ = int(_loc10_ >>> 1);
            _loc9_ = int(_loc10_ - (_loc9_ & 1431655765));
            _loc9_ = int(_loc9_ >>> 2);
            _loc9_ = int((_loc9_ & 858993459) + (_loc9_ & 858993459));
            _loc10_ = int(_loc9_ + (int(_loc9_ >>> 4)));
            _loc10_ = _loc10_ & 252645135;
            _loc10_ = int(_loc10_ * 16843009);
            _loc7_ = _loc10_ >>> 24;
            _loc6_ = int(_loc7_ - _loc8_);
            _loc1_ = 0;
            if(uint(_loc6_) <= 31)
            {
               _loc1_ = _loc11_;
               if(_loc6_ != 31)
               {
                  _loc1_ = _loc11_ << int(31 - _loc6_);
                  _loc5_ = _loc6_ + 1;
                  _loc6_ = 0;
                  if(_loc5_ != 0)
                  {
                     _loc5_ = _loc11_ >>> _loc5_;
                     _loc10_ = int(_loc7_ + 1);
                     _loc8_ = _loc10_ - _loc8_;
                     _loc7_ = _loc12_ + -1;
                     _loc6_ = 0;
                     do
                     {
                        _loc9_ = _loc5_ << 1;
                        _loc10_ = int(_loc1_ >>> 31);
                        _loc10_ = _loc10_ | _loc9_;
                        _loc9_ = int(_loc7_ - _loc10_);
                        _loc9_ = _loc9_ >> 31;
                        var _loc4_:* = _loc9_ & _loc12_;
                        _loc5_ = _loc10_ - _loc4_;
                        _loc10_ = _loc1_ << 1;
                        _loc1_ = _loc10_ | _loc6_;
                        _loc6_ = _loc9_ & 1;
                        _loc8_ = _loc8_ + -1;
                     }
                     while(_loc8_ != 0);
                     
                  }
                  _loc10_ = _loc1_ << 1;
                  _loc1_ = _loc10_ | _loc6_;
               }
            }
         }
      }
      _loc10_ = li32(_loc3_ + 8);
      _loc9_ = int(_loc1_ * _loc12_);
      _loc9_ = int(_loc11_ - _loc9_);
      si32(_loc9_,_loc10_);
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
