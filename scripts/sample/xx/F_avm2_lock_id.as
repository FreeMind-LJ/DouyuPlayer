package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libcHack_2E_o_3A_1893F4CD_2D_7665_2D_4444_2D_96C7_2D_3F371B8BE323.*;
   import avm2.intrinsics.memory.li8;
   
   public function F_avm2_lock_id() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc7_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 32);
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = li32(_loc3_ + 4);
      si32(_loc1_,_loc2_ + 8);
      si32(0,_loc2_ + 4);
      _loc7_ = li32(_loc3_);
      si32(_loc7_,_loc2_);
      ESP = _loc2_;
      F_avm2_cmpSwapUns();
      _loc2_ = int(_loc2_ + 16);
      var _loc6_:* = int(eax);
      if(_loc6_ != 0)
      {
         _loc6_ = li8(_sIsThreaded_2E_b);
         if(_loc6_ == 1)
         {
            threadArbMutexLock();
         }
         _loc5_ = li32(_loc7_);
         do
         {
            _loc4_ = _loc5_;
            _loc2_ = int(_loc2_ - 16);
            si32(_loc4_,_loc2_ + 4);
            si32(_loc7_,_loc2_);
            _loc6_ = _loc4_ | -2147483648;
            si32(_loc6_,_loc2_ + 8);
            ESP = _loc2_;
            F_avm2_cmpSwapUns();
            _loc2_ = int(_loc2_ + 16);
            _loc5_ = int(eax);
         }
         while(_loc5_ != _loc4_);
         
         if(_loc4_ == 0)
         {
            si32(_loc1_,_loc7_);
            ESP = _loc2_;
            F__sync_synchronize();
         }
         else
         {
            si32(1,_loc3_ - 24);
            si32(_loc7_,_loc3_ - 16);
            si32(_loc1_,_loc3_ - 12);
            _loc6_ = int(threadId);
            si32(_loc6_,_loc3_ - 8);
            _loc6_ = li32(_sArbRequestHead);
            si32(_loc6_,_loc3_ - 32);
            _loc4_ = int(_loc3_ - 32);
            si32(_loc4_,_sArbRequestHead);
            while(true)
            {
               _loc6_ = li8(_sIsThreaded_2E_b);
               if(_loc6_ == 1)
               {
                  ESP = _loc2_;
                  F__sync_synchronize();
                  _loc7_ = int(threadArbCondWait(3000));
                  ESP = _loc2_;
                  F__sync_synchronize();
               }
               _loc5_ = int(_sArbRequestHead);
               _loc6_ = li32(_loc3_ - 24);
               if(_loc6_ != 0)
               {
                  continue;
               }
               break;
            }
            while(true)
            {
               _loc7_ = _loc5_;
               _loc5_ = li32(_loc7_);
               if(_loc5_ != 0)
               {
                  if(_loc5_ == _loc4_)
                  {
                     _loc6_ = li32(_loc5_);
                     si32(_loc6_,_loc7_);
                     break;
                  }
                  continue;
               }
               break;
            }
         }
         _loc6_ = li8(_sIsThreaded_2E_b);
         if(_loc6_ == 1)
         {
            threadArbMutexUnlock();
         }
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
