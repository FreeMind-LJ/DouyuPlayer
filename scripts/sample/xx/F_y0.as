package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.li32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F.*;
   
   public function F_y0() : void
   {
      var _loc7_:* = 0;
      var _loc12_:* = NaN;
      var _loc19_:* = 0;
      var _loc17_:* = 0;
      var _loc20_:Number = NaN;
      var _loc14_:Number = NaN;
      var _loc1_:Number = NaN;
      var _loc11_:int = 0;
      var _loc13_:int = 0;
      var _loc16_:int = 0;
      var _loc8_:int = 0;
      var _loc9_:int = 0;
      var _loc15_:Number = NaN;
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
                  _loc15_ = _loc20_ - _loc14_;
                  if(uint(_loc17_) <= 2145386495)
                  {
                     _loc10_ = _loc20_ * _loc14_;
                     var _loc18_:* = Number(Math.cos(Number(_loc12_ + _loc12_)));
                     _loc1_ = -_loc18_;
                     if(!(_loc10_ >= 0 | _loc10_ != _loc10_ | false))
                     {
                        _loc20_ = _loc1_ / _loc15_;
                     }
                     else
                     {
                        _loc20_ = _loc20_ + _loc14_;
                        _loc15_ = _loc1_ / _loc20_;
                     }
                     if(uint(_loc17_) < 1207959553)
                     {
                        _loc16_ = _pS8;
                        _loc13_ = _pR8;
                        if(uint(_loc17_) <= 1075838975)
                        {
                           _loc16_ = _pS5;
                           _loc13_ = _pR5;
                           if(uint(_loc17_) <= 1074933386)
                           {
                              _loc11_ = 1;
                              if(uint(_loc17_) >= 1073741824)
                              {
                                 _loc11_ = 0;
                              }
                              _loc16_ = _pS3;
                              _loc13_ = _pR3;
                              if(uint(_loc17_) <= 1074191212)
                              {
                                 if(_loc11_ == 0)
                                 {
                                    _loc16_ = _pS2;
                                    _loc13_ = _pR2;
                                 }
                              }
                           }
                        }
                        _loc11_ = _qS8;
                        _loc9_ = _qR8;
                        if(uint(_loc17_) <= 1075838975)
                        {
                           _loc11_ = _qS5;
                           _loc9_ = _qR5;
                           if(uint(_loc17_) <= 1074933386)
                           {
                              _loc8_ = 1;
                              if(uint(_loc17_) >= 1073741824)
                              {
                                 _loc8_ = 0;
                              }
                              _loc11_ = _qS3;
                              _loc9_ = _qR3;
                              if(uint(_loc17_) <= 1074191212)
                              {
                                 if(_loc8_ == 0)
                                 {
                                    _loc11_ = _qS2;
                                    _loc9_ = _qR2;
                                 }
                              }
                           }
                        }
                        _loc18_ = lf64(_loc13_ + 40);
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
                        _loc3_ = Number(_loc2_ * _loc10_);
                        _loc2_ = lf64(_loc16_ + 8);
                        _loc2_ = Number(_loc2_ + _loc3_);
                        _loc3_ = Number(_loc2_ * _loc10_);
                        _loc2_ = lf64(_loc16_);
                        _loc2_ = Number(_loc2_ + _loc3_);
                        _loc2_ = Number(_loc2_ * _loc10_);
                        _loc2_ = Number(_loc2_ + 1);
                        _loc18_ = Number(_loc18_ / _loc2_);
                        _loc18_ = Number(_loc18_ + 1);
                        _loc2_ = lf64(_loc9_ + 40);
                        _loc2_ = Number(_loc2_ * _loc10_);
                        _loc3_ = lf64(_loc9_ + 32);
                        _loc2_ = Number(_loc3_ + _loc2_);
                        _loc2_ = Number(_loc2_ * _loc10_);
                        _loc3_ = lf64(_loc9_ + 24);
                        _loc2_ = Number(_loc3_ + _loc2_);
                        _loc3_ = Number(_loc2_ * _loc10_);
                        _loc2_ = lf64(_loc9_ + 16);
                        _loc2_ = Number(_loc2_ + _loc3_);
                        _loc3_ = Number(_loc2_ * _loc10_);
                        _loc2_ = lf64(_loc9_ + 8);
                        _loc2_ = Number(_loc2_ + _loc3_);
                        _loc3_ = Number(_loc2_ * _loc10_);
                        _loc2_ = lf64(_loc9_);
                        _loc2_ = Number(_loc2_ + _loc3_);
                        _loc3_ = lf64(_loc11_ + 40);
                        _loc3_ = Number(_loc3_ * _loc10_);
                        var _loc4_:* = lf64(_loc11_ + 32);
                        _loc3_ = Number(_loc4_ + _loc3_);
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
                        _loc10_ = _loc10_ + -0.125;
                        _loc5_ = int(_loc5_ - 16);
                        sf64(_loc12_,_loc5_);
                        _loc10_ = _loc10_ / _loc12_;
                        _loc10_ = _loc10_ * _loc20_;
                        _loc18_ = Number(_loc18_ * _loc15_);
                        _loc10_ = _loc18_ + _loc10_;
                        _loc18_ = Number(_loc10_ * 0.564189583547756);
                        ESP = _loc5_;
                        F_sqrt();
                        _loc5_ = int(_loc5_ + 16);
                        _loc10_ = st0;
                        _loc15_ = _loc18_ / _loc10_;
                     }
                  }
                  _loc5_ = int(_loc5_ - 16);
                  sf64(_loc12_,_loc5_);
                  ESP = _loc5_;
                  F_sqrt();
                  _loc18_ = Number(_loc15_ * 0.564189583547756);
                  _loc5_ = int(_loc5_ + 16);
                  _loc10_ = st0;
                  _loc15_ = _loc18_ / _loc10_;
               }
               else if(uint(_loc17_) <= 1044381696)
               {
                  _loc5_ = int(_loc5_ - 16);
                  sf64(_loc12_,_loc5_);
                  ESP = _loc5_;
                  F_log();
                  _loc5_ = int(_loc5_ + 16);
                  _loc10_ = st0;
                  _loc10_ = _loc10_ * 0.636619772367581;
                  _loc15_ = _loc10_ + -0.0738042951086872;
               }
               else
               {
                  _loc5_ = int(_loc5_ - 16);
                  sf64(_loc12_,_loc5_);
                  ESP = _loc5_;
                  F_j0();
                  _loc5_ = int(_loc5_ + 16);
                  _loc5_ = int(_loc5_ - 16);
                  sf64(_loc12_,_loc5_);
                  _loc18_ = Number(_loc12_ * _loc12_);
                  _loc18_ = Number((Number((Number((Number((Number((Number(_loc18_ * -3.98205194132103e-11) + 1.95590137035023e-8) * _loc18_) + -3.81407053724364e-6) * _loc18_) + 0.000347453432093684) * _loc18_) + -0.0138185671945597) * _loc18_) + 0.176666452509181) * _loc18_);
                  _loc18_ = Number(_loc18_ + -0.0738042951086872);
                  _loc18_ = Number(_loc18_ / (Number(Number((Number((Number((Number(_loc18_ * 4.41110311332675e-10) + 2.59150851840458e-7) * _loc18_) + 0.0000760068627350353) * _loc18_) + 0.0127304834834124) * _loc18_) + 1)));
                  ESP = _loc5_;
                  F_log();
                  _loc5_ = int(_loc5_ + 16);
                  _loc10_ = st0 * st0;
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
