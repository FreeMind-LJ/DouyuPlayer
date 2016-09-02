package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.li32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F.*;
   import avm2.intrinsics.memory.si32;
   
   public function F_asin() : void
   {
      var _loc5_:* = 0;
      var _loc13_:* = 0;
      var _loc11_:* = 0;
      var _loc14_:Number = NaN;
      var _loc12_:Number = NaN;
      var _loc1_:Number = NaN;
      var _loc7_:* = NaN;
      var _loc3_:* = int(ESP);
      _loc5_ = _loc3_;
      _loc3_ = int(_loc3_ - 32);
      _loc7_ = lf64(_loc5_);
      sf64(_loc7_,_loc5_ - 8);
      var _loc4_:* = int(_loc5_ - 8);
      _loc4_ = _loc4_ | 4;
      _loc13_ = li32(_loc4_);
      _loc11_ = _loc13_ & 2147483647;
      if(uint(_loc11_) >= 1072693248)
      {
         _loc4_ = int(_loc11_ + -1072693248);
         _loc4_ = _loc4_ | li32(_loc5_ - 8);
         if(_loc4_ == 0)
         {
            var _loc10_:Number = _loc7_ * 1.5707963267949;
            _loc7_ = Number(_loc10_ + Number(_loc7_ * 6.12323399573677e-17));
         }
         else
         {
            var _loc6_:* = Number(_loc7_ - _loc7_);
            _loc7_ = Number(_loc6_ / _loc6_);
         }
      }
      else if(uint(_loc11_) <= 1071644671)
      {
         if(uint(_loc11_) <= 1044381695)
         {
            _loc6_ = Number(_loc7_ + 1.0e300);
            if(_loc6_ <= 1)
            {
            }
         }
         _loc6_ = Number(_loc7_ * _loc7_);
         _loc10_ = _loc6_ * 0.0000347933107596021;
         _loc10_ = _loc10_ + 0.000791534994289815;
         _loc10_ = _loc10_ * _loc6_;
         _loc10_ = _loc10_ + -0.0400555345006794;
         _loc10_ = _loc10_ * _loc6_;
         _loc10_ = _loc10_ + 0.201212532134863;
         _loc10_ = _loc10_ * _loc6_;
         _loc10_ = _loc10_ + -0.325565818622401;
         _loc10_ = _loc10_ * _loc6_;
         _loc10_ = _loc10_ + 0.166666666666667;
         _loc10_ = _loc10_ * _loc6_;
         var _loc8_:Number = _loc6_ * 0.0770381505559019;
         _loc8_ = _loc8_ + -0.688283971605453;
         _loc8_ = _loc8_ * _loc6_;
         _loc8_ = _loc8_ + 2.02094576023351;
         _loc8_ = _loc8_ * _loc6_;
         _loc8_ = _loc8_ + -2.40339491173441;
         _loc6_ = Number(_loc8_ * _loc6_);
         _loc6_ = Number(_loc6_ + 1);
         _loc6_ = Number(_loc10_ / _loc6_);
         _loc6_ = Number(_loc6_ * _loc7_);
         _loc7_ = Number(_loc6_ + _loc7_);
      }
      else
      {
         _loc3_ = int(_loc3_ - 16);
         _loc6_ = Number(1 - Math.abs(_loc7_));
         _loc7_ = Number(_loc6_ * 0.5);
         sf64(_loc7_,_loc3_);
         _loc6_ = Number(_loc7_ * 0.0000347933107596021);
         _loc6_ = Number(_loc6_ + 0.000791534994289815);
         _loc6_ = Number(_loc6_ * _loc7_);
         _loc6_ = Number(_loc6_ + -0.0400555345006794);
         _loc6_ = Number(_loc6_ * _loc7_);
         _loc6_ = Number(_loc6_ + 0.201212532134863);
         _loc6_ = Number(_loc6_ * _loc7_);
         _loc6_ = Number(_loc6_ + -0.325565818622401);
         _loc6_ = Number(_loc6_ * _loc7_);
         _loc6_ = Number(_loc6_ + 0.166666666666667);
         _loc14_ = _loc6_ * _loc7_;
         _loc6_ = Number(_loc7_ * 0.0770381505559019);
         _loc6_ = Number(_loc6_ + -0.688283971605453);
         _loc6_ = Number(_loc6_ * _loc7_);
         _loc6_ = Number(_loc6_ + 2.02094576023351);
         _loc6_ = Number(_loc6_ * _loc7_);
         _loc6_ = Number(_loc6_ + -2.40339491173441);
         _loc6_ = Number(_loc6_ * _loc7_);
         _loc12_ = _loc6_ + 1;
         ESP = _loc3_;
         F_sqrt();
         _loc3_ = int(_loc3_ + 16);
         _loc1_ = st0;
         if(uint(_loc11_) >= 1072640819)
         {
            _loc6_ = Number(_loc1_ * (_loc14_ / _loc12_));
            _loc6_ = Number(_loc6_ + _loc1_);
            _loc6_ = Number(_loc6_ + _loc6_);
            _loc7_ = Number(1.5707963267949 - (Number(_loc6_ + -6.12323399573677e-17)));
         }
         else
         {
            sf64(_loc1_,_loc5_ - 16);
            _loc4_ = int(_loc5_ - 24);
            var _loc9_:* = int(_loc5_ - 16);
            _loc9_ = _loc9_ | 4;
            _loc9_ = li32(_loc9_);
            si32(_loc9_,_loc4_ | 4);
            si32(0,_loc5_ - 24);
            _loc6_ = lf64(_loc5_ - 24);
            _loc8_ = _loc7_ - _loc6_ * _loc6_;
            _loc10_ = _loc8_ / (Number(_loc1_ + _loc6_));
            _loc10_ = _loc10_ * -2;
            _loc8_ = _loc1_ + _loc1_;
            _loc8_ = _loc8_ * (_loc14_ / _loc12_);
            _loc6_ = Number(_loc6_ * -2);
            _loc7_ = Number(0.785398163397448 - (Number(Number(_loc8_ - (Number(_loc10_ + 6.12323399573677e-17))) - (Number(_loc6_ + 0.785398163397448)))));
         }
         if(_loc13_ <= 0)
         {
            _loc7_ = Number(-_loc7_);
         }
      }
      st0 = _loc7_;
      _loc3_ = _loc5_;
      ESP = _loc3_;
   }
}
