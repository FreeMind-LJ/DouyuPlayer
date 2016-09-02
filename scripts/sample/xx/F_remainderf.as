package sample.xx
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F_remainderf() : void
   {
      var _loc6_:* = 0;
      var _loc11_:* = 0;
      var _loc13_:* = 0;
      var _loc17_:* = NaN;
      var _loc14_:* = 0;
      var _loc12_:* = NaN;
      var _loc16_:* = NaN;
      var _loc10_:* = NaN;
      var _loc18_:* = 0;
      var _loc1_:* = NaN;
      var _loc8_:* = 0;
      var _loc3_:* = NaN;
      var _loc4_:* = int(ESP);
      _loc6_ = _loc4_;
      _loc4_ = int(_loc4_ - 32);
      _loc1_ = lf32(_loc6_);
      sf32(_loc1_,_loc6_ - 4);
      _loc3_ = lf32(_loc6_ + 4);
      sf32(_loc3_,_loc6_ - 8);
      var _loc5_:* = li32(_loc6_ - 8);
      _loc18_ = _loc5_ & 2147483647;
      if(_loc18_ == 0)
      {
         var _loc7_:* = _loc1_;
         _loc7_ = Number(_loc7_ * _loc3_);
         _loc7_ = _loc7_;
         _loc7_ = Number(_loc7_ / _loc7_);
         _loc3_ = _loc7_;
      }
      else
      {
         _loc14_ = li32(_loc6_ - 4);
         _loc13_ = _loc14_ & 2147483647;
         if(uint(_loc13_) <= 2139095039)
         {
            if(uint(_loc18_) < 2139095041)
            {
               if(uint(_loc18_) <= 2130706431)
               {
                  _loc4_ = int(_loc4_ - 16);
                  sf32(_loc1_,_loc4_);
                  _loc7_ = _loc3_;
                  _loc7_ = Number(_loc7_ + _loc7_);
                  sf32(_loc7_,_loc4_ + 4);
                  ESP = _loc4_;
                  F_fmodf();
                  _loc4_ = int(_loc4_ + 16);
                  _loc1_ = Number(st0);
               }
               if(_loc13_ == _loc18_)
               {
                  var _loc15_:* = 0;
                  _loc7_ = Number(_loc1_ * _loc15_);
                  _loc3_ = _loc7_;
               }
               else
               {
                  _loc11_ = _loc14_ & -2147483648;
                  sf32(_loc1_,_loc6_ - 12);
                  si32(_loc18_,_loc6_ - 16);
                  _loc5_ = li32(_loc6_ - 12);
                  _loc5_ = _loc5_ & 2147483647;
                  si32(_loc5_,_loc6_ - 20);
                  _loc17_ = lf32(_loc6_ - 16);
                  _loc1_ = lf32(_loc6_ - 20);
                  if(uint(_loc18_) <= 16777215)
                  {
                     _loc12_ = _loc17_;
                     _loc10_ = _loc1_;
                     _loc7_ = Number(_loc10_ + _loc10_);
                     _loc7_ = _loc7_;
                     if(!(_loc7_ <= _loc12_ | _loc7_ != _loc7_ | _loc12_ != _loc12_))
                     {
                        _loc7_ = Number(_loc10_ - _loc12_);
                        _loc1_ = _loc7_;
                        _loc10_ = _loc1_;
                        _loc7_ = Number(_loc10_ + _loc10_);
                        _loc7_ = _loc7_;
                        if(!(_loc7_ < _loc12_ | _loc7_ != _loc7_ | _loc12_ != _loc12_))
                        {
                           _loc7_ = Number(_loc10_ - _loc12_);
                           _loc1_ = _loc7_;
                        }
                     }
                  }
                  else
                  {
                     _loc10_ = _loc17_;
                     _loc7_ = Number(_loc10_ * 0.5);
                     _loc12_ = _loc7_;
                     _loc16_ = _loc1_;
                     if(!(_loc16_ <= _loc12_ | _loc16_ != _loc16_ | _loc12_ != _loc12_))
                     {
                        _loc7_ = Number(_loc16_ - _loc10_);
                        _loc1_ = _loc7_;
                        _loc16_ = _loc1_;
                        if(!(_loc16_ < _loc12_ | _loc16_ != _loc16_ | _loc12_ != _loc12_))
                        {
                           _loc7_ = Number(_loc16_ - _loc10_);
                           _loc1_ = _loc7_;
                        }
                     }
                  }
                  sf32(_loc1_,_loc6_ - 24);
                  _loc18_ = li32(_loc6_ - 24);
                  _loc5_ = _loc18_ & 2147483647;
                  _loc8_ = 0;
                  if(_loc5_ != _loc8_)
                  {
                     _loc8_ = _loc18_;
                  }
                  _loc5_ = _loc8_ ^ _loc11_;
                  si32(_loc5_,_loc6_ - 28);
                  _loc3_ = lf32(_loc6_ - 28);
               }
            }
         }
         _loc7_ = _loc3_;
         var _loc9_:* = _loc1_;
         _loc7_ = Number(_loc9_ * _loc7_);
         _loc7_ = Number(_loc7_ / _loc7_);
         _loc3_ = _loc7_;
      }
      st0 = _loc3_;
      _loc4_ = _loc6_;
      ESP = _loc4_;
   }
}
