package sample.xx
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F_logf() : void
   {
      var _loc6_:* = 0;
      var _loc16_:* = 0;
      var _loc9_:int = 0;
      var _loc21_:* = NaN;
      var _loc3_:* = NaN;
      var _loc7_:* = NaN;
      var _loc20_:* = NaN;
      var _loc15_:* = NaN;
      var _loc5_:int = 0;
      var _loc22_:* = 0;
      var _loc1_:* = NaN;
      var _loc4_:* = int(ESP);
      _loc6_ = _loc4_;
      _loc4_ = int(_loc4_ - 12);
      _loc1_ = lf32(_loc6_);
      sf32(_loc1_,_loc6_ - 4);
      _loc5_ = -127;
      _loc22_ = li32(_loc6_ - 4);
      if(_loc22_ <= 8388607)
      {
         _loc3_ = Number(-inf);
         var _loc18_:* = _loc22_ & 2147483647;
         if(_loc18_ != 0)
         {
            if(_loc22_ <= -1)
            {
               var _loc8_:* = _loc1_;
               _loc8_ = Number(_loc8_ - _loc8_);
               var _loc19_:* = _loc8_;
               _loc8_ = _loc19_;
               var _loc10_:* = Number(_loc8_ / 0);
               _loc3_ = _loc10_;
            }
            else
            {
               _loc19_ = 33554432;
               _loc10_ = Number(_loc1_ * _loc19_);
               _loc1_ = _loc10_;
               sf32(_loc1_,_loc6_ - 8);
               _loc5_ = -152;
               _loc22_ = li32(_loc6_ - 8);
            }
         }
         addr683:
         st0 = _loc3_;
         _loc4_ = _loc6_;
         ESP = _loc4_;
         return;
      }
      if(_loc22_ >= 2139095040)
      {
         _loc10_ = _loc1_;
         _loc10_ = Number(_loc10_ + _loc10_);
         _loc3_ = _loc10_;
      }
      else
      {
         _loc16_ = _loc22_ & 8388607;
         _loc18_ = int(_loc16_ + 4913952);
         _loc18_ = _loc18_ & 8388608;
         var _loc13_:* = _loc18_ | _loc16_;
         _loc13_ = _loc13_ ^ 1065353216;
         si32(_loc13_,_loc6_ - 12);
         _loc13_ = _loc22_ >> 23;
         _loc9_ = int(_loc13_ + _loc5_) + (int(_loc18_ >>> 23));
         _loc8_ = lf32(_loc6_ - 12);
         _loc10_ = Number(_loc8_ + -1);
         _loc21_ = _loc10_;
         _loc18_ = int(_loc22_ + 32768);
         _loc18_ = _loc18_ & 8372224;
         if(uint(_loc18_) <= 49151)
         {
            _loc15_ = _loc21_;
            _loc3_ = 0;
            _loc10_ = _loc3_;
            if(!(_loc15_ != _loc10_ | _loc15_ != _loc15_ | _loc10_ != _loc10_))
            {
               if(_loc9_ != 0)
               {
                  _loc19_ = Number(_loc9_);
                  _loc8_ = _loc19_;
                  _loc10_ = Number(_loc8_ * 9.05800061445916e-6);
                  var _loc12_:* = 0.693138122558594;
                  _loc8_ = Number(_loc8_ * _loc12_);
                  _loc19_ = _loc8_;
                  _loc8_ = _loc19_;
                  _loc10_ = Number(_loc8_ + _loc10_);
                  _loc3_ = _loc10_;
               }
            }
            else
            {
               _loc10_ = Number(_loc15_ * -0.333333343267441);
               _loc19_ = 0.5;
               _loc10_ = Number(_loc10_ + _loc19_);
               _loc8_ = Number(_loc15_ * _loc15_);
               _loc19_ = _loc8_;
               _loc8_ = _loc19_;
               _loc10_ = Number(_loc8_ * _loc10_);
               _loc3_ = _loc10_;
               if(_loc9_ == 0)
               {
                  _loc10_ = Number(_loc15_ - _loc3_);
                  _loc3_ = _loc10_;
               }
               else
               {
                  _loc19_ = Number(_loc9_);
                  _loc8_ = _loc19_;
                  _loc10_ = Number(_loc8_ * 0.693138122558594);
                  _loc12_ = -9.05800061445916e-6;
                  _loc8_ = Number(_loc8_ * _loc12_);
                  _loc19_ = _loc8_;
                  _loc8_ = Number(_loc19_ + _loc3_);
                  _loc19_ = _loc8_;
                  _loc8_ = _loc19_;
                  _loc8_ = Number(_loc8_ - _loc15_);
                  _loc19_ = _loc8_;
                  _loc10_ = Number(_loc10_ - _loc19_);
                  _loc3_ = _loc10_;
               }
            }
         }
         else
         {
            _loc20_ = _loc21_;
            _loc10_ = Number(_loc20_ + 2);
            _loc10_ = Number(_loc20_ / _loc10_);
            _loc15_ = _loc10_;
            _loc10_ = Number(_loc15_ * _loc15_);
            _loc10_ = _loc10_;
            _loc8_ = Number(_loc10_ * _loc10_);
            _loc19_ = _loc8_;
            _loc8_ = _loc19_;
            _loc12_ = 0.242790788412094;
            var _loc11_:* = Number(_loc8_ * _loc12_);
            _loc12_ = _loc11_;
            var _loc14_:* = 0.400009721517563;
            _loc11_ = Number(_loc12_ + _loc14_);
            _loc12_ = _loc11_;
            _loc11_ = _loc12_;
            _loc11_ = Number(_loc11_ * _loc8_);
            _loc12_ = _loc11_;
            _loc14_ = 0.28498786687851;
            _loc8_ = Number(_loc8_ * _loc14_);
            _loc19_ = _loc8_;
            _loc14_ = 0.666666626930237;
            _loc8_ = Number(_loc19_ + _loc14_);
            _loc19_ = _loc8_;
            _loc8_ = _loc19_;
            _loc10_ = Number(_loc8_ * _loc10_);
            _loc10_ = _loc10_;
            _loc10_ = Number(_loc10_ + _loc12_);
            _loc21_ = _loc10_;
            _loc13_ = int(_loc16_ + -3187664);
            _loc3_ = Number(_loc9_);
            if((_loc13_ | int(3523208 - _loc16_)) >= 1)
            {
               _loc10_ = Number(_loc20_ * 0.5);
               _loc10_ = _loc10_;
               _loc10_ = Number(_loc10_ * _loc20_);
               _loc7_ = _loc10_;
               if(_loc9_ == 0)
               {
                  _loc10_ = _loc7_;
                  _loc8_ = Number(_loc10_ + _loc21_);
                  _loc19_ = _loc8_;
                  _loc8_ = _loc19_;
                  _loc8_ = Number(_loc8_ * _loc15_);
                  _loc19_ = _loc8_;
                  _loc10_ = Number(_loc10_ - _loc19_);
                  _loc10_ = Number(_loc20_ - _loc10_);
                  _loc3_ = _loc10_;
               }
               else
               {
                  _loc19_ = 9.05800061445916e-6;
                  _loc8_ = _loc19_;
                  _loc8_ = Number(_loc3_ * _loc8_);
                  _loc19_ = _loc8_;
                  _loc8_ = _loc7_;
                  var _loc17_:* = Number(_loc8_ + _loc21_);
                  _loc14_ = _loc17_;
                  _loc17_ = _loc14_;
                  _loc17_ = Number(_loc17_ * _loc15_);
                  _loc14_ = _loc17_;
                  _loc17_ = _loc14_;
                  _loc11_ = Number(_loc17_ + _loc19_);
                  _loc12_ = _loc11_;
                  _loc8_ = Number(_loc8_ - _loc12_);
                  _loc19_ = _loc8_;
                  _loc8_ = _loc19_;
                  _loc8_ = Number(_loc8_ - _loc20_);
                  _loc19_ = _loc8_;
                  _loc8_ = _loc19_;
                  _loc12_ = 0.693138122558594;
                  _loc10_ = Number(_loc3_ * _loc12_);
                  _loc10_ = _loc10_;
                  _loc10_ = Number(_loc10_ - _loc8_);
                  _loc3_ = _loc10_;
               }
            }
            else if(_loc9_ == 0)
            {
               _loc10_ = Number(_loc20_ - _loc21_);
               _loc10_ = _loc10_;
               _loc10_ = Number(_loc10_ * _loc15_);
               _loc10_ = Number(_loc20_ - _loc10_);
               _loc3_ = _loc10_;
            }
            else
            {
               _loc19_ = -9.05800061445916e-6;
               _loc8_ = _loc19_;
               _loc8_ = Number(_loc3_ * _loc8_);
               _loc19_ = _loc8_;
               _loc11_ = Number(_loc20_ - _loc21_);
               _loc12_ = _loc11_;
               _loc11_ = _loc12_;
               _loc11_ = Number(_loc11_ * _loc15_);
               _loc12_ = _loc11_;
               _loc11_ = _loc12_;
               _loc8_ = Number(_loc11_ + _loc19_);
               _loc19_ = _loc8_;
               _loc8_ = _loc19_;
               _loc8_ = Number(_loc8_ - _loc20_);
               _loc19_ = _loc8_;
               _loc8_ = _loc19_;
               _loc12_ = 0.693138122558594;
               _loc10_ = Number(_loc3_ * _loc12_);
               _loc10_ = _loc10_;
               _loc10_ = Number(_loc10_ - _loc8_);
               _loc3_ = _loc10_;
            }
         }
      }
      §§goto(addr683);
   }
}
