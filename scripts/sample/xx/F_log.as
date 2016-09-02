package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F_log() : void
   {
      var _loc7_:* = 0;
      var _loc12_:* = 0;
      var _loc9_:int = 0;
      var _loc18_:Number = NaN;
      var _loc16_:Number = NaN;
      var _loc4_:Number = NaN;
      var _loc3_:Number = NaN;
      var _loc17_:int = 0;
      var _loc19_:* = 0;
      var _loc10_:* = NaN;
      var _loc8_:* = NaN;
      var _loc5_:* = int(ESP);
      _loc7_ = _loc5_;
      _loc5_ = int(_loc5_ - 32);
      _loc10_ = lf64(_loc7_);
      sf64(_loc10_,_loc7_ - 8);
      var _loc6_:* = int(_loc7_ - 8);
      _loc6_ = _loc6_ | 4;
      _loc19_ = li32(_loc6_);
      _loc17_ = -1023;
      if(_loc19_ <= 1048575)
      {
         var _loc14_:* = _loc19_ & 2147483647;
         _loc8_ = Number(-inf);
         if((_loc14_ | li32(_loc7_ - 8)) != 0)
         {
            if(_loc19_ <= -1)
            {
               var _loc15_:Number = _loc10_ - _loc10_;
               _loc8_ = Number(_loc15_ / 0);
            }
            else
            {
               _loc10_ = Number(_loc10_ * 18014398509482000);
               sf64(_loc10_,_loc7_ - 16);
               _loc6_ = int(_loc7_ - 16);
               _loc6_ = _loc6_ | 4;
               _loc19_ = li32(_loc6_);
               _loc17_ = -1077;
            }
         }
         addr515:
         st0 = _loc8_;
         _loc5_ = _loc7_;
         ESP = _loc5_;
         return;
      }
      if(_loc19_ >= 2146435072)
      {
         _loc8_ = Number(_loc10_ + _loc10_);
      }
      else
      {
         _loc12_ = _loc19_ & 1048575;
         _loc6_ = int(_loc12_ + 614244);
         _loc6_ = _loc6_ & 1048576;
         _loc14_ = _loc6_ | _loc12_;
         var _loc11_:int = _loc7_ - 32;
         si32(_loc14_ ^ 1072693248,_loc11_ | 4);
         sf64(_loc10_,_loc7_ - 24);
         _loc14_ = li32(_loc7_ - 24);
         si32(_loc14_,_loc7_ - 32);
         _loc14_ = _loc19_ >> 20;
         _loc9_ = int(_loc14_ + _loc17_) + (int(_loc6_ >>> 20));
         _loc6_ = int(_loc19_ + 2);
         var _loc13_:* = lf64(_loc7_ - 32);
         _loc18_ = _loc13_ + -1;
         if((uint(_loc6_ & 1048575)) <= 2)
         {
            _loc8_ = 0;
            if(!(_loc18_ != _loc8_ | _loc18_ != _loc18_ | _loc8_ != _loc8_))
            {
               if(_loc9_ != 0)
               {
                  _loc13_ = Number(_loc9_);
                  _loc13_ = Number(_loc13_ * 0.693147180369124);
                  _loc8_ = Number(_loc13_ + Number(_loc13_ * 1.90821492927059e-10));
               }
            }
            else
            {
               _loc13_ = Number(_loc18_ * -0.333333333333333);
               _loc8_ = Number(_loc18_ * _loc18_ * (_loc13_ + 0.5));
               if(_loc9_ == 0)
               {
                  _loc8_ = Number(_loc18_ - _loc8_);
               }
               else
               {
                  _loc15_ = _loc9_;
                  _loc13_ = Number(_loc15_ * -1.90821492927059e-10);
                  _loc13_ = Number(_loc13_ + _loc8_);
                  _loc15_ = _loc15_ * 0.693147180369124;
                  _loc8_ = Number(_loc15_ - (Number(_loc13_ - _loc18_)));
               }
            }
         }
         else
         {
            _loc16_ = _loc18_ / (Number(_loc18_ + 2));
            _loc15_ = _loc16_ * _loc16_;
            _loc13_ = Number(_loc15_ * _loc15_);
            _loc13_ = Number((Number((Number(_loc13_ * 0.147981986051166) + 0.181835721616181) * _loc13_) + 0.285714287436624) * _loc13_);
            _loc13_ = Number(_loc13_ + 0.666666666666674);
            _loc15_ = _loc13_ * _loc15_;
            _loc3_ = _loc15_ + Number((Number((Number(_loc13_ * 0.153138376992094) + 0.222221984321498) * _loc13_) + 0.399999999994094) * _loc13_);
            _loc14_ = int(_loc12_ + -398458);
            _loc4_ = _loc9_;
            if((_loc14_ | int(440401 - _loc12_)) >= 1)
            {
               _loc15_ = _loc18_ * 0.5;
               _loc8_ = Number(_loc15_ * _loc18_);
               if(_loc9_ == 0)
               {
                  _loc15_ = _loc8_ + _loc3_;
                  _loc8_ = Number(_loc18_ - (Number(_loc8_ - _loc15_ * _loc16_)));
               }
               else
               {
                  _loc15_ = _loc8_ + _loc3_;
                  _loc15_ = _loc8_ - (Number(Number(_loc15_ * _loc16_) + Number(_loc4_ * 1.90821492927059e-10)));
                  _loc13_ = Number(_loc4_ * 0.693147180369124);
                  _loc8_ = Number(_loc13_ - (Number(_loc15_ - _loc18_)));
               }
            }
            else if(_loc9_ == 0)
            {
               _loc15_ = _loc18_ - _loc3_;
               _loc8_ = Number(_loc18_ - _loc15_ * _loc16_);
            }
            else
            {
               _loc15_ = _loc18_ - _loc3_;
               _loc15_ = Number(_loc15_ * _loc16_) + Number(_loc4_ * -1.90821492927059e-10);
               _loc13_ = Number(_loc4_ * 0.693147180369124);
               _loc8_ = Number(_loc13_ - (Number(_loc15_ - _loc18_)));
            }
         }
      }
      §§goto(addr515);
   }
}
