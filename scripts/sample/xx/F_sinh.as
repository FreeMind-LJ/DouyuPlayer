package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.li32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F.LCPI153_0;
   
   public function F_sinh() : void
   {
      var _loc3_:* = 0;
      var _loc9_:* = 0;
      var _loc10_:* = 0;
      var _loc4_:* = NaN;
      var _loc6_:Number = NaN;
      var _loc1_:* = 0;
      var _loc7_:int = 0;
      var _loc12_:* = 0;
      var _loc5_:* = NaN;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc5_ = lf64(_loc3_);
      sf64(_loc5_,_loc3_ - 8);
      _loc1_ = int(_loc3_ - 8);
      _loc1_ = _loc1_ | 4;
      _loc12_ = li32(_loc1_);
      _loc10_ = _loc12_ & 2147483647;
      if(uint(_loc10_) >= 2146435072)
      {
         _loc5_ = Number(_loc5_ + _loc5_);
      }
      else
      {
         _loc9_ = li32(_loc3_ - 8);
         _loc7_ = 1;
         if(_loc12_ >= 0)
         {
            _loc7_ = 0;
         }
         _loc12_ = 8;
         if(_loc7_ == 0)
         {
            _loc12_ = 0;
         }
         _loc1_ = int(LCPI153_0 + _loc12_);
         _loc4_ = lf64(_loc1_);
         if(uint(_loc10_) <= 1077280767)
         {
            if(uint(_loc10_) <= 1043333119)
            {
               var _loc8_:Number = _loc5_ + 1.0e307;
               if(_loc8_ <= 1)
               {
               }
            }
            _loc2_ = int(_loc2_ - 16);
            _loc8_ = Math.abs(_loc5_);
            sf64(_loc8_,_loc2_);
            ESP = _loc2_;
            F_expm1();
            _loc2_ = int(_loc2_ + 16);
            _loc6_ = st0;
            if(uint(_loc10_) <= 1072693247)
            {
               var _loc11_:Number = _loc6_ * _loc6_;
               _loc8_ = _loc6_ + _loc6_;
               _loc8_ = _loc8_ - _loc11_ / (Number(_loc6_ + 1));
               _loc5_ = Number(_loc8_ * _loc4_);
            }
            else
            {
               _loc8_ = _loc6_ / (Number(_loc6_ + 1));
               _loc8_ = _loc8_ + _loc6_;
               _loc5_ = Number(_loc8_ * _loc4_);
            }
         }
         else if(uint(_loc10_) <= 1082535489)
         {
            _loc2_ = int(_loc2_ - 16);
            _loc8_ = Math.abs(_loc5_);
            sf64(_loc8_,_loc2_);
            ESP = _loc2_;
            F_exp();
            _loc2_ = int(_loc2_ + 16);
            _loc8_ = st0;
            _loc5_ = Number(_loc8_ * _loc4_);
         }
         else
         {
            if(uint(_loc10_) >= 1082536910)
            {
               if(_loc10_ == 1082536910)
               {
                  if(uint(_loc9_) <= 2411329661)
                  {
                  }
               }
               _loc5_ = Number(_loc5_ * 1.0e307);
            }
            _loc2_ = int(_loc2_ - 16);
            _loc8_ = Math.abs(_loc5_);
            _loc8_ = _loc8_ * 0.5;
            sf64(_loc8_,_loc2_);
            ESP = _loc2_;
            F_exp();
            _loc2_ = int(_loc2_ + 16);
            _loc8_ = st0;
            _loc11_ = _loc4_ * _loc8_;
            _loc5_ = Number(_loc11_ * _loc8_);
         }
      }
      st0 = _loc5_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
