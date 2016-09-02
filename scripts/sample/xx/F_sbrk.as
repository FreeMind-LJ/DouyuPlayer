package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libcHack_2E_o_3A_1893F4CD_2D_7665_2D_4444_2D_96C7_2D_3F371B8BE323.*;
   import avm2.intrinsics.memory.si32;
   
   public function F_sbrk() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      if(_loc1_ == 0)
      {
         _loc5_ = ram.length;
      }
      else
      {
         var _loc4_:int = _loc1_ + 4095;
         _loc5_ = sbrk(_loc4_ & -4096,4096);
      }
      if(_loc5_ == -1)
      {
         ESP = _loc2_;
         F___error();
         si32(12,int(eax));
      }
      eax = _loc5_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
