package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F.*;
   
   public function F___mulvsi3() : void
   {
      var _loc3_:* = 0;
      var _loc9_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc6_:int = 0;
      var _loc5_:* = 0;
      var _loc4_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc9_ = li32(_loc3_);
      if(_loc9_ == -2147483648)
      {
         if(uint(_loc1_) >= 2)
         {
            ESP = _loc2_;
            F_abort();
         }
         addr137:
         var _loc7_:* = int(_loc1_ * _loc9_);
         eax = _loc7_;
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      if(_loc1_ == -2147483648)
      {
         if(uint(_loc9_) >= 2)
         {
            ESP = _loc2_;
            F_abort();
         }
         §§goto(addr137);
      }
      _loc8_ = _loc9_ >> 31;
      _loc7_ = _loc8_ ^ _loc9_;
      _loc6_ = _loc7_ - _loc8_;
      if(_loc6_ >= 2)
      {
         _loc5_ = _loc1_ >> 31;
         _loc7_ = _loc5_ ^ _loc1_;
         _loc4_ = _loc7_ - _loc5_;
         if(_loc4_ >= 2)
         {
            if(_loc8_ == _loc5_)
            {
               _loc7_ = int(2147483647 / _loc4_);
               if(_loc7_ < _loc6_)
               {
                  ESP = _loc2_;
                  F_abort();
               }
            }
            _loc7_ = int(0 - _loc4_);
            _loc7_ = int(-2147483648 / _loc7_);
            if(_loc7_ < _loc6_)
            {
               ESP = _loc2_;
               F_abort();
            }
         }
      }
      §§goto(addr137);
   }
}
