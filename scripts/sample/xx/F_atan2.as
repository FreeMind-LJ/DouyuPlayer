package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.li32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F._tiny;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F._pi_lo;
   
   public function F_atan2() : void
   {
      var _loc4_:* = 0;
      var _loc7_:* = NaN;
      var _loc9_:* = NaN;
      var _loc13_:* = 0;
      var _loc3_:* = 0;
      var _loc12_:* = 0;
      var _loc10_:* = 0;
      var _loc6_:* = 0;
      var _loc8_:* = 0;
      var _loc5_:* = 0;
      var _loc1_:* = 0;
      var _loc16_:* = 0;
      var _loc14_:* = NaN;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc9_ = lf64(_loc4_ + 8);
      sf64(_loc9_,_loc4_ - 16);
      _loc7_ = lf64(_loc4_);
      sf64(_loc7_,_loc4_ - 8);
      _loc3_ = li32(_loc4_ - 16);
      _loc16_ = int(0 - _loc3_);
      _loc16_ = _loc3_ | _loc16_;
      _loc16_ = int(_loc16_ >>> 31);
      var _loc15_:* = int(_loc4_ - 16);
      _loc15_ = _loc15_ | 4;
      _loc13_ = li32(_loc15_);
      _loc12_ = _loc13_ & 2147483647;
      _loc16_ = _loc16_ | _loc12_;
      if(uint(_loc16_) <= 2146435072)
      {
         _loc16_ = int(_loc4_ - 8);
         _loc16_ = _loc16_ | 4;
         _loc10_ = li32(_loc16_);
         _loc8_ = _loc10_ & 2147483647;
         _loc6_ = li32(_loc4_ - 8);
         _loc16_ = _loc6_ | int(0 - _loc6_);
         _loc16_ = int(_loc16_ >>> 31);
         _loc16_ = _loc16_ | _loc8_;
         if(uint(_loc16_) < 2146435073)
         {
            _loc16_ = int(_loc13_ + -1072693248);
            _loc16_ = _loc16_ | _loc3_;
            if(_loc16_ == 0)
            {
               _loc2_ = int(_loc2_ - 16);
               sf64(_loc7_,_loc2_);
               ESP = _loc2_;
               F_atan();
               _loc2_ = int(_loc2_ + 16);
               _loc14_ = Number(st0);
            }
            else
            {
               _loc5_ = int(_loc10_ >>> 31);
               _loc15_ = int(_loc13_ >>> 30);
               _loc15_ = _loc15_ & 2;
               _loc1_ = _loc15_ | _loc5_;
               if((_loc8_ | _loc6_) == 0)
               {
                  _loc14_ = _loc7_;
                  if(uint(_loc1_) >= 2)
                  {
                     if(_loc1_ != 3)
                     {
                        if(_loc1_ == 2)
                        {
                           var _loc11_:* = lf64(_tiny);
                           _loc14_ = Number(_loc11_ + 3.14159265358979);
                        }
                     }
                     else
                     {
                        _loc14_ = Number(-3.14159265358979 - lf64(_tiny));
                     }
                  }
               }
               _loc16_ = _loc12_ | _loc3_;
               if(_loc16_ == 0)
               {
                  _loc7_ = lf64(_tiny);
                  if(_loc10_ <= -1)
                  {
                     _loc14_ = Number(-1.5707963267949 - _loc7_);
                  }
                  else
                  {
                     _loc14_ = Number(_loc7_ + 1.5707963267949);
                  }
               }
               else
               {
                  if(_loc12_ == 2146435072)
                  {
                     if(_loc8_ == 2146435072)
                     {
                        if(_loc1_ <= 1)
                        {
                           if(_loc1_ != 0)
                           {
                              if(_loc1_ != 1)
                              {
                                 addr394:
                                 _loc7_ = lf64(_tiny);
                                 if(_loc10_ <= -1)
                                 {
                                    _loc14_ = Number(-1.5707963267949 - _loc7_);
                                 }
                                 else
                                 {
                                    _loc14_ = Number(_loc7_ + 1.5707963267949);
                                 }
                              }
                              else
                              {
                                 _loc14_ = Number(-0.785398163397448 - lf64(_tiny));
                              }
                           }
                           else
                           {
                              _loc11_ = lf64(_tiny);
                              _loc14_ = Number(_loc11_ + 0.785398163397448);
                           }
                        }
                        else if(_loc1_ != 2)
                        {
                           if(_loc1_ != 3)
                           {
                              §§goto(addr394);
                           }
                           else
                           {
                              _loc14_ = Number(-2.35619449019235 - lf64(_tiny));
                           }
                        }
                        else
                        {
                           _loc11_ = lf64(_tiny);
                           _loc14_ = Number(_loc11_ + 2.35619449019235);
                        }
                     }
                     else if(_loc1_ <= 1)
                     {
                        _loc14_ = 0;
                        if(_loc1_ != 0)
                        {
                           if(_loc1_ == 1)
                           {
                              _loc14_ = 0;
                           }
                        }
                     }
                     else if(_loc1_ != 2)
                     {
                        if(_loc1_ == 3)
                        {
                           _loc14_ = Number(-3.14159265358979 - lf64(_tiny));
                        }
                     }
                     else
                     {
                        _loc11_ = lf64(_tiny);
                        _loc14_ = Number(_loc11_ + 3.14159265358979);
                     }
                  }
                  else if(_loc8_ == 2146435072)
                  {
                     §§goto(addr394);
                  }
                  _loc16_ = int(_loc8_ - _loc12_);
                  _loc10_ = _loc16_ >> 20;
                  if(_loc10_ >= 61)
                  {
                     _loc11_ = lf64(_pi_lo);
                     _loc11_ = Number(_loc11_ * 0.5);
                     _loc14_ = Number(_loc11_ + 1.5707963267949);
                  }
                  else
                  {
                     if(_loc13_ <= -1)
                     {
                        _loc14_ = 0;
                        _loc5_ = _loc1_;
                        if(_loc10_ >= -60)
                        {
                        }
                     }
                     _loc11_ = Number(_loc7_ / _loc9_);
                     _loc11_ = Number(Math.abs(_loc11_));
                     _loc2_ = int(_loc2_ - 16);
                     sf64(_loc11_,_loc2_);
                     ESP = _loc2_;
                     F_atan();
                     _loc2_ = int(_loc2_ + 16);
                     _loc14_ = Number(st0);
                     _loc5_ = _loc1_;
                  }
                  if(_loc5_ != 0)
                  {
                     if(_loc5_ != 2)
                     {
                        if(_loc5_ == 1)
                        {
                           _loc14_ = Number(-_loc14_);
                        }
                        else
                        {
                           _loc11_ = Number(_loc14_ - lf64(_pi_lo));
                           _loc14_ = Number(_loc11_ + -3.14159265358979);
                        }
                     }
                     else
                     {
                        _loc14_ = Number(3.14159265358979 - (Number(_loc14_ - lf64(_pi_lo))));
                     }
                  }
               }
            }
         }
         addr534:
         st0 = _loc14_;
         _loc2_ = _loc4_;
         ESP = _loc2_;
         return;
      }
      _loc14_ = Number(_loc9_ + _loc7_);
      §§goto(addr534);
   }
}
