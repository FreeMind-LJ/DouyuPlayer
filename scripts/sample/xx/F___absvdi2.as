package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F.*;
   
   public function F___absvdi2() : void
   {
      var _loc3_:* = 0;
      var _loc7_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc5_:* = 0;
      var _loc8_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc8_ = _loc1_ ^ -2147483648;
      _loc7_ = li32(_loc3_);
      _loc8_ = _loc7_ | _loc8_;
      if(_loc8_ == 0)
      {
         ESP = _loc2_;
         F_abort();
      }
      _loc6_ = _loc1_ >> 31;
      _loc5_ = _loc6_ ^ _loc7_;
      _loc7_ = 1;
      if(uint(_loc5_) >= uint(_loc6_))
      {
         _loc7_ = 0;
      }
      _loc8_ = _loc6_ ^ _loc1_;
      _loc8_ = int(_loc8_ - _loc6_);
      _loc8_ = int(_loc8_ - _loc7_);
      var _loc4_:int = _loc5_ - _loc6_;
      eax = _loc4_;
      edx = _loc8_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
