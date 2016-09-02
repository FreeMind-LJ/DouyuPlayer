package sample.xx
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.li32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F.LCPI202_0;
   import avm2.intrinsics.memory.si32;
   
   public function F_expm1f() : void
   {
      var _loc7_:* = 0;
      var _loc14_:* = NaN;
      var _loc8_:* = NaN;
      var _loc19_:* = NaN;
      var _loc16_:* = NaN;
      var _loc1_:* = NaN;
      var _loc9_:* = NaN;
      var _loc20_:* = 0;
      var _loc6_:* = 0;
      var _loc21_:* = NaN;
      var _loc2_:* = NaN;
      var _loc10_:* = NaN;
      var _loc4_:* = NaN;
      var _loc5_:* = int(ESP);
      _loc7_ = _loc5_;
      _loc5_ = int(_loc5_ - 16);
      _loc2_ = lf32(_loc7_);
      sf32(_loc2_,_loc7_ - 4);
      _loc6_ = li32(_loc7_ - 4);
      _loc20_ = _loc6_ & 2147483647;
      if(uint(_loc20_) >= 1100331076)
      {
         if(uint(_loc20_) >= 1118925336)
         {
            if(uint(_loc20_) >= 2139095041)
            {
               var _loc11_:* = _loc2_;
               _loc11_ = Number(_loc11_ + _loc11_);
               _loc4_ = _loc11_;
            }
            else if(_loc20_ == 2139095040)
            {
               _loc9_ = _loc2_;
               if(_loc6_ <= -1)
               {
                  _loc9_ = -1;
               }
               _loc4_ = _loc9_;
            }
            else
            {
               _loc4_ = Number(inf);
               var _loc17_:* = 88.7216796875;
               if(_loc2_ <= _loc17_)
               {
               }
            }
            addr809:
            st0 = _loc4_;
            _loc5_ = _loc7_;
            ESP = _loc5_;
            return;
         }
         if(_loc6_ <= -1)
         {
            _loc17_ = 1.00000000317108e-30;
            _loc11_ = Number(_loc2_ + _loc17_);
            _loc4_ = -1;
            _loc17_ = 0;
            if(_loc11_ >= _loc17_)
            {
            }
            §§goto(addr809);
         }
      }
      if(uint(_loc20_) >= 1051816473)
      {
         if(uint(_loc20_) <= 1065686417)
         {
            if(_loc6_ >= 0)
            {
               _loc17_ = -0.693138122558594;
               _loc11_ = Number(_loc2_ + _loc17_);
               _loc2_ = _loc11_;
               _loc21_ = 9.05800061445916e-6;
               _loc6_ = 1;
            }
            else
            {
               _loc17_ = 0.693138122558594;
               _loc11_ = Number(_loc2_ + _loc17_);
               _loc2_ = _loc11_;
               _loc21_ = -9.05800061445916e-6;
               _loc6_ = -1;
            }
         }
         else
         {
            _loc20_ = 1;
            if(_loc6_ <= -1)
            {
               _loc20_ = 0;
            }
            _loc6_ = 4;
            if(_loc20_ == 0)
            {
               _loc6_ = 0;
            }
            var _loc18_:* = int(LCPI202_0 + _loc6_);
            var _loc15_:* = lf32(_loc18_);
            _loc11_ = _loc2_;
            var _loc13_:* = 1.44269502162933;
            var _loc12_:* = _loc13_;
            _loc12_ = Number(_loc11_ * _loc12_);
            _loc13_ = _loc12_;
            _loc12_ = _loc13_;
            _loc15_ = Number(_loc12_ + _loc15_);
            _loc17_ = _loc15_;
            _loc6_ = int(_loc17_);
            _loc17_ = Number(_loc6_);
            _loc15_ = _loc17_;
            _loc13_ = 9.05800061445916e-6;
            _loc12_ = _loc13_;
            _loc12_ = Number(_loc15_ * _loc12_);
            _loc21_ = _loc12_;
            _loc13_ = -0.693138122558594;
            _loc12_ = _loc13_;
            _loc15_ = Number(_loc15_ * _loc12_);
            _loc17_ = _loc15_;
            _loc15_ = _loc17_;
            _loc11_ = Number(_loc15_ + _loc11_);
            _loc2_ = _loc11_;
         }
         _loc11_ = _loc21_;
         _loc15_ = _loc2_;
         _loc12_ = Number(_loc15_ - _loc11_);
         _loc2_ = _loc12_;
         _loc12_ = _loc2_;
         _loc15_ = Number(_loc15_ - _loc12_);
         _loc17_ = _loc15_;
         _loc15_ = _loc17_;
         _loc11_ = Number(_loc15_ - _loc11_);
         _loc14_ = _loc11_;
      }
      else
      {
         _loc6_ = 0;
         if(uint(_loc20_) <= 855638015)
         {
            _loc17_ = 1.00000001504747e30;
            _loc15_ = _loc17_;
            _loc15_ = Number(_loc2_ + _loc15_);
            _loc17_ = _loc15_;
            _loc15_ = _loc17_;
            _loc15_ = Number(_loc15_ - _loc15_);
            _loc17_ = _loc15_;
            _loc11_ = Number(_loc2_ - _loc17_);
            _loc4_ = _loc11_;
         }
         §§goto(addr809);
      }
      _loc19_ = _loc2_;
      var _loc3_:* = 0.5;
      _loc16_ = _loc3_;
      _loc11_ = Number(_loc19_ * _loc16_);
      _loc3_ = _loc11_;
      _loc11_ = _loc3_;
      _loc15_ = Number(_loc19_ * _loc11_);
      _loc17_ = _loc15_;
      _loc1_ = _loc17_;
      _loc17_ = 0.00158071704208851;
      _loc15_ = _loc17_;
      _loc15_ = Number(_loc1_ * _loc15_);
      _loc17_ = _loc15_;
      _loc15_ = _loc17_;
      _loc13_ = -0.0333332121372223;
      _loc12_ = _loc13_;
      _loc15_ = Number(_loc15_ + _loc12_);
      _loc17_ = _loc15_;
      _loc15_ = _loc17_;
      _loc15_ = Number(_loc15_ * _loc1_);
      _loc17_ = _loc15_;
      _loc15_ = _loc17_;
      _loc13_ = 1;
      _loc9_ = _loc13_;
      _loc15_ = Number(_loc15_ + _loc9_);
      _loc17_ = _loc15_;
      _loc15_ = _loc17_;
      _loc11_ = Number(_loc15_ * _loc11_);
      _loc3_ = _loc11_;
      _loc11_ = _loc3_;
      _loc13_ = 3;
      _loc12_ = _loc13_;
      _loc11_ = Number(_loc12_ - _loc11_);
      _loc3_ = _loc11_;
      _loc12_ = _loc3_;
      _loc11_ = Number(_loc15_ - _loc12_);
      _loc3_ = _loc11_;
      _loc11_ = _loc3_;
      _loc15_ = Number(_loc19_ * _loc12_);
      _loc17_ = _loc15_;
      _loc15_ = _loc17_;
      _loc13_ = 6;
      _loc12_ = _loc13_;
      _loc15_ = Number(_loc12_ - _loc15_);
      _loc17_ = _loc15_;
      _loc15_ = _loc17_;
      _loc11_ = Number(_loc11_ / _loc15_);
      _loc3_ = _loc11_;
      _loc11_ = _loc3_;
      _loc11_ = Number(_loc11_ * _loc1_);
      _loc8_ = _loc11_;
      if(_loc6_ == 0)
      {
         _loc11_ = Number(_loc19_ * _loc8_);
         _loc11_ = _loc11_;
         _loc11_ = Number(_loc11_ - _loc1_);
         _loc11_ = Number(_loc19_ - _loc11_);
         _loc4_ = _loc11_;
      }
      else
      {
         _loc18_ = _loc6_ << 23;
         _loc18_ = int(_loc18_ + 1065353216);
         si32(_loc18_,_loc7_ - 8);
         _loc11_ = _loc14_;
         _loc15_ = _loc8_;
         _loc15_ = Number(_loc15_ - _loc11_);
         _loc17_ = _loc15_;
         _loc15_ = _loc17_;
         _loc15_ = Number(_loc15_ * _loc19_);
         _loc17_ = _loc15_;
         _loc15_ = _loc17_;
         _loc11_ = Number(_loc15_ - _loc11_);
         _loc11_ = _loc11_;
         _loc11_ = Number(_loc11_ - _loc1_);
         _loc14_ = _loc11_;
         if(_loc6_ != 1)
         {
            if(_loc6_ == -1)
            {
               _loc11_ = Number(_loc19_ - _loc14_);
               _loc11_ = _loc11_;
               _loc11_ = Number(_loc11_ * _loc16_);
               _loc17_ = -0.5;
               _loc11_ = Number(_loc11_ + _loc17_);
               _loc4_ = _loc11_;
            }
            else
            {
               _loc4_ = lf32(_loc7_ - 8);
               _loc18_ = int(_loc6_ + 1);
               if(uint(_loc18_) >= 58)
               {
                  _loc11_ = _loc14_;
                  _loc11_ = Number(_loc11_ - _loc19_);
                  _loc11_ = Number(_loc9_ - _loc11_);
                  _loc2_ = _loc11_;
                  if(_loc6_ == 128)
                  {
                     _loc15_ = _loc2_;
                     _loc15_ = Number(_loc15_ + _loc15_);
                     _loc17_ = _loc15_;
                     _loc15_ = _loc17_;
                     _loc11_ = Number(_loc15_ * 1.70141183460469e38);
                     _loc10_ = _loc11_;
                  }
                  else
                  {
                     _loc15_ = _loc2_;
                     _loc11_ = Number(_loc15_ * _loc4_);
                     _loc10_ = _loc11_;
                  }
                  _loc11_ = _loc10_;
                  _loc17_ = -1;
                  _loc15_ = _loc17_;
                  _loc11_ = Number(_loc11_ + _loc15_);
                  _loc4_ = _loc11_;
               }
               else
               {
                  if(_loc6_ <= 22)
                  {
                     _loc18_ = int(1065353216 - (int(16777216 >>> _loc6_)));
                     si32(_loc18_,_loc7_ - 16);
                     _loc11_ = _loc14_;
                     _loc11_ = Number(_loc11_ - _loc19_);
                     _loc15_ = lf32(_loc7_ - 16);
                     _loc11_ = Number(_loc15_ - _loc11_);
                     _loc10_ = _loc11_;
                  }
                  else
                  {
                     _loc18_ = int(127 - _loc6_);
                     _loc18_ = _loc18_ << 23;
                     si32(_loc18_,_loc7_ - 12);
                     _loc11_ = Number(_loc14_ + lf32(_loc7_ - 12));
                     _loc11_ = Number(_loc19_ - _loc11_);
                     _loc11_ = _loc11_;
                     _loc11_ = Number(_loc11_ + _loc9_);
                     _loc10_ = _loc11_;
                  }
                  _loc11_ = _loc4_;
                  _loc15_ = _loc10_;
                  _loc11_ = Number(_loc15_ * _loc11_);
                  _loc4_ = _loc11_;
               }
            }
         }
         else
         {
            _loc11_ = -0.25;
            if(!(_loc19_ >= _loc11_ | _loc19_ != _loc19_ | _loc11_ != _loc11_))
            {
               _loc11_ = Number(_loc19_ + _loc16_);
               _loc11_ = _loc14_;
               _loc11_ = Number(_loc11_ - _loc11_);
               _loc17_ = -2;
               _loc11_ = Number(_loc11_ * _loc17_);
               _loc4_ = _loc11_;
            }
            else
            {
               _loc11_ = Number(_loc19_ - _loc14_);
               _loc11_ = _loc11_;
               _loc11_ = Number(_loc11_ + _loc11_);
               _loc11_ = _loc11_;
               _loc11_ = Number(_loc11_ + _loc9_);
               _loc4_ = _loc11_;
            }
         }
      }
      §§goto(addr809);
   }
}
