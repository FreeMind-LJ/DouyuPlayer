package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.sf32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F.*;
   import avm2.intrinsics.memory.sf64;
   
   public function F_csqrtf() : void
   {
      var _loc6_:* = 0;
      var _loc5_:* = 0;
      var _loc3_:* = NaN;
      var _loc2_:* = NaN;
      var _loc8_:* = NaN;
      var _loc7_:* = NaN;
      var _loc1_:* = NaN;
      var _loc11_:* = 0;
      var _loc13_:* = 0;
      var _loc4_:* = int(ESP);
      _loc6_ = _loc4_;
      _loc4_ = int(_loc4_ - 48);
      _loc5_ = li32(_loc6_);
      si32(_loc5_,_loc6_ - 4);
      var _loc14_:* = _loc6_;
      _loc14_ = _loc14_ | 4;
      _loc13_ = li32(_loc14_);
      si32(_loc13_,_loc6_ - 8);
      _loc1_ = 0;
      _loc8_ = _loc1_;
      _loc3_ = lf32(_loc6_ - 4);
      _loc7_ = _loc3_;
      _loc2_ = lf32(_loc6_ - 8);
      if(!(_loc7_ != _loc8_ | _loc7_ != _loc7_ | _loc8_ != _loc8_))
      {
         _loc11_ = 0;
         var _loc12_:* = _loc2_;
         if(_loc12_ != _loc8_)
         {
         }
         addr451:
         eax = _loc11_;
         edx = _loc13_;
         _loc4_ = _loc6_;
         ESP = _loc4_;
         return;
      }
      _loc4_ = int(_loc4_ - 16);
      sf32(_loc2_,_loc4_);
      ESP = _loc4_;
      F___isinff();
      _loc11_ = 2139095040;
      _loc4_ = int(_loc4_ + 16);
      _loc14_ = int(eax);
      if(_loc14_ == 0)
      {
         if(!(_loc7_ == _loc7_ & _loc7_ == _loc7_))
         {
            _loc12_ = _loc2_;
            _loc12_ = Number(_loc12_ - _loc12_);
            _loc12_ = _loc12_;
            _loc12_ = Number(_loc12_ / _loc12_);
            sf32(_loc12_,_loc6_ - 36);
            _loc13_ = li32(_loc6_ - 36);
            _loc11_ = _loc5_;
         }
         else
         {
            _loc4_ = int(_loc4_ - 16);
            sf32(_loc3_,_loc4_);
            ESP = _loc4_;
            F___isinff();
            _loc4_ = int(_loc4_ + 16);
            _loc14_ = int(eax);
            if(_loc14_ != 0)
            {
               _loc12_ = _loc2_;
               _loc12_ = Number(_loc12_ - _loc12_);
               sf32(_loc12_,_loc6_ - 12);
               _loc14_ = li32(_loc6_ - 12);
               _loc11_ = _loc14_ & 2147483647;
               if(_loc5_ <= -1)
               {
                  _loc14_ = _loc13_ & -2147483648;
                  _loc13_ = _loc14_ | _loc5_ & 2147483647;
               }
               else
               {
                  _loc13_ = _loc11_ | _loc13_ & -2147483648;
                  _loc11_ = _loc5_;
               }
            }
            else if(!(_loc7_ < _loc8_ | _loc7_ != _loc7_ | _loc8_ != _loc8_))
            {
               _loc4_ = int(_loc4_ - 16);
               _loc12_ = _loc2_;
               sf64(_loc12_,_loc4_ + 8);
               sf64(_loc7_,_loc4_);
               ESP = _loc4_;
               F_hypot();
               _loc4_ = int(_loc4_ + 16);
               var _loc9_:* = Number(_loc7_ + Number(st0));
               _loc4_ = int(_loc4_ - 16);
               sf64(Number(_loc9_ * 0.5),_loc4_);
               ESP = _loc4_;
               F_sqrt();
               _loc4_ = int(_loc4_ + 16);
               _loc9_ = Number(st0);
               sf32(_loc9_,_loc6_ - 16);
               _loc12_ = Number(_loc12_ / (Number(_loc9_ + _loc9_)));
               sf32(_loc12_,_loc6_ - 20);
               _loc11_ = li32(_loc6_ - 16);
               _loc13_ = li32(_loc6_ - 20);
            }
            else
            {
               _loc4_ = int(_loc4_ - 16);
               _loc12_ = _loc2_;
               sf64(_loc12_,_loc4_ + 8);
               _loc14_ = _loc13_ & 2147483647;
               si32(_loc14_,_loc6_ - 24);
               sf64(_loc7_,_loc4_);
               ESP = _loc4_;
               F_hypot();
               _loc4_ = int(_loc4_ + 16);
               _loc12_ = Number(st0);
               _loc12_ = Number(_loc12_ - _loc7_);
               _loc4_ = int(_loc4_ - 16);
               sf64(Number(_loc12_ * 0.5),_loc4_);
               ESP = _loc4_;
               F_sqrt();
               _loc4_ = int(_loc4_ + 16);
               _loc12_ = Number(st0);
               sf32(_loc12_,_loc6_ - 28);
               _loc9_ = lf32(_loc6_ - 24);
               _loc12_ = Number(_loc9_ / (Number(_loc12_ + _loc12_)));
               sf32(_loc12_,_loc6_ - 32);
               var _loc10_:* = li32(_loc6_ - 28);
               _loc10_ = _loc10_ & 2147483647;
               _loc13_ = _loc10_ | _loc13_ & -2147483648;
               _loc11_ = li32(_loc6_ - 32);
            }
         }
      }
      §§goto(addr451);
   }
}
