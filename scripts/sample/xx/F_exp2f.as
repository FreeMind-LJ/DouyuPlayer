package sample.xx
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.li32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F._twom10061;
   import avm2.intrinsics.memory.si32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F._exp2ft;
   import avm2.intrinsics.memory.lf64;
   
   public function F_exp2f() : void
   {
      var _loc6_:* = 0;
      var _loc1_:* = NaN;
      var _loc5_:* = 0;
      var _loc19_:* = 0;
      var _loc7_:* = NaN;
      var _loc3_:* = NaN;
      var _loc4_:* = int(ESP);
      _loc6_ = _loc4_;
      _loc4_ = int(_loc4_ - 24);
      _loc1_ = lf32(_loc6_);
      sf32(_loc1_,_loc6_ - 4);
      _loc5_ = li32(_loc6_ - 4);
      _loc19_ = _loc5_ & 2147483647;
      if(uint(_loc19_) >= 1124073472)
      {
         if(uint(_loc19_) >= 2139095040)
         {
            var _loc16_:* = _loc5_ & 8388607;
            if(_loc16_ == 0)
            {
               _loc3_ = 0;
               if(_loc5_ >= 0)
               {
               }
            }
            var _loc9_:* = _loc1_;
            _loc9_ = Number(_loc9_ + _loc9_);
            _loc3_ = _loc9_;
         }
         else
         {
            _loc3_ = Number(inf);
            _loc7_ = _loc1_;
            if(_loc7_ < Number(128))
            {
               _loc9_ = Number(-150);
               if(!(_loc7_ > _loc9_ | _loc7_ != _loc7_ | _loc9_ != _loc9_))
               {
                  _loc9_ = Number(lf32(_twom10061) * lf32(_twom10061));
                  _loc3_ = _loc9_;
               }
            }
         }
         addr299:
         st0 = _loc3_;
         _loc4_ = _loc6_;
         ESP = _loc4_;
         return;
      }
      if(uint(_loc19_) <= 855638016)
      {
         var _loc17_:* = 1;
         _loc9_ = Number(_loc1_ + _loc17_);
         _loc3_ = _loc9_;
      }
      §§goto(addr299);
      _loc9_ = _loc1_;
      _loc17_ = 786432;
      var _loc14_:* = _loc17_;
      _loc14_ = Number(_loc9_ + _loc14_);
      var _loc20_:* = _loc14_;
      sf32(_loc20_,_loc6_ - 20);
      var _loc13_:* = int(_loc6_ - 16);
      _loc13_ = _loc13_ | 4;
      var _loc12_:* = li32(_loc6_ - 20);
      _loc12_ = int(_loc12_ + 8);
      var _loc8_:* = _loc12_ << 16;
      _loc8_ = int(_loc8_ + 1072693248);
      _loc8_ = _loc8_ & -1048576;
      si32(_loc8_,_loc13_);
      si32(0,_loc6_ - 16);
      _loc13_ = _loc12_ & 15;
      _loc13_ = _loc13_ << 3;
      _loc13_ = int(_exp2ft + _loc13_);
      _loc14_ = lf64(_loc13_);
      var _loc11_:* = _loc20_;
      var _loc10_:* = -786432;
      var _loc18_:* = _loc10_;
      _loc11_ = Number(_loc11_ + _loc18_);
      _loc20_ = _loc11_;
      _loc11_ = _loc20_;
      _loc9_ = Number(_loc9_ - _loc11_);
      var _loc2_:* = _loc9_;
      _loc18_ = _loc2_;
      _loc9_ = Number(_loc14_ * _loc18_);
      _loc11_ = Number(_loc18_ * _loc18_);
      _loc11_ = Number(_loc11_ * _loc9_);
      var _loc15_:Number = _loc18_ * 0.00961835496127605;
      _loc15_ = _loc15_ + 0.0555054098367691;
      _loc11_ = Number(_loc11_ * _loc15_);
      _loc18_ = Number(_loc18_ * 0.24022650718689);
      _loc18_ = Number(_loc18_ + 0.6931471824646);
      _loc9_ = Number(_loc18_ * _loc9_);
      _loc9_ = Number(_loc9_ + _loc14_);
      _loc14_ = Number(_loc9_ + _loc11_);
      _loc9_ = lf64(_loc6_ - 16);
      _loc9_ = Number(_loc14_ * _loc9_);
      _loc3_ = _loc9_;
      §§goto(addr299);
   }
}
