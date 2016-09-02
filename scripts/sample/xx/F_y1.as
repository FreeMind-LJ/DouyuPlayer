package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.li32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F.*;
   
   public function F_y1() : void
   {
      var _loc7_:* = 0;
      var _loc12_:* = NaN;
      var _loc19_:* = 0;
      var _loc17_:* = 0;
      var _loc20_:Number = NaN;
      var _loc14_:Number = NaN;
      var _loc1_:Number = NaN;
      var _loc15_:Number = NaN;
      var _loc11_:int = 0;
      var _loc13_:int = 0;
      var _loc16_:int = 0;
      var _loc8_:int = 0;
      var _loc9_:int = 0;
      var _loc5_:* = int(ESP);
      _loc7_ = _loc5_;
      _loc5_ = int(_loc5_ - 16);
      _loc12_ = lf64(_loc7_);
      sf64(_loc12_,_loc7_ - 8);
      var _loc6_:* = int(_loc7_ - 8);
      _loc6_ = _loc6_ | 4;
      _loc19_ = li32(_loc6_);
      _loc17_ = _loc19_ & 2147483647;
      if(uint(_loc17_) >= 2146435072)
      {
         var _loc10_:Number = _loc12_ * _loc12_;
         _loc15_ = 1 / (Number(_loc10_ + _loc12_));
      }
      else
      {
         _loc15_ = -inf;
         if((_loc17_ | li32(_loc7_ - 8)) != 0)
         {
            _loc15_ = nan;
            if(_loc19_ >= 0)
            {
               if(uint(_loc17_) >= 1073741824)
               {
                  _loc14_ = Math.cos(_loc12_);
                  _loc20_ = Math.sin(_loc12_);
                  _loc10_ = -_loc20_;
                  _loc15_ = _loc10_ - _loc14_;
                  if(uint(_loc17_) <= 2145386495)
                  {
                     _loc10_ = _loc20_ * _loc14_;
                     _loc1_ = Math.cos(Number(_loc12_ + _loc12_));
                     if(!(_loc10_ <= 0 | _loc10_ != _loc10_ | false))
                     {
                        _loc20_ = _loc1_ / _loc15_;
                     }
                     else
                     {
                        _loc20_ = _loc20_ - _loc14_;
                        _loc15_ = _loc1_ / _loc20_;
                     }
                     if(uint(_loc17_) < 1207959553)
                     {
                        _loc16_ = _ps8;
                        _loc13_ = _pr8;
                        if(uint(_loc17_) <= 1075838975)
                        {
                           _loc16_ = _ps5;
                           _loc13_ = _pr5;
                           if(uint(_loc17_) <= 1074933386)
                           {
                              _loc11_ = 1;
                              if(uint(_loc17_) >= 1073741824)
                              {
                                 _loc11_ = 0;
                              }
                              _loc16_ = _ps3;
                              _loc13_ = _pr3;
                              if(uint(_loc17_) <= 1074191212)
                              {
                                 if(_loc11_ == 0)
                                 {
                                    _loc16_ = _ps2;
                                    _loc13_ = _pr2;
                                 }
                              }
                           }
                        }
                        _loc11_ = _qs8;
                        _loc9_ = _qr8;
                        if(uint(_loc17_) <= 1075838975)
                        {
                           _loc11_ = _qs5;
                           _loc9_ = _qr5;
                           if(uint(_loc17_) <= 1074933386)
                           {
                              _loc8_ = 1;
                              if(uint(_loc17_) >= 1073741824)
                              {
                                 _loc8_ = 0;
                              }
                              _loc11_ = _qs3;
                              _loc9_ = _qr3;
                              if(uint(_loc17_) <= 1074191212)
                              {
                                 if(_loc8_ == 0)
                                 {
                                    _loc11_ = _qs2;
                                    _loc9_ = _qr2;
                                 }
                              }
                           }
                        }
                        var _loc18_:* = lf64(_loc13_ + 40);
                        _loc10_ = _loc12_ * _loc12_;
                        _loc10_ = 1 / _loc10_;
                        _loc18_ = Number(_loc18_ * _loc10_);
                        var _loc2_:* = lf64(_loc13_ + 32);
                        _loc18_ = Number(_loc2_ + _loc18_);
                        _loc18_ = Number(_loc18_ * _loc10_);
                        _loc2_ = lf64(_loc13_ + 24);
                        _loc18_ = Number(_loc2_ + _loc18_);
                        _loc18_ = Number(_loc18_ * _loc10_);
                        _loc2_ = lf64(_loc13_ + 16);
                        _loc18_ = Number(_loc2_ + _loc18_);
                        _loc2_ = Number(_loc18_ * _loc10_);
                        _loc18_ = lf64(_loc13_ + 8);
                        _loc18_ = Number(_loc18_ + _loc2_);
                        _loc2_ = Number(_loc18_ * _loc10_);
                        _loc18_ = lf64(_loc13_);
                        _loc18_ = Number(_loc18_ + _loc2_);
                        _loc2_ = lf64(_loc16_ + 32);
                        _loc2_ = Number(_loc2_ * _loc10_);
                        var _loc3_:* = lf64(_loc16_ + 24);
                        _loc2_ = Number(_loc3_ + _loc2_);
                        _loc2_ = Number(_loc2_ * _loc10_);
                        _loc3_ = lf64(_loc16_ + 16);
                        _loc2_ = Number(_loc3_ + _loc2_);
                        _loc2_ = Number(_loc2_ * _loc10_);
                        _loc3_ = lf64(_loc16_ + 8);
                        _loc2_ = Number(_loc3_ + _loc2_);
                        _loc2_ = Number(_loc2_ * _loc10_);
                        _loc3_ = lf64(_loc16_);
                        _loc2_ = Number(_loc3_ + _loc2_);
                        _loc2_ = Number(_loc2_ * _loc10_);
                        _loc2_ = Number(_loc2_ + 1);
                        _loc18_ = Number(_loc18_ / _loc2_);
                        _loc18_ = Number(_loc18_ + 1);
                        _loc2_ = lf64(_loc9_ + 40);
                        _loc3_ = Number(_loc2_ * _loc10_);
                        _loc2_ = lf64(_loc9_ + 32);
                        _loc2_ = Number(_loc2_ + _loc3_);
                        _loc3_ = Number(_loc2_ * _loc10_);
                        _loc2_ = lf64(_loc9_ + 24);
                        _loc2_ = Number(_loc2_ + _loc3_);
                        _loc3_ = Number(_loc2_ * _loc10_);
                        _loc2_ = lf64(_loc9_ + 16);
                        _loc2_ = Number(_loc2_ + _loc3_);
                        _loc3_ = Number(_loc2_ * _loc10_);
                        _loc2_ = lf64(_loc9_ + 8);
                        _loc2_ = Number(_loc2_ + _loc3_);
                        _loc2_ = Number(_loc2_ * _loc10_);
                        _loc3_ = lf64(_loc9_);
                        _loc2_ = Number(_loc3_ + _loc2_);
                        _loc3_ = lf64(_loc11_ + 40);
                        var _loc4_:* = Number(_loc3_ * _loc10_);
                        _loc3_ = lf64(_loc11_ + 32);
                        _loc3_ = Number(_loc3_ + _loc4_);
                        _loc3_ = Number(_loc3_ * _loc10_);
                        _loc4_ = lf64(_loc11_ + 24);
                        _loc3_ = Number(_loc4_ + _loc3_);
                        _loc3_ = Number(_loc3_ * _loc10_);
                        _loc4_ = lf64(_loc11_ + 16);
                        _loc3_ = Number(_loc4_ + _loc3_);
                        _loc3_ = Number(_loc3_ * _loc10_);
                        _loc4_ = lf64(_loc11_ + 8);
                        _loc3_ = Number(_loc4_ + _loc3_);
                        _loc3_ = Number(_loc3_ * _loc10_);
                        _loc4_ = lf64(_loc11_);
                        _loc3_ = Number(_loc4_ + _loc3_);
                        _loc10_ = _loc3_ * _loc10_;
                        _loc10_ = _loc10_ + 1;
                        _loc10_ = _loc2_ / _loc10_;
                        _loc10_ = _loc10_ + 0.375;
                        _loc5_ = int(_loc5_ - 16);
                        sf64(_loc12_,_loc5_);
                        _loc10_ = _loc10_ / _loc12_;
                        _loc10_ = _loc10_ * _loc20_;
                        _loc18_ = Number(_loc18_ * _loc15_);
                        _loc10_ = _loc18_ + _loc10_;
                        _loc10_ = _loc10_ * 0.564189583547756;
                        ESP = _loc5_;
                        F_sqrt();
                        _loc5_ = int(_loc5_ + 16);
                        _loc18_ = Number(st0);
                        _loc15_ = _loc10_ / _loc18_;
                     }
                  }
                  _loc5_ = int(_loc5_ - 16);
                  sf64(_loc12_,_loc5_);
                  ESP = _loc5_;
                  F_sqrt();
                  _loc10_ = _loc15_ * 0.564189583547756;
                  _loc5_ = int(_loc5_ + 16);
                  _loc18_ = Number(st0);
                  _loc15_ = _loc10_ / _loc18_;
               }
               else if(uint(_loc17_) <= 1016070144)
               {
                  _loc15_ = -0.636619772367581 / _loc12_;
               }
               else
               {
                  _loc5_ = int(_loc5_ - 16);
                  sf64(_loc12_,_loc5_);
                  ESP = _loc5_;
                  F_j1();
                  _loc5_ = int(_loc5_ + 16);
                  _loc5_ = int(_loc5_ - 16);
                  sf64(_loc12_,_loc5_);
                  _loc18_ = Number(_loc12_ * _loc12_);
                  _loc18_ = Number((Number((Number((Number((Number(_loc18_ * 1.66559246207992e-11) + 6.22741452364622e-9) * _loc18_) + 1.35608801097516e-6) * _loc18_) + 0.000202552581025135) * _loc18_) + 0.019916731823665) * _loc18_);
                  _loc18_ = Number((Number(Number((Number((Number((Number(_loc18_ * -9.19099158039879e-8) + 0.0000235252600561611) * _loc18_) + -0.00191256895875764) * _loc18_) + 0.0504438716639811) * _loc18_) + -0.196057090646239)) / (Number(_loc18_ + 1)));
                  _loc18_ = Number(_loc18_ * _loc12_);
                  ESP = _loc5_;
                  F_log();
                  _loc5_ = int(_loc5_ + 16);
                  _loc10_ = Number(st0 * st0) + Number(-1 / _loc12_);
                  _loc15_ = _loc18_ + Number(_loc10_ * 0.636619772367581);
               }
            }
         }
      }
      st0 = _loc15_;
      _loc5_ = _loc7_;
      ESP = _loc5_;
   }
}
