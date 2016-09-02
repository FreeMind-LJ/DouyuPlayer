package sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libcHack_2E_o_3A_1893F4CD_2D_7665_2D_4444_2D_96C7_2D_3F371B8BE323
{
   import sample.xx.*;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   
   public function F_ensureSelfThrEntry() : void
   {
      var _loc3_:* = 0;
      var _loc1_:int = 0;
      var _loc6_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = threadId;
      _loc6_ = int(threadId);
      _loc2_ = int(_loc2_ - 16);
      _loc6_ = int(_loc6_ + 8);
      si32(_loc6_,_loc2_ + 4);
      si32(_sThreadListMtx,_loc2_);
      ESP = _loc2_;
      F_avm2_lock_id();
      _loc2_ = int(_loc2_ + 16);
      _loc5_ = int(_sThreadListHead);
      while(true)
      {
         _loc5_ = li32(_loc5_);
         if(_loc5_ != 0)
         {
            _loc6_ = li32(_loc5_ + 8);
            if(_loc6_ == _loc1_)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_sThreadListMtx,_loc2_);
               ESP = _loc2_;
               F_avm2_unlock();
               _loc2_ = int(_loc2_ + 16);
               break;
            }
            continue;
         }
         _loc2_ = int(_loc2_ - 16);
         si32(_sThreadListMtx,_loc2_);
         ESP = _loc2_;
         F_avm2_unlock();
         _loc2_ = int(_loc2_ + 16);
         _loc2_ = int(_loc2_ - 16);
         si32(12,_loc2_);
         ESP = _loc2_;
         F_malloc();
         _loc2_ = int(_loc2_ + 16);
         _loc6_ = int(eax);
         si32(_loc1_,_loc6_ + 8);
         var _loc4_:* = int(tcbp);
         si32(_loc4_,_loc6_ + 4);
         _loc2_ = int(_loc2_ - 16);
         _loc4_ = int(int(threadId) + 8);
         si32(_loc4_,_loc2_ + 4);
         si32(_sThreadListMtx,_loc2_);
         ESP = _loc2_;
         F_avm2_lock_id();
         _loc2_ = int(_loc2_ + 16);
         _loc4_ = li32(_sThreadListHead);
         si32(_loc4_,_loc6_);
         si32(_loc6_,_sThreadListHead);
         _loc2_ = int(_loc2_ - 16);
         si32(_sThreadListMtx,_loc2_);
         ESP = _loc2_;
         F_avm2_unlock();
         _loc2_ = int(_loc2_ + 16);
         break;
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
