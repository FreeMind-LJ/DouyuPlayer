package sample.xx
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.li32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F._twom100;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F._ln2LO6;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F._ln2HI5;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F._halF7;
   import avm2.intrinsics.memory.si32;
   
   public function F_expf() : void
   {
      var _loc7_:* = 0;
      var _loc2_:* = NaN;
      var _loc19_:int = 0;
      var _loc8_:* = NaN;
      var _loc15_:* = NaN;
      var _loc17_:* = NaN;
      var _loc1_:* = NaN;
      var _loc9_:* = NaN;
      var _loc21_:* = NaN;
      var _loc18_:* = NaN;
      var _loc6_:* = 0;
      var _loc22_:* = 0;
      var _loc4_:* = NaN;
      var _loc5_:* = int(ESP);
      _loc7_ = _loc5_;
      _loc5_ = int(_loc5_ - 8);
      _loc2_ = lf32(_loc7_);
      sf32(_loc2_,_loc7_ - 4);
      _loc6_ = li32(_loc7_ - 4);
      _loc22_ = _loc6_ & 2147483647;
      _loc19_ = _loc6_ >>> 31;
      if(uint(_loc22_) >= 1118925336)
      {
         if(uint(_loc22_) >= 2139095041)
         {
            var _loc10_:* = _loc2_;
            _loc10_ = Number(_loc10_ + _loc10_);
            _loc4_ = _loc10_;
         }
         else if(_loc22_ == 2139095040)
         {
            _loc9_ = _loc2_;
            if(_loc19_ != 0)
            {
               _loc9_ = 0;
            }
            _loc4_ = _loc9_;
         }
         else
         {
            _loc4_ = Number(inf);
            _loc15_ = _loc2_;
            if(_loc15_ <= 88.7216796875)
            {
               _loc10_ = -103.97208404541;
               if(!(_loc15_ >= _loc10_ | _loc15_ != _loc15_ | _loc10_ != _loc10_))
               {
                  _loc10_ = Number(lf32(_twom100) * lf32(_twom100));
                  _loc4_ = _loc10_;
               }
            }
         }
         addr528:
         st0 = _loc4_;
         _loc5_ = _loc7_;
         ESP = _loc5_;
         return;
      }
      if(uint(_loc22_) >= 1051816473)
      {
         if(uint(_loc22_) <= 1065686417)
         {
            var _loc16_:* = _loc19_ << 2;
            var _loc12_:* = int(_ln2LO6 + _loc16_);
            _loc18_ = lf32(_loc12_);
            _loc12_ = int(_ln2HI5 + _loc16_);
            _loc21_ = lf32(_loc12_);
            _loc12_ = _loc6_ >> 30;
            _loc6_ = _loc12_ | 1;
         }
         else
         {
            _loc12_ = int(_halF7 + (_loc19_ << 2));
            var _loc11_:* = 1.44269502162933;
            var _loc13_:* = Number(_loc2_ * _loc11_);
            var _loc14_:* = _loc13_;
            _loc13_ = _loc14_;
            _loc10_ = Number(_loc13_ + lf32(_loc12_));
            _loc6_ = int(_loc10_);
            _loc14_ = 1.42860676533019e-6;
            _loc13_ = _loc14_;
            _loc13_ = Number(Number(_loc6_) * _loc13_);
            _loc18_ = _loc13_;
            _loc14_ = 0.693145751953125;
            _loc10_ = Number(_loc6_ * _loc14_);
            _loc21_ = _loc10_;
         }
         _loc13_ = _loc21_;
         _loc10_ = _loc2_;
         _loc10_ = Number(_loc10_ - _loc13_);
         _loc21_ = _loc10_;
         _loc13_ = _loc21_;
         _loc10_ = _loc18_;
         _loc10_ = Number(_loc13_ - _loc10_);
         _loc2_ = _loc10_;
      }
      else
      {
         _loc18_ = 0;
         _loc6_ = 0;
         _loc21_ = _loc18_;
         if(uint(_loc22_) <= 830472191)
         {
            _loc17_ = _loc2_;
            _loc10_ = Number(_loc17_ + 1.00000001504747e30);
            _loc10_ = _loc10_;
            _loc14_ = 1;
            _loc1_ = _loc14_;
            _loc21_ = _loc18_;
            if(!(_loc10_ <= _loc1_ | _loc10_ != _loc10_ | _loc1_ != _loc1_))
            {
               _loc10_ = Number(_loc17_ + _loc1_);
               _loc4_ = _loc10_;
            }
            §§goto(addr528);
         }
      }
      _loc22_ = 1065353216;
      if(_loc6_ <= -126)
      {
         _loc22_ = 1904214016;
      }
      _loc12_ = _loc6_ << 23;
      _loc12_ = int(_loc22_ + _loc12_);
      si32(_loc12_,_loc7_ - 8);
      var _loc3_:* = -0.0027667332906276;
      _loc13_ = _loc3_;
      _loc17_ = _loc2_;
      _loc10_ = Number(_loc17_ * _loc17_);
      _loc3_ = _loc10_;
      _loc10_ = _loc3_;
      _loc13_ = Number(_loc10_ * _loc13_);
      _loc14_ = _loc13_;
      _loc13_ = _loc14_;
      _loc11_ = 0.166666254401207;
      var _loc20_:* = _loc11_;
      _loc13_ = Number(_loc13_ + _loc20_);
      _loc14_ = _loc13_;
      _loc13_ = _loc14_;
      _loc10_ = Number(_loc13_ * _loc10_);
      _loc3_ = _loc10_;
      _loc10_ = _loc3_;
      _loc10_ = Number(_loc17_ - _loc10_);
      _loc3_ = _loc10_;
      _loc1_ = _loc3_;
      _loc10_ = Number(_loc17_ * _loc1_);
      _loc2_ = _loc10_;
      if(_loc6_ == 0)
      {
         _loc10_ = Number(_loc1_ + -2);
         _loc10_ = _loc2_;
         _loc10_ = Number(_loc10_ / _loc10_);
         _loc10_ = _loc10_;
         _loc10_ = Number(_loc10_ - _loc17_);
         _loc14_ = 1;
         _loc13_ = _loc14_;
         _loc10_ = Number(_loc13_ - _loc10_);
         _loc4_ = _loc10_;
      }
      else
      {
         _loc8_ = lf32(_loc7_ - 8);
         _loc10_ = 2;
         _loc10_ = Number(_loc10_ - _loc1_);
         _loc13_ = _loc2_;
         _loc10_ = Number(_loc13_ / _loc10_);
         _loc10_ = _loc18_;
         _loc10_ = Number(_loc10_ - _loc10_);
         _loc10_ = Number(_loc10_ - _loc21_);
         _loc14_ = 1;
         _loc13_ = _loc14_;
         _loc10_ = Number(_loc13_ - _loc10_);
         _loc18_ = _loc10_;
         if(_loc6_ >= -125)
         {
            if(_loc6_ == 128)
            {
               _loc13_ = _loc18_;
               _loc13_ = Number(_loc13_ + _loc13_);
               _loc14_ = _loc13_;
               _loc13_ = _loc14_;
               _loc10_ = Number(_loc13_ * 1.70141183460469e38);
               _loc4_ = _loc10_;
            }
            else
            {
               _loc10_ = _loc18_;
               _loc10_ = Number(_loc10_ * _loc8_);
               _loc4_ = _loc10_;
            }
         }
         else
         {
            _loc13_ = _loc18_;
            _loc10_ = Number(_loc13_ * _loc8_);
            _loc10_ = Number(_loc10_ * lf32(_twom100));
            _loc4_ = _loc10_;
         }
      }
      §§goto(addr528);
   }
}
