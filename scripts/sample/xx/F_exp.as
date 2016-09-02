package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.li32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F._twom1000;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F._ln2LO;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F._ln2HI;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F._halF;
   import avm2.intrinsics.memory.si32;
   
   public function F_exp() : void
   {
      var _loc4_:* = 0;
      var _loc6_:* = NaN;
      var _loc13_:* = 0;
      var _loc12_:Number = NaN;
      var _loc1_:Number = NaN;
      var _loc3_:* = 0;
      var _loc14_:* = NaN;
      var _loc5_:* = NaN;
      var _loc9_:* = 0;
      var _loc11_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc6_ = lf64(_loc4_);
      sf64(_loc6_,_loc4_ - 8);
      _loc3_ = int(_loc4_ - 8);
      _loc3_ = _loc3_ | 4;
      _loc13_ = li32(_loc3_);
      _loc11_ = _loc13_ & 2147483647;
      _loc9_ = int(_loc13_ >>> 31);
      if(uint(_loc11_) >= 1082535490)
      {
         if(uint(_loc11_) >= 2146435072)
         {
            if((_loc13_ & 1048575 | li32(_loc4_ - 8)) != 0)
            {
               _loc5_ = Number(_loc6_ + _loc6_);
            }
            else
            {
               if(_loc9_ != 0)
               {
                  _loc6_ = 0;
               }
               _loc5_ = _loc6_;
            }
         }
         else
         {
            _loc5_ = Number(inf);
            if(_loc6_ <= 709.782712893384)
            {
               if(!(_loc6_ >= -745.133219101941 | _loc6_ != _loc6_ | false))
               {
                  _loc5_ = Number(lf64(_twom1000) * lf64(_twom1000));
               }
            }
         }
         addr434:
         st0 = _loc5_;
         _loc2_ = _loc4_;
         ESP = _loc2_;
         return;
      }
      if(uint(_loc11_) >= 1071001155)
      {
         if(uint(_loc11_) <= 1072734897)
         {
            var _loc7_:* = _loc9_ << 3;
            _loc5_ = lf64(int(_ln2LO + _loc7_));
            _loc14_ = lf64(int(_ln2HI + _loc7_));
            _loc9_ = int(0 - _loc9_) | 1;
         }
         else
         {
            var _loc8_:Number = _loc6_ * 1.44269504088896;
            _loc8_ = _loc8_ + lf64(int(_halF + (_loc9_ << 3)));
            _loc9_ = int(_loc8_);
            _loc8_ = _loc9_;
            _loc5_ = Number(_loc8_ * 1.90821492927059e-10);
            _loc14_ = Number(_loc8_ * 0.693147180369124);
         }
         _loc14_ = Number(_loc6_ - _loc14_);
         _loc6_ = Number(_loc14_ - _loc5_);
      }
      else
      {
         _loc9_ = 0;
         _loc5_ = 0;
         _loc14_ = _loc5_;
         if(uint(_loc11_) <= 1043333119)
         {
            _loc8_ = _loc6_ + 1.0e300;
            _loc9_ = 0;
            _loc5_ = 0;
            _loc14_ = _loc5_;
            if(!(_loc8_ <= 1 | _loc8_ != _loc8_ | false))
            {
               _loc5_ = Number(_loc6_ + 1);
            }
            §§goto(addr434);
         }
      }
      _loc11_ = 1072693248;
      if(_loc9_ <= -1022)
      {
         _loc11_ = 2121269248;
      }
      _loc3_ = _loc9_ << 20;
      _loc3_ = int(_loc11_ + _loc3_);
      _loc7_ = int(_loc4_ - 16);
      _loc7_ = _loc7_ | 4;
      si32(_loc3_,_loc7_);
      si32(0,_loc4_ - 16);
      _loc8_ = _loc6_ * _loc6_;
      var _loc10_:Number = _loc8_ * 4.13813679705724e-8;
      _loc10_ = _loc10_ + -1.65339022054653e-6;
      _loc10_ = _loc10_ * _loc8_;
      _loc10_ = _loc10_ + 0.0000661375632143793;
      _loc10_ = _loc10_ * _loc8_;
      _loc10_ = _loc10_ + -0.00277777777770156;
      _loc10_ = _loc10_ * _loc8_;
      _loc10_ = _loc10_ + 0.166666666666666;
      _loc8_ = _loc10_ * _loc8_;
      _loc12_ = _loc6_ - _loc8_;
      _loc1_ = _loc6_ * _loc12_;
      if(_loc9_ == 0)
      {
         _loc8_ = _loc1_ / (Number(_loc12_ + -2));
         _loc5_ = Number(1 - (Number(_loc8_ - _loc6_)));
      }
      else
      {
         _loc6_ = lf64(_loc4_ - 16);
         _loc8_ = _loc5_ - _loc1_ / (Number(2 - _loc12_));
         _loc5_ = Number(1 - (Number(_loc8_ - _loc14_)));
         if(_loc9_ >= -1021)
         {
            if(_loc9_ == 1024)
            {
               _loc8_ = _loc5_ + _loc5_;
               _loc5_ = Number(_loc8_ * 8.98846567431158e307);
            }
            else
            {
               _loc5_ = Number(_loc5_ * _loc6_);
            }
         }
         else
         {
            _loc5_ = Number(_loc5_ * _loc6_ * lf64(_twom1000));
         }
      }
      §§goto(addr434);
   }
}
