package sample.xx
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.li32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F._atanlo53;
   import avm2.intrinsics.memory.si32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F._atanhi52;
   
   public function F_atanf() : void
   {
      var _loc6_:* = 0;
      var _loc5_:* = 0;
      var _loc18_:* = 0;
      var _loc3_:* = NaN;
      var _loc13_:* = NaN;
      var _loc11_:* = NaN;
      var _loc15_:int = 0;
      var _loc1_:* = NaN;
      var _loc4_:* = int(ESP);
      _loc6_ = _loc4_;
      _loc4_ = int(_loc4_ - 8);
      _loc1_ = lf32(_loc6_);
      sf32(_loc1_,_loc6_ - 4);
      _loc5_ = li32(_loc6_ - 4);
      _loc18_ = _loc5_ & 2147483647;
      if(uint(_loc18_) >= 1283457024)
      {
         if(uint(_loc18_) >= 2139095041)
         {
            var _loc8_:* = _loc1_;
            _loc8_ = Number(_loc8_ + _loc8_);
            _loc1_ = _loc8_;
         }
         else
         {
            _loc3_ = lf32(_atanlo53 + 12);
            if(_loc5_ >= 1)
            {
               _loc8_ = Number(_loc3_ + 1.570796251297);
               _loc1_ = _loc8_;
            }
            else
            {
               var _loc7_:* = -1.570796251297;
               _loc8_ = Number(_loc7_ - _loc3_);
               _loc1_ = _loc8_;
            }
         }
      }
      else
      {
         if(uint(_loc18_) <= 1054867455)
         {
            _loc15_ = -1;
            if(uint(_loc18_) <= 964689919)
            {
               _loc8_ = Number(_loc1_ + 1.00000001504747e30);
               var _loc16_:* = _loc8_;
               if(_loc16_ <= 1)
               {
               }
            }
         }
         else
         {
            si32(_loc18_,_loc6_ - 8);
            _loc3_ = lf32(_loc6_ - 8);
            if(uint(_loc18_) <= 1066926079)
            {
               if(uint(_loc18_) <= 1060110335)
               {
                  _loc7_ = _loc3_;
                  _loc16_ = 2;
                  _loc8_ = Number(_loc7_ + _loc16_);
                  _loc16_ = _loc8_;
                  var _loc19_:* = -1;
                  _loc7_ = Number(_loc7_ + _loc7_);
                  _loc7_ = _loc7_;
                  _loc7_ = Number(_loc7_ + _loc19_);
                  _loc7_ = _loc7_;
                  _loc8_ = Number(_loc7_ / _loc16_);
                  _loc1_ = _loc8_;
                  _loc15_ = 0;
               }
               else
               {
                  _loc7_ = 1;
                  _loc7_ = Number(_loc3_ + _loc7_);
                  _loc7_ = _loc7_;
                  _loc19_ = -1;
                  _loc8_ = Number(_loc3_ + _loc19_);
                  _loc16_ = _loc8_;
                  _loc8_ = _loc16_;
                  _loc8_ = Number(_loc8_ / _loc7_);
                  _loc1_ = _loc8_;
                  _loc15_ = 1;
               }
            }
            else if(uint(_loc18_) <= 1075576831)
            {
               _loc16_ = -1.5;
               _loc8_ = _loc16_;
               _loc8_ = Number(_loc3_ + _loc8_);
               _loc16_ = _loc8_;
               _loc8_ = _loc16_;
               _loc19_ = 1.5;
               _loc7_ = Number(_loc3_ * _loc19_);
               _loc19_ = 1;
               _loc7_ = Number(_loc7_ + _loc19_);
               _loc8_ = Number(_loc8_ / _loc7_);
               _loc1_ = _loc8_;
               _loc15_ = 2;
            }
            else
            {
               _loc7_ = -1;
               _loc8_ = Number(_loc7_ / _loc3_);
               _loc1_ = _loc8_;
               _loc15_ = 3;
            }
         }
         _loc16_ = -0.106480173766613;
         var _loc14_:* = _loc16_;
         _loc11_ = _loc1_;
         _loc8_ = Number(_loc11_ * _loc11_);
         _loc16_ = _loc8_;
         _loc8_ = _loc16_;
         _loc7_ = Number(_loc8_ * _loc8_);
         var _loc2_:* = _loc7_;
         _loc7_ = _loc2_;
         _loc14_ = Number(_loc7_ * _loc14_);
         _loc19_ = _loc14_;
         _loc14_ = _loc19_;
         var _loc10_:* = -0.199991583824158;
         var _loc17_:* = _loc10_;
         _loc14_ = Number(_loc14_ + _loc17_);
         _loc19_ = _loc14_;
         _loc14_ = _loc19_;
         _loc14_ = Number(_loc14_ * _loc7_);
         _loc13_ = _loc14_;
         _loc19_ = 0.0616876073181629;
         _loc14_ = _loc19_;
         _loc14_ = Number(_loc7_ * _loc14_);
         _loc19_ = _loc14_;
         _loc14_ = _loc19_;
         _loc10_ = 0.142536357045174;
         _loc17_ = _loc10_;
         _loc14_ = Number(_loc14_ + _loc17_);
         _loc19_ = _loc14_;
         _loc14_ = _loc19_;
         _loc7_ = Number(_loc14_ * _loc7_);
         _loc2_ = _loc7_;
         _loc7_ = _loc2_;
         _loc19_ = 0.333333283662796;
         _loc14_ = _loc19_;
         _loc7_ = Number(_loc7_ + _loc14_);
         _loc2_ = _loc7_;
         _loc7_ = _loc2_;
         _loc8_ = Number(_loc7_ * _loc8_);
         _loc1_ = _loc8_;
         if(_loc15_ <= -1)
         {
            _loc8_ = _loc1_;
            _loc8_ = Number(_loc8_ + _loc13_);
            _loc16_ = _loc8_;
            _loc8_ = _loc16_;
            _loc8_ = Number(_loc8_ * _loc11_);
            _loc16_ = _loc8_;
            _loc8_ = Number(_loc11_ - _loc16_);
            _loc1_ = _loc8_;
         }
         else
         {
            var _loc12_:* = _loc15_ << 2;
            var _loc9_:int = _atanlo53 + _loc12_;
            _loc17_ = _loc1_;
            _loc14_ = Number(_loc17_ + _loc13_);
            _loc19_ = _loc14_;
            _loc14_ = _loc19_;
            _loc14_ = Number(_loc14_ * _loc11_);
            _loc19_ = _loc14_;
            _loc14_ = _loc19_;
            _loc7_ = Number(_loc14_ - lf32(_loc9_));
            _loc7_ = _loc7_;
            _loc7_ = Number(_loc7_ - _loc11_);
            _loc12_ = int(_atanhi52 + _loc12_);
            _loc8_ = lf32(_loc12_);
            _loc8_ = Number(_loc8_ - _loc7_);
            _loc1_ = _loc8_;
            if(_loc5_ <= -1)
            {
               _loc8_ = _loc1_;
               _loc8_ = Number(-_loc8_);
               _loc1_ = _loc8_;
            }
         }
      }
      st0 = _loc1_;
      _loc4_ = _loc6_;
      ESP = _loc4_;
   }
}
