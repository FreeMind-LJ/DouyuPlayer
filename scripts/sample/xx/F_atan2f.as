package sample.xx
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.li32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F._tiny2;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F._pi_lo3;
   import avm2.intrinsics.memory.si32;
   
   public function F_atan2f() : void
   {
      var _loc6_:* = 0;
      var _loc1_:* = NaN;
      var _loc3_:* = NaN;
      var _loc5_:* = 0;
      var _loc16_:* = 0;
      var _loc14_:* = 0;
      var _loc12_:* = 0;
      var _loc11_:* = 0;
      var _loc7_:* = 0;
      var _loc2_:* = NaN;
      var _loc4_:* = int(ESP);
      _loc6_ = _loc4_;
      _loc4_ = int(_loc4_ - 16);
      _loc1_ = lf32(_loc6_);
      sf32(_loc1_,_loc6_ - 4);
      _loc3_ = lf32(_loc6_ + 4);
      sf32(_loc3_,_loc6_ - 8);
      _loc5_ = li32(_loc6_ - 8);
      _loc16_ = _loc5_ & 2147483647;
      if(uint(_loc16_) <= 2139095040)
      {
         _loc14_ = li32(_loc6_ - 4);
         _loc12_ = _loc14_ & 2147483647;
         if(uint(_loc12_) < 2139095041)
         {
            if(_loc5_ == 1065353216)
            {
               _loc4_ = int(_loc4_ - 16);
               sf32(_loc1_,_loc4_);
               ESP = _loc4_;
               F_atanf();
               _loc4_ = int(_loc4_ + 16);
               _loc2_ = Number(st0);
            }
            else
            {
               _loc11_ = int(_loc14_ >>> 31);
               var _loc10_:* = int(_loc5_ >>> 30);
               _loc10_ = _loc10_ & 2;
               _loc7_ = _loc10_ | _loc11_;
               if(_loc12_ == 0)
               {
                  _loc2_ = _loc1_;
                  if(uint(_loc7_) >= 2)
                  {
                     if(_loc7_ != 3)
                     {
                        if(_loc7_ == 2)
                        {
                           var _loc13_:* = 3.14159274101257;
                           var _loc8_:* = lf32(_tiny2);
                           _loc8_ = Number(_loc8_ + _loc13_);
                           _loc2_ = _loc8_;
                        }
                     }
                     else
                     {
                        _loc13_ = -3.14159274101257;
                        _loc8_ = Number(_loc13_ - lf32(_tiny2));
                        _loc2_ = _loc8_;
                     }
                  }
               }
               if(_loc16_ != 2139095040)
               {
                  if(_loc16_ == 0)
                  {
                     _loc1_ = lf32(_tiny2);
                     if(_loc14_ <= -1)
                     {
                        var _loc15_:* = -1.57079637050629;
                        var _loc9_:* = _loc15_;
                        _loc8_ = Number(_loc9_ - _loc1_);
                        _loc2_ = _loc8_;
                     }
                     else
                     {
                        _loc15_ = 1.57079637050629;
                        _loc8_ = Number(_loc1_ + _loc15_);
                        _loc2_ = _loc8_;
                     }
                  }
                  else if(_loc12_ == 2139095040)
                  {
                     addr363:
                     _loc1_ = lf32(_tiny2);
                     if(_loc14_ <= -1)
                     {
                        _loc15_ = -1.57079637050629;
                        _loc9_ = _loc15_;
                        _loc8_ = Number(_loc9_ - _loc1_);
                        _loc2_ = _loc8_;
                     }
                     else
                     {
                        _loc15_ = 1.57079637050629;
                        _loc8_ = Number(_loc1_ + _loc15_);
                        _loc2_ = _loc8_;
                     }
                  }
                  else
                  {
                     addr395:
                     _loc10_ = int(_loc12_ - _loc16_);
                     _loc14_ = _loc10_ >> 23;
                     if(_loc14_ >= 27)
                     {
                        _loc13_ = 0.5;
                        _loc9_ = lf32(_pi_lo3);
                        _loc8_ = Number(_loc9_ * _loc13_);
                        _loc13_ = _loc8_;
                        _loc15_ = 1.57079637050629;
                        _loc8_ = Number(_loc13_ + _loc15_);
                        _loc2_ = _loc8_;
                     }
                     else
                     {
                        if(_loc14_ <= -27)
                        {
                           _loc2_ = 0;
                           _loc11_ = _loc7_;
                           if(_loc5_ >= 0)
                           {
                           }
                        }
                        _loc8_ = _loc3_;
                        _loc9_ = _loc1_;
                        _loc8_ = Number(_loc9_ / _loc8_);
                        sf32(_loc8_,_loc6_ - 12);
                        _loc4_ = int(_loc4_ - 16);
                        _loc10_ = li32(_loc6_ - 12);
                        _loc10_ = _loc10_ & 2147483647;
                        si32(_loc10_,_loc4_);
                        ESP = _loc4_;
                        F_atanf();
                        _loc4_ = int(_loc4_ + 16);
                        _loc2_ = Number(st0);
                        _loc11_ = _loc7_;
                     }
                     if(_loc11_ != 0)
                     {
                        if(_loc11_ != 2)
                        {
                           if(_loc11_ == 1)
                           {
                              _loc8_ = _loc2_;
                              _loc8_ = Number(-_loc8_);
                              _loc2_ = _loc8_;
                           }
                           else
                           {
                              _loc8_ = Number(_loc2_ - lf32(_pi_lo3));
                              _loc13_ = _loc8_;
                              _loc15_ = -3.14159274101257;
                              _loc8_ = Number(_loc13_ + _loc15_);
                              _loc2_ = _loc8_;
                           }
                        }
                        else
                        {
                           _loc8_ = Number(_loc2_ - lf32(_pi_lo3));
                           _loc13_ = _loc8_;
                           _loc15_ = 3.14159274101257;
                           _loc9_ = _loc15_;
                           _loc8_ = Number(_loc9_ - _loc13_);
                           _loc2_ = _loc8_;
                        }
                     }
                  }
               }
               else if(_loc12_ == 2139095040)
               {
                  if(_loc7_ <= 1)
                  {
                     if(_loc7_ != 0)
                     {
                        if(_loc7_ != 1)
                        {
                           §§goto(addr363);
                        }
                        else
                        {
                           _loc13_ = -0.785398185253143;
                           _loc8_ = Number(_loc13_ - lf32(_tiny2));
                           _loc2_ = _loc8_;
                        }
                     }
                     else
                     {
                        _loc13_ = 0.785398185253143;
                        _loc8_ = lf32(_tiny2);
                        _loc8_ = Number(_loc8_ + _loc13_);
                        _loc2_ = _loc8_;
                     }
                  }
                  else if(_loc7_ != 2)
                  {
                     if(_loc7_ != 3)
                     {
                        §§goto(addr363);
                     }
                     else
                     {
                        _loc13_ = -2.35619449615479;
                        _loc8_ = Number(_loc13_ - lf32(_tiny2));
                        _loc2_ = _loc8_;
                     }
                  }
                  else
                  {
                     _loc13_ = 2.35619449615479;
                     _loc9_ = lf32(_tiny2);
                     _loc8_ = Number(_loc9_ + _loc13_);
                     _loc2_ = _loc8_;
                  }
               }
               else if(_loc7_ <= 1)
               {
                  _loc2_ = 0;
                  if(_loc7_ != 0)
                  {
                     if(_loc7_ != 1)
                     {
                        §§goto(addr395);
                     }
                     else
                     {
                        _loc2_ = 0;
                     }
                  }
               }
               else if(_loc7_ != 2)
               {
                  if(_loc7_ != 3)
                  {
                     §§goto(addr395);
                  }
                  else
                  {
                     _loc13_ = -3.14159274101257;
                     _loc8_ = Number(_loc13_ - lf32(_tiny2));
                     _loc2_ = _loc8_;
                  }
               }
               else
               {
                  _loc13_ = 3.14159274101257;
                  _loc9_ = lf32(_tiny2);
                  _loc8_ = Number(_loc9_ + _loc13_);
                  _loc2_ = _loc8_;
               }
            }
         }
         addr554:
         st0 = _loc2_;
         _loc4_ = _loc6_;
         ESP = _loc4_;
         return;
      }
      _loc9_ = _loc1_;
      _loc8_ = _loc3_;
      _loc8_ = Number(_loc8_ + _loc9_);
      _loc2_ = _loc8_;
      §§goto(addr554);
   }
}
