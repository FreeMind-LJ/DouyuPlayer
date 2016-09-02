package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.lf64;
   
   public function F___muldf3() : void
   {
      var _loc10_:* = 0;
      var _loc6_:* = 0;
      var _loc11_:* = 0;
      var _loc13_:* = 0;
      var _loc12_:* = 0;
      var _loc9_:* = 0;
      var _loc8_:* = 0;
      var _loc2_:* = 0;
      var _loc7_:* = 0;
      var _loc3_:* = 0;
      var _loc23_:* = 0;
      var _loc22_:* = 0;
      var _loc17_:* = 0;
      var _loc16_:* = 0;
      var _loc20_:* = 0;
      var _loc19_:* = 0;
      var _loc15_:* = 0;
      var _loc1_:* = 0;
      var _loc21_:* = 0;
      var _loc18_:* = NaN;
      var _loc5_:* = int(ESP);
      _loc10_ = _loc5_;
      _loc5_ = int(_loc5_ - 80);
      _loc6_ = _loc10_;
      _loc6_ = _loc6_ | 4;
      _loc23_ = li32(_loc6_);
      _loc6_ = int(_loc10_ + 8);
      _loc6_ = _loc6_ | 4;
      _loc22_ = li32(_loc6_);
      _loc6_ = _loc22_ ^ _loc23_;
      _loc21_ = _loc6_ & -2147483648;
      _loc20_ = _loc22_ & 1048575;
      _loc19_ = _loc23_ & 1048575;
      _loc6_ = int(_loc22_ >>> 20);
      _loc17_ = _loc6_ & 2047;
      _loc6_ = int(_loc23_ >>> 20);
      _loc16_ = _loc6_ & 2047;
      _loc6_ = int(_loc16_ + -1);
      _loc15_ = li32(_loc10_ + 8);
      _loc1_ = li32(_loc10_);
      if(uint(_loc6_) <= 2045)
      {
         _loc11_ = 0;
         if(uint(int(_loc17_ + -1)) >= 2046)
         {
         }
         addr919:
         _loc5_ = int(_loc5_ - 16);
         si32(0,_loc5_ + 12);
         si32(0,_loc5_ + 4);
         _loc6_ = _loc19_ | 1048576;
         si32(_loc6_,_loc5_ + 8);
         var _loc14_:* = int(_loc15_ >>> 21);
         var _loc4_:* = _loc20_ << 11;
         _loc14_ = _loc14_ | _loc4_;
         _loc4_ = _loc14_ | -2147483648;
         si32(_loc4_,_loc5_);
         ESP = _loc5_;
         F___muldi3();
         _loc5_ = int(_loc5_ + 16);
         _loc20_ = int(eax);
         _loc19_ = int(edx);
         _loc5_ = int(_loc5_ - 16);
         si32(0,_loc5_ + 12);
         _loc14_ = _loc15_ << 11;
         si32(_loc14_,_loc5_ + 8);
         si32(0,_loc5_ + 4);
         si32(_loc6_,_loc5_);
         ESP = _loc5_;
         F___muldi3();
         _loc5_ = int(_loc5_ + 16);
         _loc7_ = int(eax);
         _loc12_ = int(edx);
         _loc5_ = int(_loc5_ - 16);
         si32(0,_loc5_ + 12);
         si32(_loc1_,_loc5_ + 8);
         si32(0,_loc5_ + 4);
         si32(_loc4_,_loc5_);
         ESP = _loc5_;
         F___muldi3();
         _loc5_ = int(_loc5_ + 16);
         _loc6_ = int(eax);
         _loc23_ = int(edx);
         _loc5_ = int(_loc5_ - 16);
         si32(0,_loc5_ + 12);
         si32(_loc1_,_loc5_ + 8);
         si32(0,_loc5_ + 4);
         si32(_loc14_,_loc5_);
         ESP = _loc5_;
         F___muldi3();
         _loc5_ = int(_loc5_ + 16);
         _loc15_ = int(eax);
         _loc1_ = int(edx);
         _loc8_ = int(_loc6_ + _loc1_);
         _loc22_ = 1;
         _loc9_ = _loc22_;
         if(uint(_loc8_) >= uint(_loc6_))
         {
            _loc9_ = 0;
         }
         _loc13_ = _loc22_;
         if(uint(_loc8_) >= uint(_loc1_))
         {
            _loc13_ = _loc9_;
         }
         _loc7_ = _loc7_ & -2048;
         _loc1_ = int(_loc8_ + _loc7_);
         _loc9_ = _loc22_;
         if(uint(_loc1_) >= uint(_loc8_))
         {
            _loc9_ = 0;
         }
         _loc8_ = _loc22_;
         if(uint(_loc1_) >= uint(_loc7_))
         {
            _loc8_ = _loc9_;
         }
         _loc3_ = int(_loc13_ + _loc8_);
         _loc8_ = int(_loc12_ + _loc20_);
         _loc9_ = int(_loc8_ + _loc23_);
         _loc13_ = int(_loc9_ + _loc3_);
         _loc2_ = _loc22_;
         if(uint(_loc13_) >= uint(_loc9_))
         {
            _loc2_ = 0;
         }
         _loc7_ = _loc22_;
         if(uint(_loc13_) >= uint(_loc3_))
         {
            _loc7_ = _loc2_;
         }
         _loc3_ = _loc22_;
         if(uint(_loc9_) >= uint(_loc8_))
         {
            _loc3_ = 0;
         }
         _loc2_ = _loc22_;
         if(uint(_loc9_) >= uint(_loc23_))
         {
            _loc2_ = _loc3_;
         }
         _loc23_ = _loc22_;
         if(uint(_loc8_) >= uint(_loc12_))
         {
            _loc23_ = 0;
         }
         if(uint(_loc8_) >= uint(_loc20_))
         {
            _loc22_ = _loc23_;
         }
         _loc6_ = int(_loc19_ + _loc22_);
         _loc6_ = int(_loc6_ + _loc2_);
         _loc19_ = int(_loc6_ + _loc7_);
         _loc14_ = _loc19_ & 1048576;
         _loc6_ = int(_loc17_ + _loc16_);
         _loc16_ = int(_loc6_ + _loc11_);
         _loc17_ = _loc15_ & -2048;
         if(_loc14_ != 0)
         {
            _loc16_ = int(_loc16_ + -1022);
         }
         else
         {
            _loc14_ = _loc13_ << 1;
            _loc4_ = _loc1_ << 1;
            _loc1_ = _loc4_ | int(_loc17_ >>> 31);
            _loc4_ = _loc19_ << 1;
            _loc19_ = _loc4_ | int(_loc13_ >>> 31);
            _loc17_ = _loc17_ << 1;
            _loc16_ = int(_loc16_ + -1023);
            _loc13_ = _loc14_ | int(_loc1_ >>> 31);
         }
         addr1713:
         if(_loc16_ >= 2047)
         {
            _loc6_ = int(_loc10_ - 24);
            _loc14_ = _loc21_ | 2146435072;
            si32(_loc14_,_loc6_ | 4);
            si32(0,_loc10_ - 24);
            _loc18_ = lf64(_loc10_ - 24);
         }
         else
         {
            if(_loc16_ <= 0)
            {
               _loc20_ = int(1 - _loc16_);
               if(uint(_loc20_) >= 64)
               {
                  _loc6_ = int(_loc10_ - 16);
                  si32(_loc21_,_loc6_ | 4);
                  si32(0,_loc10_ - 16);
                  _loc18_ = lf64(_loc10_ - 16);
               }
               else
               {
                  _loc5_ = int(_loc5_ - 16);
                  si32(_loc20_,_loc5_ + 8);
                  si32(_loc13_,_loc5_);
                  si32(_loc19_,_loc5_ + 4);
                  ESP = _loc5_;
                  F___lshrdi3();
                  _loc5_ = int(_loc5_ + 16);
                  _loc11_ = int(eax);
                  _loc16_ = int(edx);
                  _loc5_ = int(_loc5_ - 16);
                  _loc6_ = int(64 - _loc20_);
                  si32(_loc6_,_loc5_ + 8);
                  si32(_loc19_,_loc5_ + 4);
                  si32(_loc13_,_loc5_);
                  ESP = _loc5_;
                  F___ashldi3();
                  _loc5_ = int(_loc5_ + 16);
                  _loc19_ = int(eax);
                  _loc15_ = int(edx);
                  _loc5_ = int(_loc5_ - 16);
                  si32(_loc20_,_loc5_ + 8);
                  si32(_loc1_,_loc5_ + 4);
                  si32(_loc17_,_loc5_);
                  ESP = _loc5_;
                  F___lshrdi3();
                  _loc5_ = int(_loc5_ + 16);
                  _loc20_ = int(eax);
                  _loc12_ = int(edx);
                  _loc5_ = int(_loc5_ - 16);
                  si32(_loc6_,_loc5_ + 8);
                  si32(_loc1_,_loc5_ + 4);
                  si32(_loc17_,_loc5_);
                  ESP = _loc5_;
                  F___ashldi3();
                  _loc5_ = int(_loc5_ + 16);
                  _loc17_ = 1;
                  if((int(eax) | int(edx)) == 0)
                  {
                     _loc17_ = 0;
                  }
                  _loc14_ = _loc17_ & 1;
                  _loc6_ = _loc19_ | _loc20_;
                  _loc17_ = _loc6_ | _loc14_;
                  _loc1_ = _loc15_ | _loc12_;
               }
            }
            else
            {
               _loc16_ = _loc16_ << 20 | _loc19_ & 1048575;
               _loc11_ = _loc13_;
            }
            _loc15_ = 1;
            _loc20_ = _loc15_;
            if(uint(_loc1_) <= 2147483648)
            {
               _loc20_ = 0;
            }
            _loc19_ = _loc15_;
            if(_loc17_ == 0)
            {
               _loc19_ = 0;
            }
            if(_loc1_ != -2147483648)
            {
               _loc19_ = _loc20_;
            }
            _loc19_ = _loc19_ & 1;
            _loc6_ = _loc11_ | 0;
            _loc11_ = int(_loc6_ + _loc19_);
            _loc20_ = _loc15_;
            if(uint(_loc11_) >= uint(_loc6_))
            {
               _loc20_ = 0;
            }
            if(uint(_loc11_) >= uint(_loc19_))
            {
               _loc15_ = _loc20_;
            }
            _loc6_ = _loc16_ | _loc21_;
            _loc21_ = int(_loc6_ + _loc15_);
            _loc6_ = _loc1_ ^ -2147483648;
            _loc6_ = _loc17_ | _loc6_;
            if(_loc6_ == 0)
            {
               _loc6_ = _loc11_ & 1;
               _loc17_ = int(_loc6_ + _loc11_);
               _loc16_ = 1;
               _loc1_ = _loc16_;
               if(uint(_loc17_) >= uint(_loc6_))
               {
                  _loc1_ = 0;
               }
               if(uint(_loc17_) >= uint(_loc11_))
               {
                  _loc16_ = _loc1_;
               }
               _loc21_ = int(_loc21_ + _loc16_);
               _loc11_ = _loc17_;
            }
            _loc6_ = int(_loc10_ - 8);
            _loc6_ = _loc6_ | 4;
            si32(_loc21_,_loc6_);
            si32(_loc11_,_loc10_ - 8);
            _loc18_ = lf64(_loc10_ - 8);
         }
         st0 = _loc18_;
         _loc5_ = _loc10_;
         ESP = _loc5_;
         return;
      }
      _loc12_ = _loc23_ & 2147483647;
      _loc13_ = 1;
      _loc11_ = _loc13_;
      if(uint(_loc12_) >= 2146435072)
      {
         _loc11_ = 0;
      }
      if(_loc1_ != 0)
      {
         _loc13_ = 0;
      }
      if(_loc12_ != 2146435072)
      {
         _loc13_ = _loc11_;
      }
      if(_loc13_ == 0)
      {
         _loc6_ = int(_loc10_ - 72);
         _loc14_ = _loc23_ | 524288;
         si32(_loc14_,_loc6_ | 4);
         si32(_loc1_,_loc10_ - 72);
         _loc18_ = lf64(_loc10_ - 72);
      }
      else
      {
         _loc23_ = _loc22_ & 2147483647;
         _loc13_ = 1;
         _loc11_ = _loc13_;
         if(uint(_loc23_) >= 2146435072)
         {
            _loc11_ = 0;
         }
         if(_loc15_ != 0)
         {
            _loc13_ = 0;
         }
         if(_loc23_ != 2146435072)
         {
            _loc13_ = _loc11_;
         }
         if(_loc13_ == 0)
         {
            _loc6_ = int(_loc10_ - 64);
            _loc14_ = _loc22_ | 524288;
            si32(_loc14_,_loc6_ | 4);
            si32(_loc15_,_loc10_ - 64);
            _loc18_ = lf64(_loc10_ - 64);
         }
         else
         {
            _loc6_ = _loc1_ | _loc12_ ^ 2146435072;
            if(_loc6_ == 0)
            {
               _loc18_ = Number(nan);
               if((_loc15_ | _loc23_) != 0)
               {
                  _loc14_ = int(_loc10_ - 56);
                  si32(_loc21_ | _loc12_,_loc14_ | 4);
                  _loc6_ = 0 | _loc1_;
                  si32(_loc6_,_loc10_ - 56);
                  _loc18_ = lf64(_loc10_ - 56);
               }
            }
            else
            {
               _loc6_ = _loc15_ | _loc23_ ^ 2146435072;
               if(_loc6_ == 0)
               {
                  _loc18_ = Number(nan);
                  if((_loc1_ | _loc12_) != 0)
                  {
                     _loc14_ = int(_loc10_ - 48);
                     si32(_loc21_ | _loc23_,_loc14_ | 4);
                     _loc6_ = 0 | _loc15_;
                     si32(_loc6_,_loc10_ - 48);
                     _loc18_ = lf64(_loc10_ - 48);
                  }
               }
               else
               {
                  _loc6_ = _loc1_ | _loc12_;
                  if(_loc6_ == 0)
                  {
                     _loc6_ = int(_loc10_ - 40);
                     si32(_loc21_,_loc6_ | 4);
                     si32(0,_loc10_ - 40);
                     _loc18_ = lf64(_loc10_ - 40);
                  }
                  else
                  {
                     _loc6_ = _loc15_ | _loc23_;
                     if(_loc6_ == 0)
                     {
                        _loc6_ = int(_loc10_ - 32);
                        si32(_loc21_,_loc6_ | 4);
                        si32(0,_loc10_ - 32);
                        _loc18_ = lf64(_loc10_ - 32);
                     }
                     else
                     {
                        _loc11_ = 0;
                        if(uint(_loc12_) <= 1048575)
                        {
                           if(_loc19_ != 0)
                           {
                              _loc6_ = _loc19_ | int(_loc19_ >>> 1);
                              _loc6_ = _loc6_ | int(_loc6_ >>> 2);
                              _loc14_ = _loc6_ | int(_loc6_ >>> 4);
                              _loc14_ = _loc14_ | int(_loc14_ >>> 8);
                              _loc6_ = _loc14_ | int(_loc14_ >>> 16);
                              _loc6_ = _loc6_ ^ -1;
                              _loc14_ = int(_loc6_ >>> 1);
                              _loc14_ = int(_loc6_ - (_loc14_ & 1431655765));
                              _loc14_ = int(_loc14_ >>> 2);
                              _loc14_ = int((_loc14_ & 858993459) + (_loc14_ & 858993459));
                              _loc6_ = int(_loc14_ + (int(_loc14_ >>> 4)));
                              _loc6_ = _loc6_ & 252645135;
                              _loc6_ = int(_loc6_ * 16843009);
                              _loc11_ = int(_loc6_ >>> 24);
                           }
                           else
                           {
                              _loc14_ = _loc1_ | int(_loc1_ >>> 1);
                              _loc14_ = _loc14_ | int(_loc14_ >>> 2);
                              _loc14_ = _loc14_ | int(_loc14_ >>> 4);
                              _loc14_ = _loc14_ | int(_loc14_ >>> 8);
                              _loc6_ = _loc14_ | int(_loc14_ >>> 16);
                              _loc6_ = _loc6_ ^ -1;
                              _loc14_ = int(_loc6_ >>> 1);
                              _loc14_ = int(_loc6_ - (_loc14_ & 1431655765));
                              _loc14_ = int(_loc14_ >>> 2);
                              _loc6_ = int((_loc14_ & 858993459) + (_loc14_ & 858993459));
                              _loc6_ = int(_loc6_ + (int(_loc6_ >>> 4)));
                              _loc6_ = _loc6_ & 252645135;
                              _loc6_ = int(_loc6_ * 16843009);
                              _loc6_ = int(_loc6_ >>> 24);
                              _loc11_ = int(_loc6_ + 32);
                           }
                           _loc5_ = int(_loc5_ - 16);
                           si32(_loc1_,_loc5_);
                           _loc6_ = int(_loc11_ + -11);
                           si32(_loc6_,_loc5_ + 8);
                           si32(_loc19_,_loc5_ + 4);
                           ESP = _loc5_;
                           F___ashldi3();
                           _loc11_ = int(12 - _loc11_);
                           _loc5_ = int(_loc5_ + 16);
                           _loc1_ = int(eax);
                           _loc19_ = int(edx);
                        }
                        if(uint(_loc23_) <= 1048575)
                        {
                           if(_loc20_ != 0)
                           {
                              _loc14_ = _loc20_ | int(_loc20_ >>> 1);
                              _loc14_ = _loc14_ | int(_loc14_ >>> 2);
                              _loc14_ = _loc14_ | int(_loc14_ >>> 4);
                              _loc14_ = _loc14_ | int(_loc14_ >>> 8);
                              _loc6_ = _loc14_ | int(_loc14_ >>> 16);
                              _loc6_ = _loc6_ ^ -1;
                              _loc14_ = int(_loc6_ >>> 1);
                              _loc14_ = int(_loc6_ - (_loc14_ & 1431655765));
                              _loc14_ = int(_loc14_ >>> 2);
                              _loc14_ = int((_loc14_ & 858993459) + (_loc14_ & 858993459));
                              _loc6_ = int(_loc14_ + (int(_loc14_ >>> 4)));
                              _loc6_ = _loc6_ & 252645135;
                              _loc6_ = int(_loc6_ * 16843009);
                              _loc12_ = int(_loc6_ >>> 24);
                           }
                           else
                           {
                              _loc14_ = _loc15_ | int(_loc15_ >>> 1);
                              _loc14_ = _loc14_ | int(_loc14_ >>> 2);
                              _loc14_ = _loc14_ | int(_loc14_ >>> 4);
                              _loc14_ = _loc14_ | int(_loc14_ >>> 8);
                              _loc6_ = _loc14_ | int(_loc14_ >>> 16);
                              _loc6_ = _loc6_ ^ -1;
                              _loc14_ = int(_loc6_ >>> 1);
                              _loc14_ = int(_loc6_ - (_loc14_ & 1431655765));
                              _loc14_ = int(_loc14_ >>> 2);
                              _loc14_ = int((_loc14_ & 858993459) + (_loc14_ & 858993459));
                              _loc6_ = int(_loc14_ + (int(_loc14_ >>> 4)));
                              _loc6_ = _loc6_ & 252645135;
                              _loc6_ = int(_loc6_ * 16843009);
                              _loc6_ = int(_loc6_ >>> 24);
                              _loc12_ = int(_loc6_ + 32);
                           }
                           _loc5_ = int(_loc5_ - 16);
                           si32(_loc15_,_loc5_);
                           _loc6_ = int(_loc12_ + -11);
                           si32(_loc6_,_loc5_ + 8);
                           si32(_loc20_,_loc5_ + 4);
                           _loc6_ = int(_loc11_ + 12);
                           _loc11_ = int(_loc6_ - _loc12_);
                           ESP = _loc5_;
                           F___ashldi3();
                           _loc5_ = int(_loc5_ + 16);
                           _loc15_ = int(eax);
                           _loc20_ = int(edx);
                        }
                        §§goto(addr919);
                     }
                  }
               }
            }
         }
      }
      §§goto(addr1713);
   }
}
