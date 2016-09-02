package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F.*;
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   
   public function F_cproj() : void
   {
      var _loc3_:* = 0;
      var _loc6_:* = 0;
      var _loc1_:* = 0;
      var _loc7_:* = 0;
      var _loc5_:* = NaN;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = int(_loc3_ - 8);
      _loc1_ = _loc1_ | 4;
      _loc7_ = li32(_loc3_ + 16);
      si32(_loc7_,_loc1_);
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = li32(_loc3_ + 8);
      si32(_loc1_,_loc2_ + 4);
      _loc1_ = li32(_loc3_ + 4);
      si32(_loc1_,_loc2_);
      _loc1_ = li32(_loc3_ + 12);
      si32(_loc1_,_loc3_ - 8);
      ESP = _loc2_;
      F_isinf();
      _loc6_ = li32(_loc3_);
      _loc2_ = int(_loc2_ + 16);
      _loc1_ = int(eax);
      if(_loc1_ == 0)
      {
         _loc5_ = lf64(_loc3_ - 8);
         _loc2_ = int(_loc2_ - 16);
         sf64(_loc5_,_loc2_);
         ESP = _loc2_;
         F_isinf();
         _loc2_ = int(_loc2_ + 16);
         if(int(eax) == 0)
         {
            var _loc4_:* = lf64(_loc3_ + 4);
            sf64(_loc4_,_loc6_);
            sf64(_loc5_,_loc6_ + 8);
         }
         addr161:
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      si32(2146435072,_loc6_ + 4);
      si32(0,_loc6_);
      _loc1_ = _loc7_ & -2147483648;
      si32(_loc1_,_loc6_ + 12);
      si32(0,_loc6_ + 8);
      §§goto(addr161);
   }
}
