package sample.xx
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.li32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F._pio2_lo1;
   import avm2.intrinsics.memory.si32;
   
   public function F_acosf() : void
   {
      var _loc7_:* = 0;
      var _loc2_:* = NaN;
      var _loc6_:* = 0;
      var _loc19_:* = 0;
      var _loc5_:* = int(ESP);
      _loc7_ = _loc5_;
      _loc5_ = int(_loc5_ - 12);
      _loc2_ = lf32(_loc7_);
      sf32(_loc2_,_loc7_ - 4);
      _loc6_ = li32(_loc7_ - 4);
      _loc19_ = _loc6_ & 2147483647;
      if(uint(_loc19_) >= 1065353216)
      {
         if(_loc19_ == 1065353216)
         {
            _loc2_ = 0;
            if(_loc6_ <= 0)
            {
               var _loc4_:* = 3.14159250259399;
               var _loc9_:* = lf32(_pio2_lo1);
               _loc9_ = Number(_loc9_ + _loc9_);
               _loc9_ = _loc9_;
               var _loc10_:* = Number(_loc9_ + _loc4_);
               _loc2_ = _loc10_;
            }
         }
         else
         {
            _loc10_ = _loc2_;
            _loc10_ = Number(_loc10_ - _loc10_);
            _loc4_ = _loc10_;
            _loc10_ = _loc4_;
            _loc10_ = Number(_loc10_ / _loc10_);
            _loc2_ = _loc10_;
         }
      }
      else if(uint(_loc19_) <= 1056964607)
      {
         if(uint(_loc19_) <= 847249408)
         {
            _loc4_ = 1.570796251297;
            _loc10_ = lf32(_pio2_lo1);
            _loc10_ = Number(_loc10_ + _loc4_);
            _loc2_ = _loc10_;
         }
         else
         {
            _loc4_ = -0.706629633903503;
            _loc10_ = _loc2_;
            _loc9_ = Number(_loc10_ * _loc10_);
            _loc9_ = _loc9_;
            var _loc14_:* = Number(_loc9_ * _loc4_);
            var _loc17_:* = _loc14_;
            var _loc20_:* = 1;
            _loc14_ = Number(_loc17_ + _loc20_);
            _loc17_ = _loc14_;
            _loc20_ = -0.00865636300295591;
            var _loc12_:* = Number(_loc9_ * _loc20_);
            _loc20_ = _loc12_;
            var _loc11_:* = -0.0427434220910072;
            _loc12_ = Number(_loc20_ + _loc11_);
            _loc20_ = _loc12_;
            _loc12_ = _loc20_;
            _loc12_ = Number(_loc12_ * _loc9_);
            _loc20_ = _loc12_;
            _loc11_ = 0.166665866971016;
            _loc12_ = Number(_loc20_ + _loc11_);
            _loc20_ = _loc12_;
            _loc12_ = _loc20_;
            _loc9_ = Number(_loc12_ * _loc9_);
            _loc9_ = _loc9_;
            _loc9_ = Number(_loc9_ / _loc17_);
            _loc9_ = _loc9_;
            _loc9_ = Number(_loc9_ * _loc10_);
            _loc9_ = lf32(_pio2_lo1);
            _loc9_ = Number(_loc9_ - _loc9_);
            _loc10_ = Number(_loc10_ - _loc9_);
            _loc4_ = _loc10_;
            _loc9_ = 1.570796251297;
            _loc10_ = Number(_loc9_ - _loc4_);
            _loc2_ = _loc10_;
         }
      }
      else if(_loc6_ <= -1)
      {
         _loc4_ = 1;
         _loc10_ = _loc4_;
         _loc9_ = Number(_loc2_ + _loc10_);
         _loc17_ = 0.5;
         _loc9_ = Number(_loc9_ * _loc17_);
         _loc9_ = _loc9_;
         _loc17_ = -0.00865636300295591;
         _loc14_ = Number(_loc9_ * _loc17_);
         _loc17_ = _loc14_;
         _loc20_ = -0.0427434220910072;
         _loc14_ = Number(_loc17_ + _loc20_);
         _loc17_ = _loc14_;
         _loc14_ = _loc17_;
         _loc14_ = Number(_loc14_ * _loc9_);
         _loc17_ = _loc14_;
         _loc20_ = 0.166665866971016;
         _loc14_ = Number(_loc17_ + _loc20_);
         _loc17_ = _loc14_;
         _loc14_ = _loc17_;
         _loc14_ = Number(_loc14_ * _loc9_);
         _loc17_ = _loc14_;
         _loc20_ = -0.706629633903503;
         _loc12_ = Number(_loc9_ * _loc20_);
         _loc20_ = _loc12_;
         _loc12_ = _loc20_;
         _loc10_ = Number(_loc12_ + _loc10_);
         _loc4_ = _loc10_;
         _loc10_ = Number(_loc17_ / _loc4_);
         _loc4_ = _loc10_;
         _loc10_ = Number(Math.sqrt(_loc9_));
         _loc4_ = _loc10_;
         _loc10_ = _loc4_;
         _loc9_ = Number(_loc4_ * _loc10_);
         _loc9_ = Number(_loc9_ - lf32(_pio2_lo1));
         _loc10_ = Number(_loc10_ + _loc9_);
         _loc4_ = _loc10_;
         _loc10_ = Number(_loc4_ * -2);
         _loc4_ = _loc10_;
         _loc10_ = Number(_loc4_ + 3.14159250259399);
         _loc2_ = _loc10_;
      }
      else
      {
         _loc4_ = 1;
         _loc10_ = _loc4_;
         _loc9_ = Number(_loc10_ - _loc2_);
         _loc17_ = 0.5;
         _loc9_ = Number(_loc9_ * _loc17_);
         _loc12_ = _loc9_;
         _loc9_ = Number(Math.sqrt(_loc12_));
         sf32(_loc9_,_loc7_ - 8);
         var _loc16_:* = li32(_loc7_ - 8);
         _loc16_ = _loc16_ & -4096;
         si32(_loc16_,_loc7_ - 12);
         _loc14_ = _loc9_;
         _loc9_ = lf32(_loc7_ - 12);
         var _loc18_:Number = _loc14_ + _loc9_;
         _loc11_ = _loc18_;
         var _loc15_:* = Number(_loc9_ * _loc9_);
         var _loc13_:* = _loc15_;
         _loc15_ = Number(_loc12_ - _loc13_);
         _loc13_ = _loc15_;
         _loc15_ = _loc13_;
         _loc18_ = _loc15_ / _loc11_;
         _loc11_ = _loc18_;
         _loc13_ = -0.00865636300295591;
         _loc15_ = Number(_loc12_ * _loc13_);
         _loc13_ = _loc15_;
         var _loc8_:* = -0.0427434220910072;
         _loc15_ = Number(_loc13_ + _loc8_);
         _loc13_ = _loc15_;
         _loc15_ = _loc13_;
         _loc15_ = Number(_loc15_ * _loc12_);
         _loc13_ = _loc15_;
         _loc8_ = 0.166665866971016;
         _loc15_ = Number(_loc13_ + _loc8_);
         _loc13_ = _loc15_;
         _loc15_ = _loc13_;
         _loc15_ = Number(_loc15_ * _loc12_);
         _loc13_ = _loc15_;
         _loc8_ = -0.706629633903503;
         _loc12_ = Number(_loc12_ * _loc8_);
         _loc20_ = _loc12_;
         _loc12_ = _loc20_;
         _loc10_ = Number(_loc12_ + _loc10_);
         _loc4_ = _loc10_;
         _loc10_ = Number(_loc13_ / _loc4_);
         _loc4_ = _loc10_;
         _loc10_ = _loc4_;
         _loc10_ = Number(_loc10_ * _loc14_);
         _loc4_ = _loc10_;
         _loc10_ = _loc4_;
         _loc10_ = Number(_loc10_ + _loc11_);
         _loc4_ = _loc10_;
         _loc10_ = Number(_loc9_ + _loc4_);
         _loc4_ = _loc10_;
         _loc10_ = _loc4_;
         _loc10_ = Number(_loc10_ + _loc10_);
         _loc2_ = _loc10_;
      }
      st0 = _loc2_;
      _loc5_ = _loc7_;
      ESP = _loc5_;
   }
}
