package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.si16;
   
   public function F__sread() : void
   {
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc10_:* = 0;
      var _loc9_:* = 0;
      var _loc1_:* = 0;
      var _loc11_:int = 0;
      var _loc5_:* = 0;
      var _loc14_:* = 0;
      var _loc6_:int = 0;
      var _loc13_:* = 0;
      var _loc8_:int = 0;
      var _loc7_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc3_ = li32(_loc4_);
      _loc14_ = li32(_loc3_ + 36);
      _loc13_ = li32(_loc3_ + 28);
      _loc2_ = int(_loc2_ - 16);
      var _loc12_:* = li32(_loc4_ + 8);
      si32(_loc12_,_loc2_ + 8);
      _loc12_ = li32(_loc4_ + 4);
      si32(_loc12_,_loc2_ + 4);
      si32(_loc13_,_loc2_);
      ESP = _loc2_;
      ptr2fun[_loc14_]();
      _loc2_ = int(_loc2_ + 16);
      _loc11_ = eax;
      if(_loc11_ >= 1)
      {
         _loc10_ = li16(_loc3_ + 12);
         _loc13_ = _loc10_ & 4096;
         if(_loc13_ != 0)
         {
            _loc9_ = li32(_loc3_ + 80);
            _loc8_ = 1;
            _loc7_ = _loc8_;
            if(uint(_loc9_) <= (uint(_loc11_ ^ -1)))
            {
               _loc7_ = 0;
            }
            _loc1_ = li32(_loc3_ + 84);
            _loc5_ = _loc11_ >> 31;
            _loc6_ = 2147483647 - _loc5_;
            if(_loc1_ <= _loc6_)
            {
               _loc8_ = 0;
            }
            if(_loc1_ != _loc6_)
            {
               _loc7_ = _loc8_;
            }
            if(_loc7_ == 0)
            {
               _loc6_ = _loc9_ + _loc11_;
               si32(_loc6_,_loc3_ + 80);
               _loc10_ = 1;
               _loc7_ = _loc10_;
               if(uint(_loc6_) >= uint(_loc9_))
               {
                  _loc7_ = 0;
               }
               if(uint(_loc6_) >= uint(_loc11_))
               {
                  _loc10_ = _loc7_;
               }
               _loc13_ = int(_loc1_ + _loc5_);
               _loc13_ = int(_loc13_ + _loc10_);
               si32(_loc13_,_loc3_ + 84);
            }
            else
            {
               _loc13_ = _loc10_ & 61439;
               si16(_loc13_,_loc3_ + 12);
            }
         }
      }
      else if(_loc11_ <= -1)
      {
         _loc13_ = li16(_loc3_ + 12);
         _loc13_ = _loc13_ & 61439;
         si16(_loc13_,_loc3_ + 12);
      }
      eax = _loc11_;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
