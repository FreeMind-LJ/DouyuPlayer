package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F_nextafter() : void
   {
      var _loc3_:* = 0;
      var _loc6_:* = NaN;
      var _loc13_:* = 0;
      var _loc9_:* = 0;
      var _loc14_:* = 0;
      var _loc10_:* = 0;
      var _loc11_:* = 0;
      var _loc7_:* = 0;
      var _loc2_:* = 0;
      var _loc4_:* = 0;
      var _loc8_:* = NaN;
      var _loc1_:* = int(ESP);
      _loc3_ = _loc1_;
      _loc1_ = int(_loc1_ - 48);
      _loc8_ = lf64(_loc3_ + 8);
      sf64(_loc8_,_loc3_ - 24);
      _loc6_ = lf64(_loc3_);
      sf64(_loc6_,_loc3_ - 16);
      _loc2_ = int(_loc3_ - 24);
      _loc2_ = _loc2_ | 4;
      _loc14_ = li32(_loc2_);
      _loc2_ = int(_loc3_ - 16);
      _loc2_ = _loc2_ | 4;
      _loc13_ = li32(_loc2_);
      _loc11_ = _loc13_ & 2147483647;
      _loc10_ = li32(_loc3_ - 24);
      _loc9_ = li32(_loc3_ - 16);
      if(uint(_loc11_) >= 2146435072)
      {
         if((int(_loc11_ + -2146435072) | _loc9_) == 0)
         {
         }
         addr123:
         addr392:
         _loc8_ = Number(_loc6_ + _loc8_);
         st0 = _loc8_;
         _loc1_ = _loc3_;
         ESP = _loc1_;
         return;
      }
      _loc7_ = _loc14_ & 2147483647;
      if(uint(_loc7_) >= 2146435072)
      {
         if((int(_loc7_ + -2146435072) | _loc10_) != 0)
         {
            §§goto(addr123);
         }
         §§goto(addr392);
      }
      if(_loc6_ != _loc8_)
      {
         if((_loc11_ | _loc9_) == 0)
         {
            var _loc5_:* = _loc14_ & -2147483648;
            si32(_loc5_,int(_loc3_ - 48) | 4);
            si32(1,_loc3_ - 48);
            _loc8_ = lf64(_loc3_ - 48);
            var _loc12_:* = Number(_loc8_ * _loc8_);
            sf64(_loc12_,_loc3_ - 8);
            _loc12_ = lf64(_loc3_ - 8);
            if(!(_loc12_ != _loc8_ | _loc12_ != _loc12_ | _loc8_ != _loc8_))
            {
               _loc8_ = lf64(_loc3_ - 8);
            }
         }
         else
         {
            if(_loc13_ >= 0)
            {
               if(_loc13_ <= _loc14_)
               {
                  if(_loc13_ == _loc14_)
                  {
                     if(uint(_loc9_) > uint(_loc10_))
                     {
                     }
                  }
                  _loc9_ = int(_loc9_ + 1);
                  _loc4_ = 1;
                  if(_loc9_ != 0)
                  {
                     _loc4_ = 0;
                  }
                  _loc4_ = _loc4_ & 1;
               }
               _loc4_ = -1;
               if(_loc9_ != 0)
               {
                  _loc4_ = 0;
               }
               _loc9_ = int(_loc9_ + -1);
            }
            else
            {
               if(_loc14_ <= -1)
               {
                  if(_loc13_ <= _loc14_)
                  {
                     if(_loc13_ == _loc14_)
                     {
                        if(uint(_loc9_) > uint(_loc10_))
                        {
                        }
                     }
                     _loc9_ = int(_loc9_ + 1);
                     _loc4_ = 1;
                     if(_loc9_ != 0)
                     {
                        _loc4_ = 0;
                     }
                     _loc4_ = _loc4_ & 1;
                  }
               }
               _loc4_ = -1;
               if(_loc9_ != 0)
               {
                  _loc4_ = 0;
               }
               _loc9_ = int(_loc9_ + -1);
            }
            _loc4_ = int(_loc4_ + _loc13_);
            _loc13_ = _loc4_ & 2146435072;
            if(_loc13_ == 2146435072)
            {
               _loc8_ = Number(_loc6_ + _loc6_);
            }
            else
            {
               if(uint(_loc13_) <= 1048575)
               {
                  _loc12_ = Number(_loc6_ * _loc6_);
                  sf64(_loc12_,_loc3_ - 8);
                  _loc12_ = lf64(_loc3_ - 8);
                  if(_loc12_ != _loc6_)
                  {
                     si32(_loc4_,int(_loc3_ - 40) | 4);
                     si32(_loc9_,_loc3_ - 40);
                     _loc8_ = lf64(_loc3_ - 40);
                  }
               }
               _loc2_ = int(_loc3_ - 32);
               _loc2_ = _loc2_ | 4;
               si32(_loc4_,_loc2_);
               si32(_loc9_,_loc3_ - 32);
               _loc8_ = lf64(_loc3_ - 32);
            }
         }
      }
      §§goto(addr392);
   }
}
