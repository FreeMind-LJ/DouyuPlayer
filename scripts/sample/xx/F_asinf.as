package sample.xx
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.sf64;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F.*;
   
   public function F_asinf() : void
   {
      var _loc6_:* = 0;
      var _loc5_:* = 0;
      var _loc13_:* = 0;
      var _loc7_:* = NaN;
      var _loc1_:* = NaN;
      var _loc4_:* = int(ESP);
      _loc6_ = _loc4_;
      _loc4_ = int(_loc4_ - 16);
      _loc1_ = lf32(_loc6_);
      sf32(_loc1_,_loc6_ - 4);
      _loc5_ = li32(_loc6_ - 4);
      _loc13_ = _loc5_ & 2147483647;
      if(uint(_loc13_) >= 1065353216)
      {
         if(_loc13_ == 1065353216)
         {
            var _loc8_:* = _loc1_;
            _loc8_ = Number(_loc8_ * 1.5707963267949);
            _loc1_ = _loc8_;
         }
         else
         {
            _loc8_ = _loc1_;
            _loc8_ = Number(_loc8_ - _loc8_);
            _loc8_ = _loc8_;
            _loc8_ = Number(_loc8_ / _loc8_);
            _loc1_ = _loc8_;
         }
      }
      else if(uint(_loc13_) <= 1056964607)
      {
         _loc7_ = _loc1_;
         if(uint(_loc13_) <= 964689919)
         {
            _loc8_ = Number(_loc7_ + 1.00000001504747e30);
            if(_loc8_ <= 1)
            {
            }
         }
         var _loc3_:* = -0.706629633903503;
         var _loc10_:* = _loc3_;
         _loc8_ = Number(_loc7_ * _loc7_);
         _loc3_ = _loc8_;
         _loc8_ = _loc3_;
         _loc10_ = Number(_loc8_ * _loc10_);
         var _loc2_:* = _loc10_;
         _loc10_ = _loc2_;
         var _loc11_:* = 1;
         var _loc9_:* = _loc11_;
         _loc10_ = Number(_loc10_ + _loc9_);
         _loc2_ = _loc10_;
         _loc10_ = _loc2_;
         _loc11_ = -0.00865636300295591;
         _loc9_ = _loc11_;
         _loc9_ = Number(_loc8_ * _loc9_);
         _loc11_ = _loc9_;
         _loc9_ = _loc11_;
         var _loc14_:* = -0.0427434220910072;
         var _loc12_:* = _loc14_;
         _loc9_ = Number(_loc9_ + _loc12_);
         _loc11_ = _loc9_;
         _loc9_ = _loc11_;
         _loc9_ = Number(_loc9_ * _loc8_);
         _loc11_ = _loc9_;
         _loc9_ = _loc11_;
         _loc14_ = 0.166665866971016;
         _loc12_ = _loc14_;
         _loc9_ = Number(_loc9_ + _loc12_);
         _loc11_ = _loc9_;
         _loc9_ = _loc11_;
         _loc8_ = Number(_loc9_ * _loc8_);
         _loc3_ = _loc8_;
         _loc8_ = _loc3_;
         _loc8_ = Number(_loc8_ / _loc10_);
         _loc3_ = _loc8_;
         _loc8_ = _loc3_;
         _loc8_ = Number(_loc8_ * _loc7_);
         _loc3_ = _loc8_;
         _loc8_ = _loc3_;
         _loc8_ = Number(_loc8_ + _loc7_);
         _loc1_ = _loc8_;
      }
      else
      {
         si32(_loc13_,_loc6_ - 8);
         _loc8_ = 1;
         _loc10_ = Number(_loc8_ - lf32(_loc6_ - 8));
         _loc11_ = 0.5;
         _loc10_ = Number(_loc10_ * _loc11_);
         _loc10_ = _loc10_;
         _loc4_ = int(_loc4_ - 16);
         sf64(_loc10_,_loc4_);
         _loc11_ = -0.00865636300295591;
         _loc9_ = Number(_loc10_ * _loc11_);
         _loc11_ = _loc9_;
         _loc14_ = -0.0427434220910072;
         _loc9_ = Number(_loc11_ + _loc14_);
         _loc11_ = _loc9_;
         _loc9_ = _loc11_;
         _loc9_ = Number(_loc9_ * _loc10_);
         _loc11_ = _loc9_;
         _loc14_ = 0.166665866971016;
         _loc9_ = Number(_loc11_ + _loc14_);
         _loc11_ = _loc9_;
         _loc9_ = _loc11_;
         _loc9_ = Number(_loc9_ * _loc10_);
         _loc11_ = _loc9_;
         _loc14_ = -0.706629633903503;
         _loc10_ = Number(_loc10_ * _loc14_);
         _loc10_ = _loc10_;
         _loc8_ = Number(_loc10_ + _loc8_);
         _loc8_ = Number(_loc11_ / _loc8_);
         ESP = _loc4_;
         F_sqrt();
         _loc4_ = int(_loc4_ + 16);
         _loc8_ = Number(st0);
         _loc10_ = Number(_loc8_ * _loc8_);
         _loc8_ = Number(_loc10_ + _loc8_);
         _loc8_ = Number(_loc8_ * -2);
         _loc8_ = Number(_loc8_ + 1.5707963267949);
         _loc1_ = _loc8_;
         if(_loc5_ <= 0)
         {
            _loc8_ = _loc1_;
            _loc8_ = Number(-_loc8_);
            _loc1_ = _loc8_;
         }
      }
      st0 = _loc1_;
      _loc4_ = _loc6_;
      ESP = _loc4_;
   }
}
