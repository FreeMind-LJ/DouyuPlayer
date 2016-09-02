package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F_log1p() : void
   {
      var _loc5_:* = 0;
      var _loc7_:* = NaN;
      var _loc14_:* = 0;
      var _loc12_:* = 0;
      var _loc13_:* = NaN;
      var _loc8_:Number = NaN;
      var _loc15_:* = NaN;
      var _loc9_:* = 0;
      var _loc11_:* = 0;
      var _loc6_:* = NaN;
      var _loc3_:* = int(ESP);
      _loc5_ = _loc3_;
      _loc3_ = int(_loc3_ - 40);
      _loc7_ = lf64(_loc5_);
      sf64(_loc7_,_loc5_ - 8);
      var _loc4_:* = int(_loc5_ - 8);
      _loc4_ = _loc4_ | 4;
      _loc14_ = li32(_loc4_);
      _loc12_ = 1;
      if(_loc14_ <= 1071284857)
      {
         _loc12_ = _loc14_ & 2147483647;
         if(uint(_loc12_) >= 1072693248)
         {
            _loc6_ = Number(-inf);
            if(_loc7_ != -1)
            {
               var _loc10_:* = Number(_loc7_ - _loc7_);
               _loc6_ = Number(_loc10_ / _loc10_);
            }
         }
         else if(uint(_loc12_) <= 1042284543)
         {
            _loc10_ = Number(_loc7_ + 18014398509482000);
            if(!(_loc10_ <= 0 | _loc10_ != _loc10_ | false))
            {
               _loc6_ = _loc7_;
               if(uint(_loc12_) >= 1016070144)
               {
               }
            }
            _loc10_ = Number(_loc7_ * _loc7_);
            _loc10_ = Number(_loc10_ * -0.5);
            _loc6_ = Number(_loc10_ + _loc7_);
         }
         else
         {
            _loc12_ = 1;
            if(uint(int(_loc14_ + 1076707643)) >= 1076707644)
            {
               _loc12_ = 0;
            }
         }
         addr594:
         st0 = _loc6_;
         _loc3_ = _loc5_;
         ESP = _loc3_;
         return;
      }
      if(_loc14_ >= 2146435072)
      {
         _loc6_ = Number(_loc7_ + _loc7_);
      }
      else
      {
         if(_loc12_ == 0)
         {
            _loc10_ = Number(_loc7_ * 0.5);
            _loc8_ = _loc10_ * _loc7_;
            _loc12_ = 0;
         }
         else
         {
            if(_loc14_ <= 1128267775)
            {
               _loc15_ = Number(_loc7_ + 1);
               sf64(_loc15_,_loc5_ - 16);
               _loc4_ = int(_loc5_ - 16);
               _loc4_ = _loc4_ | 4;
               _loc14_ = li32(_loc4_);
               _loc4_ = _loc14_ >> 20;
               _loc12_ = int(_loc4_ + -1023);
               if(_loc12_ >= 1)
               {
                  _loc13_ = Number(1 - (Number(_loc15_ - _loc7_)));
               }
               else
               {
                  _loc13_ = Number(_loc7_ - (Number(_loc15_ + -1)));
               }
               _loc13_ = Number(_loc13_ / _loc15_);
            }
            else
            {
               _loc4_ = _loc14_ >> 20;
               _loc12_ = int(_loc4_ + -1023);
               _loc13_ = 0;
               _loc15_ = _loc7_;
            }
            _loc11_ = _loc14_ & 1048575;
            if(uint(_loc11_) <= 434333)
            {
               sf64(_loc15_,_loc5_ - 32);
               _loc9_ = _loc11_ | 1072693248;
               _loc14_ = li32(_loc5_ - 32);
            }
            else
            {
               sf64(_loc15_,_loc5_ - 24);
               _loc9_ = _loc11_ | 1071644672;
               _loc12_ = int(_loc12_ + 1);
               _loc4_ = int(1048576 - _loc11_);
               _loc11_ = int(_loc4_ >>> 2);
               _loc14_ = li32(_loc5_ - 24);
            }
            _loc4_ = int(_loc5_ - 40);
            _loc4_ = _loc4_ | 4;
            si32(_loc9_,_loc4_);
            si32(_loc14_,_loc5_ - 40);
            _loc10_ = lf64(_loc5_ - 40);
            _loc7_ = Number(_loc10_ + -1);
            _loc10_ = Number(_loc7_ * 0.5);
            _loc8_ = _loc10_ * _loc7_;
            if(_loc11_ == 0)
            {
               _loc6_ = 0;
               if(!(_loc7_ != _loc6_ | _loc7_ != _loc7_ | _loc6_ != _loc6_))
               {
                  if(_loc12_ != 0)
                  {
                     _loc10_ = Number(Number(_loc12_) * 1.90821492927059e-10);
                     _loc10_ = Number(_loc10_ + _loc13_);
                     _loc6_ = Number(Number(_loc12_ * 0.693147180369124) + _loc10_);
                  }
               }
               else
               {
                  _loc10_ = Number(_loc7_ * -0.666666666666667);
                  _loc10_ = Number(_loc10_ + 1);
                  _loc8_ = _loc10_ * _loc8_;
                  if(_loc12_ == 0)
                  {
                     _loc6_ = Number(_loc7_ - _loc8_);
                  }
                  else
                  {
                     _loc10_ = Number(_loc12_);
                     _loc10_ = Number(_loc10_ * 0.693147180369124);
                     _loc6_ = Number(_loc10_ - (Number(_loc8_ - (Number(Number(_loc10_ * 1.90821492927059e-10) + _loc13_)) - _loc7_)));
                  }
               }
            }
         }
         _loc10_ = Number(_loc7_ + 2);
         _loc6_ = Number(_loc7_ / _loc10_);
         _loc10_ = Number(_loc6_ * _loc6_);
         var _loc1_:Number = _loc10_ * 0.147981986051166;
         _loc1_ = _loc1_ + 0.153138376992094;
         _loc1_ = _loc1_ * _loc10_;
         _loc1_ = _loc1_ + 0.181835721616181;
         _loc1_ = _loc1_ * _loc10_;
         _loc1_ = _loc1_ + 0.222221984321498;
         _loc1_ = _loc1_ * _loc10_;
         _loc1_ = _loc1_ + 0.285714287436624;
         _loc1_ = _loc1_ * _loc10_;
         _loc1_ = _loc1_ + 0.399999999994094;
         _loc1_ = _loc1_ * _loc10_;
         _loc1_ = _loc1_ + 0.666666666666674;
         _loc15_ = Number(_loc1_ * _loc10_);
         if(_loc12_ == 0)
         {
            _loc10_ = Number(_loc8_ + _loc15_);
            _loc6_ = Number(_loc7_ - (Number(_loc8_ - _loc10_ * _loc6_)));
         }
         else
         {
            _loc10_ = Number(_loc8_ + _loc15_);
            _loc10_ = Number(_loc12_);
            _loc10_ = Number(_loc10_ * 0.693147180369124);
            _loc6_ = Number(_loc10_ - (Number(_loc8_ - (Number(Number(_loc10_ * _loc6_) + (Number(Number(_loc10_ * 1.90821492927059e-10) + _loc13_)))) - _loc7_)));
         }
      }
      §§goto(addr594);
   }
}
