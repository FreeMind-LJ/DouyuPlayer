package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.li32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F.LCPI201_0;
   import avm2.intrinsics.memory.si32;
   
   public function F_expm1() : void
   {
      var _loc4_:* = 0;
      var _loc12_:* = 0;
      var _loc10_:* = 0;
      var _loc11_:Number = NaN;
      var _loc3_:* = 0;
      var _loc7_:* = NaN;
      var _loc5_:* = NaN;
      var _loc6_:* = NaN;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc2_ = int(_loc2_ - 32);
      _loc6_ = lf64(_loc4_);
      sf64(_loc6_,_loc4_ - 8);
      _loc3_ = int(_loc4_ - 8);
      _loc3_ = _loc3_ | 4;
      _loc12_ = li32(_loc3_);
      _loc10_ = _loc12_ & 2147483647;
      if(uint(_loc10_) >= 1078159482)
      {
         if(uint(_loc10_) >= 1082535490)
         {
            if(uint(_loc10_) >= 2146435072)
            {
               var _loc8_:* = _loc12_ & 1048575;
               if((_loc8_ | li32(_loc4_ - 8)) != 0)
               {
                  _loc5_ = Number(_loc6_ + _loc6_);
               }
               else
               {
                  if(_loc12_ <= -1)
                  {
                     _loc6_ = -1;
                  }
                  _loc5_ = _loc6_;
               }
            }
            else
            {
               _loc5_ = Number(inf);
               if(_loc6_ <= 709.782712893384)
               {
               }
            }
            addr620:
            st0 = _loc5_;
            _loc2_ = _loc4_;
            ESP = _loc2_;
            return;
         }
         if(_loc12_ <= -1)
         {
            _loc5_ = -1;
            if(Number(_loc6_ + 1.0e-300) >= 0)
            {
            }
            §§goto(addr620);
         }
      }
      if(uint(_loc10_) >= 1071001155)
      {
         if(uint(_loc10_) <= 1072734897)
         {
            if(_loc12_ >= 0)
            {
               _loc5_ = Number(_loc6_ + -0.693147180369124);
               _loc7_ = 1.90821492927059e-10;
               _loc12_ = 1;
            }
            else
            {
               _loc5_ = Number(_loc6_ + 0.693147180369124);
               _loc7_ = -1.90821492927059e-10;
               _loc12_ = -1;
            }
         }
         else
         {
            _loc10_ = 1;
            if(_loc12_ <= -1)
            {
               _loc10_ = 0;
            }
            _loc12_ = 8;
            if(_loc10_ == 0)
            {
               _loc12_ = 0;
            }
            _loc3_ = int(LCPI201_0 + _loc12_);
            var _loc9_:* = lf64(_loc3_);
            var _loc13_:* = Number(_loc6_ * 1.44269504088896);
            _loc9_ = Number(_loc13_ + _loc9_);
            _loc12_ = int(_loc9_);
            _loc9_ = Number(_loc12_);
            _loc13_ = Number(_loc9_ * -0.693147180369124);
            _loc5_ = Number(_loc13_ + _loc6_);
            _loc7_ = Number(_loc9_ * 1.90821492927059e-10);
         }
         _loc6_ = Number(_loc5_ - _loc7_);
         _loc9_ = Number(_loc5_ - _loc6_);
         _loc11_ = _loc9_ - _loc7_;
      }
      else
      {
         _loc12_ = 0;
         if(uint(_loc10_) <= 1016070143)
         {
            _loc9_ = Number(_loc6_ + 1.0e300);
            _loc5_ = Number(_loc6_ - (Number(_loc9_ - _loc9_)));
         }
         §§goto(addr620);
      }
      _loc9_ = Number(_loc6_ * 0.5);
      _loc5_ = Number(_loc6_ * _loc9_);
      _loc13_ = Number(_loc5_ * -2.01099218183624e-7);
      _loc13_ = Number(_loc13_ + 4.00821782732936e-6);
      _loc13_ = Number(_loc13_ * _loc5_);
      _loc13_ = Number(_loc13_ + -0.0000793650757867488);
      _loc13_ = Number(_loc13_ * _loc5_);
      _loc13_ = Number(_loc13_ + 0.00158730158725481);
      _loc13_ = Number(_loc13_ * _loc5_);
      _loc13_ = Number(_loc13_ + -0.0333333333333331);
      _loc13_ = Number(_loc13_ * _loc5_);
      _loc13_ = Number(_loc13_ + 1);
      _loc9_ = Number(_loc13_ * _loc9_);
      var _loc1_:Number = 3 - _loc9_;
      _loc9_ = Number(_loc13_ - _loc1_);
      _loc13_ = Number(_loc6_ * _loc1_);
      _loc13_ = Number(6 - _loc13_);
      _loc9_ = Number(_loc9_ / _loc13_);
      _loc7_ = Number(_loc9_ * _loc5_);
      if(_loc12_ == 0)
      {
         _loc9_ = Number(_loc6_ * _loc7_);
         _loc5_ = Number(_loc6_ - (Number(_loc9_ - _loc5_)));
      }
      else
      {
         _loc8_ = _loc12_ << 20;
         _loc8_ = int(_loc8_ + 1072693248);
         si32(_loc8_,int(_loc4_ - 16) | 4);
         si32(0,_loc4_ - 16);
         _loc9_ = Number(_loc7_ - _loc11_);
         _loc9_ = Number(_loc9_ * _loc6_);
         _loc9_ = Number(_loc9_ - _loc11_);
         _loc5_ = Number(_loc9_ - _loc5_);
         if(_loc12_ != 1)
         {
            if(_loc12_ == -1)
            {
               _loc9_ = Number(_loc6_ - _loc5_);
               _loc9_ = Number(_loc9_ * 0.5);
               _loc5_ = Number(_loc9_ + -0.5);
            }
            else
            {
               _loc7_ = lf64(_loc4_ - 16);
               if(uint(int(_loc12_ + 1)) >= 58)
               {
                  _loc6_ = Number(1 - (Number(_loc5_ - _loc6_)));
                  if(_loc12_ == 1024)
                  {
                     _loc9_ = Number(_loc6_ + _loc6_);
                     _loc6_ = Number(_loc9_ * 8.98846567431158e307);
                  }
                  else
                  {
                     _loc6_ = Number(_loc6_ * _loc7_);
                  }
                  _loc5_ = Number(_loc6_ + -1);
               }
               else
               {
                  if(_loc12_ <= 19)
                  {
                     _loc8_ = int(_loc4_ - 32);
                     si32(int(1072693248 - (int(2097152 >>> _loc12_))),_loc8_ | 4);
                     si32(0,_loc4_ - 32);
                     _loc13_ = lf64(_loc4_ - 32);
                     _loc6_ = Number(_loc13_ - (Number(_loc5_ - _loc6_)));
                  }
                  else
                  {
                     _loc8_ = int(1023 - _loc12_);
                     _loc8_ = _loc8_ << 20;
                     si32(_loc8_,int(_loc4_ - 24) | 4);
                     si32(0,_loc4_ - 24);
                     _loc9_ = Number(_loc6_ - (Number(_loc5_ + lf64(_loc4_ - 24))));
                     _loc6_ = Number(_loc9_ + 1);
                  }
                  _loc5_ = Number(_loc6_ * _loc7_);
               }
            }
         }
         else if(!(_loc6_ >= -0.25 | _loc6_ != _loc6_ | false))
         {
            _loc9_ = Number(_loc5_ - (Number(_loc6_ + 0.5)));
            _loc5_ = Number(_loc9_ * -2);
         }
         else
         {
            _loc9_ = Number(_loc6_ - _loc5_);
            _loc9_ = Number(_loc9_ + _loc9_);
            _loc5_ = Number(_loc9_ + 1);
         }
      }
      §§goto(addr620);
   }
}
