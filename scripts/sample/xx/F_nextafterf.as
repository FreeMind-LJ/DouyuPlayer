package sample.xx
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F_nextafterf() : void
   {
      var _loc5_:* = 0;
      var _loc2_:* = NaN;
      var _loc1_:* = 0;
      var _loc11_:* = 0;
      var _loc12_:* = 0;
      var _loc8_:* = 0;
      var _loc9_:* = NaN;
      var _loc4_:* = NaN;
      var _loc3_:* = int(ESP);
      _loc5_ = _loc3_;
      _loc3_ = int(_loc3_ - 24);
      _loc2_ = lf32(_loc5_);
      sf32(_loc2_,_loc5_ - 8);
      _loc4_ = lf32(_loc5_ + 4);
      sf32(_loc4_,_loc5_ - 12);
      _loc1_ = li32(_loc5_ - 8);
      _loc12_ = _loc1_ & 2147483647;
      if(uint(_loc12_) <= 2139095040)
      {
         _loc11_ = li32(_loc5_ - 12);
         var _loc10_:* = _loc11_ & 2147483647;
         if(uint(_loc10_) < 2139095041)
         {
            _loc9_ = _loc2_;
            if(_loc9_ != _loc4_)
            {
               if(_loc12_ == 0)
               {
                  _loc10_ = _loc11_ & -2147483648;
                  _loc10_ = _loc10_ | 1;
                  si32(_loc10_,_loc5_ - 24);
                  _loc4_ = lf32(_loc5_ - 24);
                  var _loc6_:* = _loc4_;
                  var _loc7_:* = Number(_loc6_ * _loc6_);
                  sf32(_loc7_,_loc5_ - 4);
                  _loc7_ = lf32(_loc5_ - 4);
                  if(!(_loc7_ != _loc6_ | _loc7_ != _loc7_ | _loc6_ != _loc6_))
                  {
                     _loc4_ = lf32(_loc5_ - 4);
                  }
               }
               else
               {
                  if(_loc1_ >= 0)
                  {
                     if(_loc1_ > _loc11_)
                     {
                        _loc1_ = int(_loc1_ + -1);
                     }
                     else
                     {
                        _loc1_ = int(_loc1_ + 1);
                     }
                  }
                  else
                  {
                     if(_loc11_ <= -1)
                     {
                        if(_loc1_ <= _loc11_)
                        {
                           _loc1_ = int(_loc1_ + 1);
                        }
                     }
                     _loc1_ = int(_loc1_ + -1);
                  }
                  _loc8_ = _loc1_ & 2139095040;
                  if(_loc8_ == 2139095040)
                  {
                     _loc6_ = Number(_loc9_ + _loc9_);
                     _loc4_ = _loc6_;
                  }
                  else
                  {
                     if(uint(_loc8_) <= 8388607)
                     {
                        _loc6_ = Number(_loc9_ * _loc9_);
                        sf32(_loc6_,_loc5_ - 4);
                        _loc6_ = lf32(_loc5_ - 4);
                        if(_loc6_ != _loc9_)
                        {
                           si32(_loc1_,_loc5_ - 20);
                           _loc4_ = lf32(_loc5_ - 20);
                        }
                     }
                     si32(_loc1_,_loc5_ - 16);
                     _loc4_ = lf32(_loc5_ - 16);
                  }
               }
            }
         }
         addr264:
         st0 = _loc4_;
         _loc3_ = _loc5_;
         ESP = _loc3_;
         return;
      }
      _loc7_ = _loc4_;
      _loc6_ = _loc2_;
      _loc6_ = Number(_loc6_ + _loc7_);
      _loc4_ = _loc6_;
      §§goto(addr264);
   }
}
