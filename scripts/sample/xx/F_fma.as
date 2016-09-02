package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F.*;
   
   public function F_fma() : void
   {
      var _loc11_:* = 0;
      var _loc15_:* = NaN;
      var _loc12_:* = NaN;
      var _loc13_:* = NaN;
      var _loc27_:* = 0;
      var _loc20_:* = 0;
      var _loc30_:* = 0;
      var _loc24_:* = 0;
      var _loc16_:* = NaN;
      var _loc18_:* = 0;
      var _loc17_:* = NaN;
      var _loc28_:* = 0;
      var _loc29_:* = 0;
      var _loc2_:* = NaN;
      var _loc1_:* = NaN;
      var _loc25_:* = 0;
      var _loc26_:* = 0;
      var _loc3_:* = NaN;
      var _loc23_:* = 0;
      var _loc22_:int = 0;
      var _loc10_:* = int(ESP);
      _loc11_ = _loc10_;
      _loc10_ = int(_loc10_ - 112);
      _loc13_ = lf64(_loc11_ + 16);
      _loc12_ = lf64(_loc11_ + 8);
      _loc15_ = lf64(_loc11_);
      if(_loc15_ != 0)
      {
         if(_loc12_ != 0 | _loc12_ != _loc12_ | false)
         {
            if(!(_loc13_ != 0 | _loc13_ != _loc13_ | false))
            {
               _loc17_ = Number(_loc15_ * _loc12_);
            }
            else
            {
               sf64(_loc15_,_loc11_ - 8);
               var _loc19_:* = int(_loc11_ - 8);
               _loc19_ = _loc19_ | 4;
               _loc30_ = li32(_loc19_);
               _loc19_ = int(_loc30_ >>> 20);
               _loc19_ = _loc19_ & 2047;
               if(_loc19_ != 2047)
               {
                  _loc29_ = li32(_loc11_ - 8);
                  sf64(_loc12_,_loc11_ - 16);
                  _loc19_ = int(_loc11_ - 16);
                  _loc19_ = _loc19_ | 4;
                  _loc28_ = li32(_loc19_);
                  _loc19_ = int(_loc28_ >>> 20);
                  _loc19_ = _loc19_ & 2047;
                  if(_loc19_ != 2047)
                  {
                     _loc27_ = li32(_loc11_ - 16);
                     sf64(_loc13_,_loc11_ - 24);
                     _loc19_ = int(_loc11_ - 24);
                     _loc19_ = _loc19_ | 4;
                     _loc26_ = li32(_loc19_);
                     _loc19_ = int(_loc26_ >>> 20);
                     _loc17_ = _loc13_;
                     if((_loc19_ & 2047) != 2047)
                     {
                        _loc25_ = li32(_loc11_ - 24);
                        _loc24_ = _loc30_ & 2147483647;
                        _loc23_ = 0;
                        _loc18_ = _loc23_;
                        _loc17_ = _loc15_;
                        if(uint(_loc24_) <= 2146435071)
                        {
                           _loc18_ = 0;
                           _loc17_ = _loc15_;
                           if((_loc24_ | _loc29_) != 0)
                           {
                              _loc20_ = -1022;
                              _loc16_ = _loc15_;
                              if(uint(_loc24_) <= 1048575)
                              {
                                 _loc16_ = Number(_loc15_ * 18014398509482000);
                                 sf64(_loc16_,_loc11_ - 32);
                                 _loc19_ = int(_loc11_ - 32);
                                 _loc19_ = _loc19_ | 4;
                                 _loc30_ = li32(_loc19_);
                                 _loc24_ = _loc30_ & 2147483647;
                                 _loc20_ = -1076;
                              }
                              _loc19_ = int(_loc11_ - 48);
                              _loc19_ = _loc19_ | 4;
                              var _loc21_:* = _loc30_ & -2146435073;
                              _loc21_ = _loc21_ | 1071644672;
                              si32(_loc21_,_loc19_);
                              sf64(_loc16_,_loc11_ - 40);
                              _loc19_ = li32(_loc11_ - 40);
                              si32(_loc19_,_loc11_ - 48);
                              _loc19_ = int(_loc24_ >>> 20);
                              _loc18_ = int(_loc19_ + _loc20_);
                              _loc17_ = lf64(_loc11_ - 48);
                           }
                        }
                        _loc29_ = _loc28_ & 2147483647;
                        _loc24_ = _loc23_;
                        _loc1_ = _loc12_;
                        if(uint(_loc29_) <= 2146435071)
                        {
                           _loc24_ = 0;
                           _loc1_ = _loc12_;
                           if((_loc29_ | _loc27_) != 0)
                           {
                              _loc30_ = -1022;
                              _loc2_ = _loc12_;
                              if(uint(_loc29_) <= 1048575)
                              {
                                 _loc2_ = Number(_loc12_ * 18014398509482000);
                                 sf64(_loc2_,_loc11_ - 56);
                                 _loc19_ = int(_loc11_ - 56);
                                 _loc19_ = _loc19_ | 4;
                                 _loc28_ = li32(_loc19_);
                                 _loc29_ = _loc28_ & 2147483647;
                                 _loc30_ = -1076;
                              }
                              _loc19_ = int(_loc11_ - 72);
                              _loc19_ = _loc19_ | 4;
                              _loc21_ = _loc28_ & -2146435073;
                              _loc21_ = _loc21_ | 1071644672;
                              si32(_loc21_,_loc19_);
                              sf64(_loc2_,_loc11_ - 64);
                              _loc19_ = li32(_loc11_ - 64);
                              si32(_loc19_,_loc11_ - 72);
                              _loc19_ = int(_loc29_ >>> 20);
                              _loc24_ = int(_loc19_ + _loc30_);
                              _loc1_ = lf64(_loc11_ - 72);
                           }
                        }
                        _loc28_ = _loc26_ & 2147483647;
                        _loc2_ = _loc13_;
                        if(uint(_loc28_) <= 2146435071)
                        {
                           _loc23_ = 0;
                           _loc2_ = _loc13_;
                           if((_loc28_ | _loc25_) != 0)
                           {
                              _loc25_ = -1022;
                              _loc3_ = _loc13_;
                              if(uint(_loc28_) <= 1048575)
                              {
                                 _loc3_ = Number(_loc13_ * 18014398509482000);
                                 sf64(_loc3_,_loc11_ - 80);
                                 _loc19_ = int(_loc11_ - 80);
                                 _loc19_ = _loc19_ | 4;
                                 _loc26_ = li32(_loc19_);
                                 _loc28_ = _loc26_ & 2147483647;
                                 _loc25_ = -1076;
                              }
                              _loc19_ = int(_loc11_ - 96);
                              _loc19_ = _loc19_ | 4;
                              _loc21_ = _loc26_ & -2146435073;
                              _loc21_ = _loc21_ | 1071644672;
                              si32(_loc21_,_loc19_);
                              sf64(_loc3_,_loc11_ - 88);
                              _loc19_ = li32(_loc11_ - 88);
                              si32(_loc19_,_loc11_ - 96);
                              _loc19_ = int(_loc28_ >>> 20);
                              _loc23_ = int(_loc19_ + _loc25_);
                              _loc2_ = lf64(_loc11_ - 96);
                           }
                        }
                        _loc26_ = int(_loc24_ + _loc18_);
                        _loc23_ = int(_loc26_ - _loc23_);
                        if(_loc23_ >= 107)
                        {
                           _loc17_ = Number(_loc15_ * _loc12_);
                           if(_loc13_ >= 0)
                           {
                              _loc10_ = int(_loc10_ - 16);
                              si32(2146435072,_loc10_ + 12);
                              si32(0,_loc10_ + 8);
                              sf64(_loc17_,_loc10_);
                              ESP = _loc10_;
                              F_nextafter();
                              _loc10_ = int(_loc10_ + 16);
                              _loc17_ = Number(st0);
                           }
                        }
                        else if(_loc23_ <= -54)
                        {
                           _loc26_ = 1;
                           _loc20_ = _loc26_;
                           if(_loc12_ >= 0)
                           {
                              _loc20_ = 0;
                           }
                           if(_loc15_ <= 0)
                           {
                              _loc26_ = 0;
                           }
                           _loc19_ = _loc26_ ^ _loc20_;
                           _loc19_ = _loc19_ & 1;
                           _loc17_ = _loc13_;
                           if(_loc19_ != 0)
                           {
                              _loc10_ = int(_loc10_ - 16);
                              si32(2146435072,_loc10_ + 12);
                              si32(0,_loc10_ + 8);
                              sf64(_loc13_,_loc10_);
                              ESP = _loc10_;
                              F_nextafter();
                              _loc10_ = int(_loc10_ + 16);
                              _loc17_ = Number(st0);
                           }
                        }
                        else
                        {
                           _loc10_ = int(_loc10_ - 16);
                           sf64(_loc2_,_loc10_);
                           _loc19_ = int(0 - _loc23_);
                           si32(_loc19_,_loc10_ + 8);
                           var _loc4_:Number = _loc1_ * 134217729;
                           var _loc14_:Number = _loc1_ - _loc4_;
                           var _loc7_:Number = _loc14_ + _loc4_;
                           _loc4_ = _loc17_ * 134217729;
                           _loc14_ = _loc17_ - _loc4_;
                           var _loc6_:Number = _loc14_ + _loc4_;
                           _loc14_ = _loc17_ - _loc6_;
                           _loc4_ = _loc1_ - _loc7_;
                           var _loc9_:Number = _loc6_ * _loc4_;
                           _loc9_ = _loc9_ + Number(_loc14_ * _loc7_);
                           _loc6_ = _loc6_ * _loc7_;
                           _loc7_ = _loc6_ + _loc9_;
                           ESP = _loc10_;
                           F_ldexp();
                           _loc10_ = int(_loc10_ + 16);
                           var _loc5_:Number = st0;
                           _loc12_ = Number(_loc7_ + _loc5_);
                           sf64(_loc12_,_loc11_ - 104);
                           var _loc8_:Number = _loc12_ - _loc7_;
                           _loc8_ = _loc7_ - (Number(_loc12_ - _loc8_));
                           _loc7_ = _loc6_ - _loc7_;
                           _loc15_ = Number(Number(_loc8_ + (Number(_loc5_ - _loc8_))) + (Number(Number(_loc7_ + _loc9_) + Number(_loc14_ * _loc4_))));
                           _loc19_ = int(_loc11_ - 104);
                           _loc19_ = _loc19_ | 4;
                           _loc20_ = li32(_loc19_);
                           _loc25_ = _loc20_ & 2147483647;
                           if(uint(_loc25_) <= 1048575)
                           {
                              _loc23_ = li32(_loc11_ - 104);
                              _loc22_ = -2147483647;
                              if((_loc25_ | _loc23_) != 0)
                              {
                                 if(_loc25_ == 0)
                                 {
                                    _loc22_ = -1043;
                                    if(_loc23_ >= 1)
                                    {
                                       do
                                       {
                                          _loc22_ = _loc22_ + -1;
                                          _loc23_ = _loc23_ << 1;
                                       }
                                       while(_loc23_ > 0);
                                       
                                    }
                                 }
                                 else
                                 {
                                    _loc23_ = _loc20_ << 11;
                                    _loc22_ = -1022;
                                    if(_loc23_ >= 1)
                                    {
                                       do
                                       {
                                          _loc22_ = _loc22_ + -1;
                                          _loc23_ = _loc23_ << 1;
                                       }
                                       while(_loc23_ > 0);
                                       
                                    }
                                 }
                              }
                           }
                           else
                           {
                              _loc22_ = 2147483647;
                              if(uint(_loc25_) <= 2146435071)
                              {
                                 _loc19_ = int(_loc25_ >>> 20);
                                 _loc22_ = _loc19_ + -1023;
                              }
                           }
                           _loc19_ = int(_loc22_ + _loc26_);
                           if(_loc19_ >= -1022)
                           {
                              _loc13_ = Number(_loc12_ + _loc15_);
                           }
                           else
                           {
                              _loc10_ = int(_loc10_ - 16);
                              si32(0,_loc10_);
                              _loc19_ = int(0 - _loc26_);
                              si32(_loc19_,_loc10_ + 8);
                              _loc19_ = _loc20_ & -2147483648;
                              _loc19_ = _loc19_ | 1048576;
                              si32(_loc19_,_loc10_ + 4);
                              ESP = _loc10_;
                              F_ldexp();
                              _loc10_ = int(_loc10_ + 16);
                              _loc14_ = st0;
                              _loc4_ = _loc12_ + _loc14_;
                              _loc9_ = _loc4_ - _loc12_;
                              _loc9_ = Number(_loc12_ - (Number(_loc4_ - _loc9_))) + (Number(_loc14_ - _loc9_));
                              _loc4_ = _loc4_ + (Number(_loc9_ + _loc15_));
                              _loc13_ = Number(_loc4_ - _loc14_);
                           }
                           _loc10_ = int(_loc10_ - 16);
                           si32(_loc26_,_loc10_ + 8);
                           sf64(_loc13_,_loc10_);
                           ESP = _loc10_;
                           F_ldexp();
                           _loc10_ = int(_loc10_ + 16);
                           _loc17_ = Number(st0);
                        }
                     }
                  }
               }
               _loc14_ = _loc15_ * _loc12_;
               _loc17_ = Number(_loc14_ + _loc13_);
            }
         }
         addr1068:
         st0 = _loc17_;
         _loc10_ = _loc11_;
         ESP = _loc10_;
         return;
      }
      _loc14_ = _loc15_ * _loc12_;
      _loc17_ = Number(_loc14_ + _loc13_);
      §§goto(addr1068);
   }
}
