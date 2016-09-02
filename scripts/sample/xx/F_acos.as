package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.li32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F.*;
   import avm2.intrinsics.memory.si32;
   
   public function F_acos() : void
   {
      var _loc4_:* = 0;
      var _loc6_:* = NaN;
      var _loc3_:* = 0;
      var _loc14_:* = 0;
      var _loc13_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc2_ = int(_loc2_ - 32);
      _loc6_ = lf64(_loc4_);
      sf64(_loc6_,_loc4_ - 8);
      _loc3_ = int(_loc4_ - 8);
      _loc3_ = _loc3_ | 4;
      _loc14_ = li32(_loc3_);
      _loc13_ = _loc14_ & 2147483647;
      if(uint(_loc13_) >= 1072693248)
      {
         var _loc10_:int = _loc13_ + -1072693248;
         if((_loc10_ | li32(_loc4_ - 8)) == 0)
         {
            _loc6_ = 0;
            if(_loc14_ <= 0)
            {
               var _loc5_:* = lf64(_pio2_lo);
               _loc5_ = Number(_loc5_ + _loc5_);
               _loc6_ = Number(_loc5_ + 3.14159265358979);
            }
         }
         else
         {
            _loc5_ = Number(_loc6_ - _loc6_);
            _loc6_ = Number(_loc5_ / _loc5_);
         }
      }
      else if(uint(_loc13_) <= 1071644671)
      {
         if(uint(_loc13_) <= 1012924416)
         {
            _loc5_ = lf64(_pio2_lo);
            _loc6_ = Number(_loc5_ + 1.5707963267949);
         }
         else
         {
            _loc5_ = Number(_loc6_ * _loc6_);
            var _loc11_:* = Number(_loc5_ * 0.0000347933107596021);
            _loc11_ = Number(_loc11_ + 0.000791534994289815);
            _loc11_ = Number(_loc11_ * _loc5_);
            _loc11_ = Number(_loc11_ + -0.0400555345006794);
            _loc11_ = Number(_loc11_ * _loc5_);
            _loc11_ = Number(_loc11_ + 0.201212532134863);
            _loc11_ = Number(_loc11_ * _loc5_);
            _loc11_ = Number(_loc11_ + -0.325565818622401);
            _loc11_ = Number(_loc11_ * _loc5_);
            _loc11_ = Number(_loc11_ + 0.166666666666667);
            var _loc8_:* = Number(_loc5_ * 0.0770381505559019);
            _loc8_ = Number(_loc8_ + -0.688283971605453);
            _loc8_ = Number(_loc8_ * _loc5_);
            _loc8_ = Number(_loc8_ + 2.02094576023351);
            _loc8_ = Number(_loc8_ * _loc5_);
            _loc8_ = Number(_loc8_ + -2.40339491173441);
            _loc5_ = Number(_loc8_ * _loc5_);
            _loc5_ = Number(Number(_loc11_ * _loc5_) / (Number(_loc5_ + 1)));
            _loc11_ = lf64(_pio2_lo);
            _loc6_ = Number(1.5707963267949 - (Number(_loc6_ - (Number(_loc11_ - _loc5_ * _loc6_)))));
         }
      }
      else if(_loc14_ <= -1)
      {
         _loc2_ = int(_loc2_ - 16);
         _loc5_ = Number(_loc6_ + 1);
         _loc5_ = Number(_loc5_ * 0.5);
         sf64(_loc5_,_loc2_);
         _loc11_ = Number(_loc5_ * 0.0000347933107596021);
         _loc11_ = Number(_loc11_ + 0.000791534994289815);
         _loc11_ = Number(_loc11_ * _loc5_);
         _loc11_ = Number(_loc11_ + -0.0400555345006794);
         _loc11_ = Number(_loc11_ * _loc5_);
         _loc11_ = Number(_loc11_ + 0.201212532134863);
         _loc11_ = Number(_loc11_ * _loc5_);
         _loc11_ = Number(_loc11_ + -0.325565818622401);
         _loc11_ = Number(_loc11_ * _loc5_);
         _loc11_ = Number(_loc11_ + 0.166666666666667);
         _loc8_ = Number(_loc5_ * 0.0770381505559019);
         _loc8_ = Number(_loc8_ + -0.688283971605453);
         _loc8_ = Number(_loc8_ * _loc5_);
         _loc8_ = Number(_loc8_ + 2.02094576023351);
         _loc8_ = Number(_loc8_ * _loc5_);
         _loc8_ = Number(_loc8_ + -2.40339491173441);
         _loc5_ = Number(_loc8_ * _loc5_);
         ESP = _loc2_;
         F_sqrt();
         _loc2_ = int(_loc2_ + 16);
         _loc5_ = Number(st0);
         _loc5_ = Number(_loc5_ + (Number(Number(_loc11_ * _loc5_) / (Number(_loc5_ + 1)) * _loc5_ - lf64(_pio2_lo))));
         _loc5_ = Number(_loc5_ * -2);
         _loc6_ = Number(_loc5_ + 3.14159265358979);
      }
      else
      {
         _loc2_ = int(_loc2_ - 16);
         _loc5_ = Number(1 - _loc6_);
         _loc11_ = Number(_loc5_ * 0.5);
         sf64(_loc11_,_loc2_);
         ESP = _loc2_;
         F_sqrt();
         _loc2_ = int(_loc2_ + 16);
         _loc5_ = Number(st0);
         sf64(_loc5_,_loc4_ - 16);
         var _loc9_:int = _loc4_ - 24;
         var _loc7_:* = int(_loc4_ - 16);
         _loc7_ = _loc7_ | 4;
         _loc7_ = li32(_loc7_);
         si32(_loc7_,_loc9_ | 4);
         si32(0,_loc4_ - 24);
         _loc8_ = lf64(_loc4_ - 24);
         var _loc12_:Number = _loc11_ - _loc8_ * _loc8_;
         _loc12_ = _loc11_ * 0.0000347933107596021;
         _loc12_ = _loc12_ + 0.000791534994289815;
         _loc12_ = _loc12_ * _loc11_;
         _loc12_ = _loc12_ + -0.0400555345006794;
         _loc12_ = _loc12_ * _loc11_;
         _loc12_ = _loc12_ + 0.201212532134863;
         _loc12_ = _loc12_ * _loc11_;
         _loc12_ = _loc12_ + -0.325565818622401;
         _loc12_ = _loc12_ * _loc11_;
         _loc12_ = _loc12_ + 0.166666666666667;
         _loc11_ = Number((Number((Number((Number(_loc11_ * 0.0770381505559019) + -0.688283971605453) * _loc11_) + 2.02094576023351) * _loc11_) + -2.40339491173441) * _loc11_);
         _loc11_ = Number(Number(_loc12_ * _loc11_) / (Number(_loc11_ + 1)));
         _loc5_ = Number(_loc11_ * _loc5_);
         _loc5_ = Number(_loc8_ + (Number(_loc5_ + Number(_loc12_ / (Number(_loc5_ + _loc8_))))));
         _loc6_ = Number(_loc5_ + _loc5_);
      }
      st0 = _loc6_;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
