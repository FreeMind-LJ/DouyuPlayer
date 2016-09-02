package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libcHack_2E_o_3A_1893F4CD_2D_7665_2D_4444_2D_96C7_2D_3F371B8BE323.*;
   import avm2.intrinsics.memory.si32;
   
   public function F_avm2_self_unlock() : void
   {
      var _loc3_:* = 0;
      var _loc5_:* = 0;
      var _loc1_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = _sLock_2E_3947;
      _loc5_ = int(tcbp);
      if(_loc5_ != -1)
      {
         _loc1_ = _loc5_ + 16;
      }
      _loc5_ = li32(_sLock_2E_3947);
      if(_loc5_ == -1)
      {
         var _loc4_:* = int(realThreadId);
         _loc5_ = int(_loc4_ + 1);
         si32(_loc5_,_sLock_2E_3947);
      }
      if(_loc5_ != 0)
      {
         if(_loc1_ != _sLock_2E_3947)
         {
            si32(_loc5_,_loc1_);
            si32(0,_sLock_2E_3947);
         }
      }
      _loc5_ = int(tcbp);
      if(_loc5_ == -1)
      {
         _loc5_ = li32(_sCounter_2E_3962);
         _loc5_ = int(_sCounter_2E_3962);
      }
      else
      {
         _loc5_ = int(_loc5_ + 20);
         _loc4_ = li32(_sCounter_2E_3962);
         if(_loc4_ != 0)
         {
            if(_loc5_ != _sCounter_2E_3962)
            {
               _loc4_ = li32(_sCounter_2E_3962);
               si32(_loc4_,_loc5_);
               si32(0,_sCounter_2E_3962);
            }
         }
      }
      _loc4_ = li32(_loc5_);
      _loc4_ = int(_loc4_ + -1);
      si32(_loc4_,_loc5_);
      if(_loc4_ == 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc1_,_loc2_);
         ESP = _loc2_;
         F_avm2_unlock();
         _loc2_ = int(_loc2_ + 16);
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
