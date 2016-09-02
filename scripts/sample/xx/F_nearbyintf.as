package sample.xx
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.li32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F._TWO23;
   import avm2.intrinsics.memory.si32;
   
   public function F_nearbyintf() : void
   {
      var _loc5_:* = 0;
      var _loc1_:* = 0;
      var _loc9_:int = 0;
      var _loc10_:int = 0;
      var _loc2_:* = NaN;
      var _loc3_:* = int(ESP);
      _loc5_ = _loc3_;
      _loc3_ = int(_loc3_ - 12);
      _loc2_ = lf32(_loc5_);
      sf32(_loc2_,_loc5_ - 4);
      _loc1_ = li32(_loc5_ - 4);
      var _loc11_:* = int(_loc1_ >>> 23);
      _loc11_ = _loc11_ & 255;
      _loc10_ = _loc11_ + -127;
      if(_loc10_ <= 22)
      {
         _loc9_ = _loc1_ >>> 31;
         if(_loc10_ <= -1)
         {
            _loc11_ = _loc1_ & 2147483647;
            if(_loc11_ != 0)
            {
               _loc11_ = int(_TWO23 + (_loc9_ << 2));
               var _loc7_:* = lf32(_loc11_);
               var _loc6_:* = Number(_loc7_ + _loc2_);
               var _loc4_:* = _loc6_;
               _loc6_ = _loc4_;
               _loc7_ = Number(_loc6_ - _loc7_);
               sf32(_loc7_,_loc5_ - 8);
               var _loc8_:* = li32(_loc5_ - 8);
               _loc8_ = _loc8_ & 2147483647;
               _loc11_ = _loc8_ | _loc1_ & -2147483648;
               si32(_loc11_,_loc5_ - 12);
               _loc2_ = lf32(_loc5_ - 12);
            }
         }
         else
         {
            _loc11_ = int(_TWO23 + (_loc9_ << 2));
            _loc7_ = lf32(_loc11_);
            _loc6_ = Number(_loc7_ + _loc2_);
            _loc4_ = _loc6_;
            _loc6_ = _loc4_;
            _loc7_ = Number(_loc6_ - _loc7_);
            _loc2_ = _loc7_;
         }
      }
      else if(_loc10_ == 128)
      {
         _loc7_ = _loc2_;
         _loc7_ = Number(_loc7_ + _loc7_);
         _loc2_ = _loc7_;
      }
      st0 = _loc2_;
      _loc3_ = _loc5_;
      ESP = _loc3_;
   }
}
