package sample.xx
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F._ps829;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F._pr828;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F._ps531;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F._pr530;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F._ps333;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F._pr332;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F._ps235;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F._pr234;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F._qr836;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F._qr238;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F._qs837;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F._qs239;
   
   public function F_j1f() : void
   {
      var _loc6_:* = 0;
      var _loc20_:* = NaN;
      var _loc23_:* = 0;
      var _loc28_:* = 0;
      var _loc9_:* = NaN;
      var _loc4_:* = NaN;
      var _loc14_:* = NaN;
      var _loc12_:* = NaN;
      var _loc18_:* = NaN;
      var _loc13_:* = NaN;
      var _loc19_:* = NaN;
      var _loc26_:int = 0;
      var _loc27_:int = 0;
      var _loc25_:int = 0;
      var _loc24_:int = 0;
      var _loc21_:* = NaN;
      var _loc5_:* = int(ESP);
      _loc6_ = _loc5_;
      _loc5_ = int(_loc5_ - 8);
      _loc20_ = lf32(_loc6_);
      sf32(_loc20_,_loc6_ - 4);
      _loc23_ = li32(_loc6_ - 4);
      _loc28_ = _loc23_ & 2147483647;
      if(uint(_loc28_) >= 2139095040)
      {
         var _loc22_:* = 1;
         var _loc8_:* = _loc22_;
         var _loc10_:* = Number(_loc8_ / _loc20_);
         _loc21_ = _loc10_;
      }
      else
      {
         si32(_loc28_,_loc6_ - 8);
         if(uint(_loc28_) >= 1073741824)
         {
            var _loc16_:* = lf32(_loc6_ - 8);
            _loc14_ = _loc16_;
            _loc10_ = Number(Math.cos(_loc14_));
            _loc16_ = _loc10_;
            _loc12_ = _loc16_;
            _loc10_ = Number(Math.sin(_loc14_));
            _loc16_ = _loc10_;
            _loc18_ = _loc16_;
            _loc10_ = Number(_loc18_ - _loc12_);
            _loc19_ = _loc10_;
            _loc10_ = Number(-_loc18_);
            _loc16_ = _loc10_;
            _loc10_ = _loc16_;
            _loc10_ = Number(_loc10_ - _loc12_);
            _loc13_ = _loc10_;
            _loc27_ = _ps829;
            _loc26_ = _pr828;
            if(uint(_loc28_) <= 2130706431)
            {
               _loc10_ = Number(_loc18_ * _loc12_);
               _loc16_ = _loc10_;
               _loc10_ = _loc16_;
               _loc22_ = 0;
               _loc8_ = _loc22_;
               var _loc17_:* = Number(_loc14_ + _loc14_);
               var _loc15_:* = _loc17_;
               _loc17_ = Number(Math.cos(_loc15_));
               _loc9_ = _loc17_;
               if(!(_loc10_ <= _loc8_ | _loc10_ != _loc10_ | _loc8_ != _loc8_))
               {
                  _loc10_ = _loc9_;
                  _loc10_ = Number(_loc10_ / _loc13_);
                  _loc19_ = _loc10_;
               }
               else
               {
                  _loc10_ = _loc9_;
                  _loc10_ = Number(_loc10_ / _loc19_);
                  _loc13_ = _loc10_;
               }
               _loc27_ = _ps829;
               _loc26_ = _pr828;
               if(uint(_loc28_) <= 1090519039)
               {
                  _loc27_ = _ps531;
                  _loc26_ = _pr530;
                  if(uint(_loc28_) <= 1089936471)
                  {
                     _loc27_ = _ps333;
                     _loc26_ = _pr332;
                     if(uint(_loc28_) <= 1077336935)
                     {
                        _loc27_ = _ps235;
                        _loc26_ = _pr234;
                     }
                  }
               }
            }
            _loc25_ = _qr836;
            if(uint(_loc28_) <= 1075838975)
            {
               _loc25_ = _qr238;
            }
            _loc24_ = _qs837;
            if(uint(_loc28_) <= 1075838975)
            {
               _loc24_ = _qs239;
            }
            _loc17_ = lf32(_loc25_ + 16);
            var _loc1_:* = lf32(_loc25_ + 20);
            _loc16_ = 1;
            _loc10_ = _loc16_;
            _loc8_ = Number(_loc14_ * _loc14_);
            _loc22_ = _loc8_;
            _loc8_ = _loc22_;
            _loc8_ = Number(_loc10_ / _loc8_);
            _loc22_ = _loc8_;
            _loc8_ = _loc22_;
            _loc1_ = Number(_loc1_ * _loc8_);
            var _loc11_:* = _loc1_;
            _loc1_ = _loc11_;
            _loc17_ = Number(_loc17_ + _loc1_);
            _loc15_ = _loc17_;
            _loc17_ = _loc15_;
            _loc17_ = Number(_loc17_ * _loc8_);
            _loc15_ = _loc17_;
            _loc17_ = _loc15_;
            _loc1_ = lf32(_loc25_ + 12);
            _loc17_ = Number(_loc1_ + _loc17_);
            _loc15_ = _loc17_;
            _loc17_ = _loc15_;
            _loc17_ = Number(_loc17_ * _loc8_);
            _loc15_ = _loc17_;
            _loc17_ = _loc15_;
            _loc1_ = lf32(_loc25_ + 8);
            _loc17_ = Number(_loc1_ + _loc17_);
            _loc15_ = _loc17_;
            _loc17_ = _loc15_;
            _loc17_ = Number(_loc17_ * _loc8_);
            _loc15_ = _loc17_;
            _loc17_ = _loc15_;
            _loc1_ = lf32(_loc25_ + 4);
            _loc17_ = Number(_loc1_ + _loc17_);
            _loc15_ = _loc17_;
            _loc17_ = _loc15_;
            _loc17_ = Number(_loc17_ * _loc8_);
            _loc15_ = _loc17_;
            _loc1_ = _loc15_;
            _loc17_ = lf32(_loc25_);
            _loc17_ = Number(_loc17_ + _loc1_);
            _loc15_ = _loc17_;
            _loc17_ = _loc15_;
            _loc1_ = lf32(_loc24_ + 16);
            var _loc2_:* = lf32(_loc24_ + 20);
            _loc2_ = Number(_loc2_ * _loc8_);
            var _loc7_:* = _loc2_;
            _loc2_ = _loc7_;
            _loc1_ = Number(_loc1_ + _loc2_);
            _loc11_ = _loc1_;
            _loc1_ = _loc11_;
            _loc1_ = Number(_loc1_ * _loc8_);
            _loc11_ = _loc1_;
            _loc2_ = _loc11_;
            _loc1_ = lf32(_loc24_ + 12);
            _loc1_ = Number(_loc1_ + _loc2_);
            _loc11_ = _loc1_;
            _loc1_ = _loc11_;
            _loc1_ = Number(_loc1_ * _loc8_);
            _loc11_ = _loc1_;
            _loc2_ = _loc11_;
            _loc1_ = lf32(_loc24_ + 8);
            _loc1_ = Number(_loc1_ + _loc2_);
            _loc11_ = _loc1_;
            _loc1_ = _loc11_;
            _loc1_ = Number(_loc1_ * _loc8_);
            _loc11_ = _loc1_;
            _loc2_ = _loc11_;
            _loc1_ = lf32(_loc24_ + 4);
            _loc1_ = Number(_loc1_ + _loc2_);
            _loc11_ = _loc1_;
            _loc1_ = _loc11_;
            _loc1_ = Number(_loc1_ * _loc8_);
            _loc11_ = _loc1_;
            _loc2_ = _loc11_;
            _loc1_ = lf32(_loc24_);
            _loc1_ = Number(_loc1_ + _loc2_);
            _loc11_ = _loc1_;
            _loc1_ = _loc11_;
            _loc1_ = Number(_loc1_ * _loc8_);
            _loc11_ = _loc1_;
            _loc1_ = _loc11_;
            _loc1_ = Number(_loc1_ + _loc10_);
            _loc11_ = _loc1_;
            _loc1_ = _loc11_;
            _loc17_ = Number(_loc17_ / _loc1_);
            _loc15_ = _loc17_;
            _loc17_ = _loc15_;
            _loc11_ = 0.375;
            _loc1_ = _loc11_;
            _loc17_ = Number(_loc17_ + _loc1_);
            _loc15_ = _loc17_;
            _loc17_ = _loc15_;
            _loc17_ = Number(_loc17_ / _loc14_);
            _loc15_ = _loc17_;
            _loc17_ = _loc15_;
            _loc1_ = _loc13_;
            _loc17_ = Number(_loc17_ * _loc1_);
            _loc15_ = _loc17_;
            _loc17_ = _loc15_;
            _loc1_ = lf32(_loc27_ + 16);
            _loc1_ = Number(_loc1_ * _loc8_);
            _loc11_ = _loc1_;
            _loc1_ = _loc11_;
            _loc2_ = lf32(_loc27_ + 12);
            _loc1_ = Number(_loc2_ + _loc1_);
            _loc11_ = _loc1_;
            _loc1_ = _loc11_;
            _loc1_ = Number(_loc1_ * _loc8_);
            _loc11_ = _loc1_;
            _loc1_ = _loc11_;
            _loc2_ = lf32(_loc27_ + 8);
            _loc1_ = Number(_loc2_ + _loc1_);
            _loc11_ = _loc1_;
            _loc1_ = _loc11_;
            _loc1_ = Number(_loc1_ * _loc8_);
            _loc11_ = _loc1_;
            _loc2_ = _loc11_;
            _loc1_ = lf32(_loc27_ + 4);
            _loc1_ = Number(_loc1_ + _loc2_);
            _loc11_ = _loc1_;
            _loc1_ = _loc11_;
            _loc1_ = Number(_loc1_ * _loc8_);
            _loc11_ = _loc1_;
            _loc2_ = _loc11_;
            _loc1_ = lf32(_loc27_);
            _loc1_ = Number(_loc1_ + _loc2_);
            _loc11_ = _loc1_;
            _loc1_ = _loc11_;
            _loc1_ = Number(_loc1_ * _loc8_);
            _loc11_ = _loc1_;
            _loc1_ = _loc11_;
            _loc1_ = Number(_loc1_ + _loc10_);
            _loc11_ = _loc1_;
            _loc1_ = _loc11_;
            _loc2_ = lf32(_loc26_ + 20);
            _loc2_ = Number(_loc2_ * _loc8_);
            _loc7_ = _loc2_;
            _loc2_ = _loc7_;
            var _loc3_:* = lf32(_loc26_ + 16);
            _loc2_ = Number(_loc3_ + _loc2_);
            _loc7_ = _loc2_;
            _loc2_ = _loc7_;
            _loc2_ = Number(_loc2_ * _loc8_);
            _loc7_ = _loc2_;
            _loc2_ = _loc7_;
            _loc3_ = lf32(_loc26_ + 12);
            _loc2_ = Number(_loc3_ + _loc2_);
            _loc7_ = _loc2_;
            _loc2_ = _loc7_;
            _loc2_ = Number(_loc2_ * _loc8_);
            _loc7_ = _loc2_;
            _loc3_ = _loc7_;
            _loc2_ = lf32(_loc26_ + 8);
            _loc2_ = Number(_loc2_ + _loc3_);
            _loc7_ = _loc2_;
            _loc2_ = _loc7_;
            _loc2_ = Number(_loc2_ * _loc8_);
            _loc7_ = _loc2_;
            _loc2_ = _loc7_;
            _loc3_ = lf32(_loc26_ + 4);
            _loc2_ = Number(_loc3_ + _loc2_);
            _loc7_ = _loc2_;
            _loc2_ = _loc7_;
            _loc8_ = Number(_loc2_ * _loc8_);
            _loc22_ = _loc8_;
            _loc2_ = _loc22_;
            _loc8_ = lf32(_loc26_);
            _loc8_ = Number(_loc8_ + _loc2_);
            _loc22_ = _loc8_;
            _loc8_ = _loc22_;
            _loc8_ = Number(_loc8_ / _loc1_);
            _loc22_ = _loc8_;
            _loc8_ = _loc22_;
            _loc10_ = Number(_loc8_ + _loc10_);
            _loc16_ = _loc10_;
            _loc10_ = _loc16_;
            _loc8_ = _loc19_;
            _loc10_ = Number(_loc10_ * _loc8_);
            _loc16_ = _loc10_;
            _loc10_ = _loc16_;
            _loc10_ = Number(_loc10_ - _loc17_);
            _loc16_ = _loc10_;
            _loc10_ = _loc16_;
            _loc22_ = 0.564189612865448;
            _loc8_ = _loc22_;
            _loc10_ = Number(_loc10_ * _loc8_);
            _loc16_ = _loc10_;
            _loc10_ = _loc16_;
            _loc8_ = Number(Math.sqrt(_loc14_));
            _loc22_ = _loc8_;
            _loc8_ = _loc22_;
            _loc10_ = Number(_loc10_ / _loc8_);
            _loc21_ = _loc10_;
            if(_loc23_ <= -1)
            {
               _loc10_ = _loc21_;
               _loc10_ = Number(-_loc10_);
               _loc21_ = _loc10_;
            }
         }
         else
         {
            _loc4_ = _loc20_;
            if(uint(_loc28_) <= 838860799)
            {
               _loc16_ = 1.00000001504747e30;
               _loc10_ = Number(_loc4_ + _loc16_);
               _loc16_ = _loc10_;
               _loc10_ = _loc16_;
               _loc22_ = 1;
               _loc8_ = _loc22_;
               if(!(_loc10_ <= _loc8_ | _loc10_ != _loc10_ | _loc8_ != _loc8_))
               {
                  _loc16_ = 0.5;
                  _loc10_ = Number(_loc4_ * _loc16_);
                  _loc21_ = _loc10_;
               }
            }
            _loc16_ = 4.9672799207201e-8;
            _loc8_ = _loc16_;
            _loc10_ = Number(_loc4_ * _loc4_);
            _loc16_ = _loc10_;
            _loc10_ = _loc16_;
            _loc8_ = Number(_loc10_ * _loc8_);
            _loc22_ = _loc8_;
            _loc8_ = _loc22_;
            _loc15_ = -0.0000159955634444486;
            _loc17_ = _loc15_;
            _loc8_ = Number(_loc8_ + _loc17_);
            _loc22_ = _loc8_;
            _loc8_ = _loc22_;
            _loc8_ = Number(_loc8_ * _loc10_);
            _loc22_ = _loc8_;
            _loc8_ = _loc22_;
            _loc15_ = 0.00140705669764429;
            _loc17_ = _loc15_;
            _loc8_ = Number(_loc8_ + _loc17_);
            _loc22_ = _loc8_;
            _loc8_ = _loc22_;
            _loc8_ = Number(_loc8_ * _loc10_);
            _loc22_ = _loc8_;
            _loc8_ = _loc22_;
            _loc15_ = -0.0625;
            _loc17_ = _loc15_;
            _loc8_ = Number(_loc8_ + _loc17_);
            _loc22_ = _loc8_;
            _loc8_ = _loc22_;
            _loc8_ = Number(_loc8_ * _loc10_);
            _loc22_ = _loc8_;
            _loc8_ = _loc22_;
            _loc8_ = Number(_loc8_ * _loc4_);
            _loc22_ = _loc8_;
            _loc8_ = _loc22_;
            _loc15_ = 1.23542270163979e-11;
            _loc17_ = _loc15_;
            _loc17_ = Number(_loc10_ * _loc17_);
            _loc15_ = _loc17_;
            _loc17_ = _loc15_;
            _loc11_ = 5.04636243903178e-9;
            _loc1_ = _loc11_;
            _loc17_ = Number(_loc17_ + _loc1_);
            _loc15_ = _loc17_;
            _loc17_ = _loc15_;
            _loc17_ = Number(_loc17_ * _loc10_);
            _loc15_ = _loc17_;
            _loc17_ = _loc15_;
            _loc11_ = 1.17718468573003e-6;
            _loc1_ = _loc11_;
            _loc17_ = Number(_loc17_ + _loc1_);
            _loc15_ = _loc17_;
            _loc17_ = _loc15_;
            _loc17_ = Number(_loc17_ * _loc10_);
            _loc15_ = _loc17_;
            _loc17_ = _loc15_;
            _loc11_ = 0.000185946788406;
            _loc1_ = _loc11_;
            _loc17_ = Number(_loc17_ + _loc1_);
            _loc15_ = _loc17_;
            _loc17_ = _loc15_;
            _loc17_ = Number(_loc17_ * _loc10_);
            _loc15_ = _loc17_;
            _loc17_ = _loc15_;
            _loc11_ = 0.0191537607461214;
            _loc1_ = _loc11_;
            _loc17_ = Number(_loc17_ + _loc1_);
            _loc15_ = _loc17_;
            _loc17_ = _loc15_;
            _loc10_ = Number(_loc17_ * _loc10_);
            _loc16_ = _loc10_;
            _loc10_ = _loc16_;
            _loc15_ = 1;
            _loc17_ = _loc15_;
            _loc10_ = Number(_loc10_ + _loc17_);
            _loc16_ = _loc10_;
            _loc10_ = _loc16_;
            _loc10_ = Number(_loc8_ / _loc10_);
            _loc16_ = _loc10_;
            _loc10_ = _loc16_;
            _loc22_ = 0.5;
            _loc8_ = _loc22_;
            _loc8_ = Number(_loc4_ * _loc8_);
            _loc22_ = _loc8_;
            _loc8_ = _loc22_;
            _loc10_ = Number(_loc8_ + _loc10_);
            _loc21_ = _loc10_;
         }
      }
      st0 = _loc21_;
      _loc5_ = _loc6_;
      ESP = _loc5_;
   }
}
