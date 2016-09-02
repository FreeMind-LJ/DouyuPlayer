package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.li32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F._atanlo;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F._atanhi;
   
   public function F_atan() : void
   {
      var _loc4_:* = 0;
      var _loc13_:* = 0;
      var _loc11_:* = 0;
      var _loc5_:* = NaN;
      var _loc1_:Number = NaN;
      var _loc12_:Number = NaN;
      var _loc3_:* = 0;
      var _loc9_:int = 0;
      var _loc6_:* = NaN;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc2_ = int(_loc2_ - 8);
      _loc6_ = lf64(_loc4_);
      sf64(_loc6_,_loc4_ - 8);
      _loc3_ = int(_loc4_ - 8);
      _loc3_ = _loc3_ | 4;
      _loc13_ = li32(_loc3_);
      _loc11_ = _loc13_ & 2147483647;
      if(uint(_loc11_) >= 1141899264)
      {
         if(uint(_loc11_) <= 2146435072)
         {
            if(_loc11_ == 2146435072)
            {
               if(li32(_loc4_ - 8) != 0)
               {
               }
            }
            _loc5_ = lf64(_atanlo + 24);
            if(_loc13_ >= 1)
            {
               _loc6_ = Number(_loc5_ + 1.5707963267949);
            }
            else
            {
               _loc6_ = Number(-1.5707963267949 - _loc5_);
            }
         }
         _loc6_ = Number(_loc6_ + _loc6_);
      }
      else
      {
         if(uint(_loc11_) <= 1071382527)
         {
            _loc9_ = -1;
            if(uint(_loc11_) <= 1042284543)
            {
               _loc9_ = -1;
               if(Number(_loc6_ + 1.0e300) <= 1)
               {
               }
            }
         }
         else
         {
            _loc5_ = Number(Math.abs(_loc6_));
            if(uint(_loc11_) <= 1072889855)
            {
               if(uint(_loc11_) <= 1072037887)
               {
                  var _loc8_:Number = _loc5_ + _loc5_;
                  _loc8_ = _loc8_ + -1;
                  _loc6_ = Number(_loc8_ / (Number(_loc5_ + 2)));
                  _loc9_ = 0;
               }
               else
               {
                  _loc8_ = _loc5_ + -1;
                  _loc6_ = Number(_loc8_ / (Number(_loc5_ + 1)));
                  _loc9_ = 1;
               }
            }
            else if(uint(_loc11_) <= 1073971199)
            {
               _loc8_ = _loc5_ * 1.5;
               _loc6_ = Number((Number(_loc5_ + -1.5)) / (Number(_loc8_ + 1)));
               _loc9_ = 2;
            }
            else
            {
               _loc6_ = Number(-1 / _loc5_);
               _loc9_ = 3;
            }
         }
         var _loc10_:* = Number(_loc6_ * _loc6_);
         _loc8_ = _loc10_ * _loc10_;
         var _loc14_:Number = _loc8_ * -0.0365315727442169;
         _loc14_ = _loc14_ + -0.0583357013379057;
         _loc14_ = _loc14_ * _loc8_;
         _loc14_ = _loc14_ + -0.0769187620504483;
         _loc14_ = _loc14_ * _loc8_;
         _loc14_ = _loc14_ + -0.111111104054624;
         _loc14_ = _loc14_ * _loc8_;
         _loc14_ = _loc14_ + -0.199999999998765;
         _loc12_ = _loc14_ * _loc8_;
         _loc14_ = _loc8_ * 0.0162858201153658;
         _loc14_ = _loc14_ + 0.0497687799461593;
         _loc14_ = _loc14_ * _loc8_;
         _loc14_ = _loc14_ + 0.0666107313738753;
         _loc14_ = _loc14_ * _loc8_;
         _loc14_ = _loc14_ + 0.0909088713343651;
         _loc14_ = _loc14_ * _loc8_;
         _loc14_ = _loc14_ + 0.142857142725035;
         _loc8_ = _loc14_ * _loc8_;
         _loc8_ = _loc8_ + 0.333333333333329;
         _loc1_ = _loc8_ * _loc10_;
         if(_loc9_ <= -1)
         {
            _loc10_ = Number(_loc1_ + _loc12_);
            _loc6_ = Number(_loc6_ - _loc10_ * _loc6_);
         }
         else
         {
            _loc10_ = Number(_loc1_ + _loc12_);
            _loc3_ = _loc9_ << 3;
            var _loc7_:int = _atanlo + _loc3_;
            _loc8_ = _loc10_ * _loc6_ - lf64(_loc7_);
            _loc10_ = lf64(int(_atanhi + _loc3_));
            _loc6_ = Number(_loc10_ - (Number(_loc8_ - _loc6_)));
            if(_loc13_ <= -1)
            {
               _loc6_ = Number(-_loc6_);
            }
         }
      }
      st0 = _loc6_;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
