package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.li32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F.*;
   
   public function F_acosh() : void
   {
      var _loc3_:* = 0;
      var _loc5_:* = NaN;
      var _loc10_:* = 0;
      var _loc1_:* = 0;
      var _loc7_:* = NaN;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc5_ = lf64(_loc3_);
      sf64(_loc5_,_loc3_ - 8);
      _loc1_ = int(_loc3_ - 8);
      _loc1_ = _loc1_ | 4;
      _loc10_ = li32(_loc1_);
      if(_loc10_ <= 1072693247)
      {
         var _loc4_:Number = _loc5_ - _loc5_;
         _loc7_ = Number(_loc4_ / _loc4_);
      }
      else if(_loc10_ >= 1102053376)
      {
         if(_loc10_ >= 2146435072)
         {
            _loc7_ = Number(_loc5_ + _loc5_);
         }
         else
         {
            _loc2_ = int(_loc2_ - 16);
            sf64(_loc5_,_loc2_);
            ESP = _loc2_;
            F_log();
            _loc2_ = int(_loc2_ + 16);
            _loc4_ = st0;
            _loc7_ = Number(_loc4_ + 0.693147180559945);
         }
      }
      else
      {
         _loc7_ = 0;
         if((int(_loc10_ + -1072693248) | li32(_loc3_ - 8)) != 0)
         {
            if(_loc10_ >= 1073741825)
            {
               _loc2_ = int(_loc2_ - 16);
               _loc4_ = _loc5_ * _loc5_;
               _loc4_ = _loc4_ + -1;
               sf64(_loc4_,_loc2_);
               ESP = _loc2_;
               F_sqrt();
               _loc2_ = int(_loc2_ + 16);
               _loc4_ = st0;
               _loc4_ = _loc5_ + _loc5_;
               _loc2_ = int(_loc2_ - 16);
               sf64(Number(_loc4_ + Number(-1 / (Number(_loc4_ + _loc5_)))),_loc2_);
               ESP = _loc2_;
               F_log();
               _loc2_ = int(_loc2_ + 16);
               _loc7_ = Number(st0);
            }
            else
            {
               _loc4_ = _loc5_ + -1;
               var _loc6_:Number = _loc4_ + _loc4_;
               _loc2_ = int(_loc2_ - 16);
               sf64(Number(_loc6_ + Number(_loc4_ * _loc4_)),_loc2_);
               ESP = _loc2_;
               F_sqrt();
               _loc2_ = int(_loc2_ + 16);
               _loc6_ = st0;
               _loc2_ = int(_loc2_ - 16);
               sf64(Number(_loc6_ + _loc4_),_loc2_);
               ESP = _loc2_;
               F_log1p();
               _loc2_ = int(_loc2_ + 16);
               _loc7_ = Number(st0);
            }
         }
      }
      st0 = _loc7_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
