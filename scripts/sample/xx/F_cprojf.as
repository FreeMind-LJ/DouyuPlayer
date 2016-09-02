package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F.*;
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.sf32;
   
   public function F_cprojf() : void
   {
      var _loc5_:* = 0;
      var _loc7_:* = 0;
      var _loc2_:* = 0;
      var _loc1_:* = NaN;
      var _loc4_:* = NaN;
      var _loc3_:* = int(ESP);
      _loc5_ = _loc3_;
      _loc3_ = int(_loc3_ - 32);
      _loc3_ = int(_loc3_ - 16);
      _loc2_ = li32(_loc5_);
      si32(_loc2_,_loc3_);
      si32(_loc2_,_loc5_ - 4);
      _loc2_ = _loc5_;
      _loc2_ = _loc2_ | 4;
      _loc7_ = li32(_loc2_);
      si32(_loc7_,_loc5_ - 8);
      ESP = _loc3_;
      F___isinff();
      _loc3_ = int(_loc3_ + 16);
      _loc2_ = int(eax);
      if(_loc2_ == 0)
      {
         _loc1_ = lf32(_loc5_ - 4);
         _loc4_ = lf32(_loc5_ - 8);
         _loc3_ = int(_loc3_ - 16);
         sf32(_loc4_,_loc3_);
         ESP = _loc3_;
         F___isinff();
         _loc3_ = int(_loc3_ + 16);
         if(int(eax) != 0)
         {
         }
         addr123:
         sf32(_loc1_,_loc5_ - 16);
         sf32(_loc4_,_loc5_ - 20);
         _loc2_ = li32(_loc5_ - 16);
         var _loc6_:* = li32(_loc5_ - 20);
         eax = _loc2_;
         edx = _loc6_;
         _loc3_ = _loc5_;
         ESP = _loc3_;
         return;
      }
      _loc2_ = _loc7_ & -2147483648;
      si32(_loc2_,_loc5_ - 12);
      _loc1_ = Number(inf);
      _loc4_ = lf32(_loc5_ - 12);
      §§goto(addr123);
   }
}
