package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.li32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F._Zero82;
   import avm2.intrinsics.memory.si32;
   
   public function F_modfl() : void
   {
      var _loc3_:* = 0;
      var _loc8_:* = 0;
      var _loc6_:* = 0;
      var _loc11_:* = 0;
      var _loc10_:* = 0;
      var _loc9_:* = 0;
      var _loc1_:* = 0;
      var _loc7_:* = NaN;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 24);
      _loc7_ = lf64(_loc3_);
      sf64(_loc7_,_loc3_ - 8);
      _loc1_ = int(_loc3_ - 8);
      _loc1_ = _loc1_ | 4;
      _loc11_ = li32(_loc1_);
      _loc1_ = int(_loc11_ >>> 20);
      _loc10_ = _loc1_ & 2047;
      _loc9_ = int(_loc10_ + -1023);
      _loc8_ = li32(_loc3_ + 8);
      _loc6_ = li32(_loc3_ - 8);
      if(_loc9_ <= 20)
      {
         if(_loc9_ <= -1)
         {
            var _loc5_:* = lf64(int(_Zero82 + (int((_loc11_ & -2147483648) >>> 28))));
            sf64(_loc5_,_loc8_);
         }
         else
         {
            _loc10_ = int(1043 - _loc10_);
            _loc9_ = _loc11_ & 1048575;
            if((_loc9_ & (-1 << _loc10_ ^ -1) | _loc6_) == 0)
            {
               sf64(_loc7_,_loc8_);
               _loc7_ = lf64(int(_Zero82 + (int((_loc11_ & -2147483648) >>> 28))));
            }
            else
            {
               si32(0,_loc8_);
               var _loc4_:* = int(_loc3_ - 24);
               _loc4_ = _loc4_ | 4;
               si32((int(_loc9_ >>> _loc10_) & 1048575) << _loc10_ & 1048575 | _loc11_ & -1048576,_loc4_);
               si32((int(_loc9_ >>> _loc10_) & 1048575) << _loc10_ & 1048575 | _loc11_ & -1048576,_loc8_ + 4);
               si32(0,_loc3_ - 24);
               _loc7_ = Number(_loc7_ - lf64(_loc3_ - 24));
            }
         }
      }
      else if(_loc9_ >= 52)
      {
         sf64(_loc7_,_loc8_);
         if(!(_loc7_ != _loc7_ | _loc7_ != _loc7_))
         {
            _loc7_ = lf64(int(_Zero82 + (int((_loc11_ & -2147483648) >>> 28))));
         }
      }
      else
      {
         _loc9_ = int(1075 - _loc10_);
         if((_loc6_ & (-1 << _loc9_ ^ -1)) == 0)
         {
            sf64(_loc7_,_loc8_);
            _loc7_ = lf64(int(_Zero82 + (int((_loc11_ & -2147483648) >>> 28))));
         }
         else
         {
            si32(_loc11_,int(_loc3_ - 16) | 4);
            si32(_loc11_,_loc8_ + 4);
            si32(int(_loc6_ >>> _loc9_) << _loc9_,_loc8_);
            si32(int(_loc6_ >>> _loc9_) << _loc9_,_loc3_ - 16);
            _loc7_ = Number(_loc7_ - lf64(_loc3_ - 16));
         }
      }
      st0 = _loc7_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
