package sample.xx
{
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libcHack_2E_o_3A_1893F4CD_2D_7665_2D_4444_2D_96C7_2D_3F371B8BE323.*;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   
   public function F_avm2_thr_impersonate() : void
   {
      var _loc3_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc10_:* = 0;
      var _loc6_:int = 0;
      var _loc4_:* = 0;
      var _loc9_:* = 0;
      var _loc11_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      ESP = _loc2_;
      F_ensureSelfThrEntry();
      _loc1_ = int(threadId);
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = int(_loc1_ + 8);
      si32(_loc1_,_loc2_ + 4);
      si32(_sThreadListMtx,_loc2_);
      ESP = _loc2_;
      F_avm2_lock_id();
      _loc2_ = int(_loc2_ + 16);
      _loc1_ = li32(_loc3_);
      _loc11_ = _loc1_ + -8;
      _loc10_ = int(_sThreadListHead);
      _loc9_ = li32(_loc3_ + 8);
      _loc8_ = li32(_loc3_ + 4);
      while(true)
      {
         _loc10_ = li32(_loc10_);
         if(_loc10_ != 0)
         {
            if(li32(_loc10_ + 8) == _loc11_)
            {
               _loc7_ = li32(_loc10_ + 4);
               _loc6_ = _sLock_2E_3947;
               _loc10_ = int(tcbp);
               if(_loc10_ != -1)
               {
                  _loc6_ = _loc10_ + 16;
               }
               _loc10_ = li32(_sLock_2E_3947);
               if(_loc10_ == -1)
               {
                  _loc10_ = int(int(realThreadId) + 1);
                  si32(_loc10_,_sLock_2E_3947);
               }
               if(_loc10_ != 0)
               {
                  if(_loc6_ != _sLock_2E_3947)
                  {
                     si32(_loc10_,_loc6_);
                     si32(0,_sLock_2E_3947);
                  }
               }
               _loc2_ = int(_loc2_ - 16);
               si32(_sThreadListMtx,_loc2_);
               ESP = _loc2_;
               F_avm2_unlock();
               _loc2_ = int(_loc2_ + 16);
               _loc1_ = int(realThreadId);
               _loc5_ = int(_loc1_ + 1);
               _loc1_ = li32(_loc6_);
               _loc1_ = _loc1_ & 2147483647;
               if(_loc1_ != _loc5_)
               {
                  _loc2_ = int(_loc2_ - 32);
                  si32(0,_loc2_ + 16);
                  si32(_loc9_,_loc2_ + 12);
                  si32(_loc8_,_loc2_ + 8);
                  si32(_loc7_,_loc2_ + 4);
                  si32(_loc11_,_loc2_);
                  ESP = _loc2_;
                  F_thrImpersonate();
                  _loc2_ = int(_loc2_ + 32);
                  _loc11_ = eax;
                  break;
               }
               _loc10_ = int(tcbp);
               if(_loc10_ == -1)
               {
                  _loc10_ = li32(_sCounter_2E_3962);
                  _loc10_ = int(_sCounter_2E_3962);
               }
               else
               {
                  _loc10_ = int(_loc10_ + 20);
                  if(li32(_sCounter_2E_3962) != 0)
                  {
                     if(_loc10_ != _sCounter_2E_3962)
                     {
                        si32(li32(_sCounter_2E_3962),_loc10_);
                        si32(0,_sCounter_2E_3962);
                     }
                  }
               }
               _loc10_ = li32(_loc10_);
               _loc4_ = int(tcbp);
               if(_loc4_ == -1)
               {
                  _loc4_ = li32(_sCounter_2E_3962);
                  _loc4_ = int(_sCounter_2E_3962);
               }
               else
               {
                  _loc4_ = int(_loc4_ + 20);
                  if(li32(_sCounter_2E_3962) != 0)
                  {
                     if(_loc4_ != _sCounter_2E_3962)
                     {
                        si32(li32(_sCounter_2E_3962),_loc4_);
                        si32(0,_sCounter_2E_3962);
                     }
                  }
               }
               si32(0,_loc4_);
               _loc2_ = int(_loc2_ - 16);
               si32(_loc6_,_loc2_);
               ESP = _loc2_;
               F_avm2_unlock();
               _loc2_ = int(_loc2_ + 16);
               _loc2_ = int(_loc2_ - 32);
               si32(0,_loc2_ + 16);
               si32(_loc9_,_loc2_ + 12);
               si32(_loc8_,_loc2_ + 8);
               si32(_loc7_,_loc2_ + 4);
               si32(_loc11_,_loc2_);
               ESP = _loc2_;
               F_thrImpersonate();
               _loc2_ = int(_loc2_ + 32);
               _loc11_ = eax;
               if(_loc5_ != 0)
               {
                  _loc9_ = int(_sLock_2E_3947);
                  _loc8_ = int(tcbp);
                  if(_loc8_ != -1)
                  {
                     _loc9_ = int(_loc8_ + 16);
                  }
                  _loc8_ = li32(_sLock_2E_3947);
                  if(_loc8_ == -1)
                  {
                     _loc8_ = int(int(realThreadId) + 1);
                     si32(_loc8_,_sLock_2E_3947);
                  }
                  if(_loc8_ != 0)
                  {
                     if(_loc9_ != _sLock_2E_3947)
                     {
                        si32(_loc8_,_loc9_);
                        si32(0,_sLock_2E_3947);
                     }
                  }
                  _loc2_ = int(_loc2_ - 16);
                  si32(_loc5_,_loc2_ + 4);
                  si32(_loc9_,_loc2_);
                  ESP = _loc2_;
                  F_avm2_lock_id();
                  _loc2_ = int(_loc2_ + 16);
                  _loc5_ = int(tcbp);
                  if(_loc5_ == -1)
                  {
                     _loc5_ = li32(_sCounter_2E_3962);
                     _loc5_ = int(_sCounter_2E_3962);
                  }
                  else
                  {
                     _loc5_ = int(_loc5_ + 20);
                     if(li32(_sCounter_2E_3962) != 0)
                     {
                        if(_loc5_ != _sCounter_2E_3962)
                        {
                           si32(li32(_sCounter_2E_3962),_loc5_);
                           si32(0,_sCounter_2E_3962);
                        }
                     }
                  }
                  si32(_loc10_,_loc5_);
                  break;
               }
               break;
            }
            continue;
         }
         _loc2_ = int(_loc2_ - 16);
         si32(_sThreadListMtx,_loc2_);
         ESP = _loc2_;
         F_avm2_unlock();
         _loc2_ = int(_loc2_ + 16);
         _loc11_ = 0;
         break;
      }
      eax = _loc11_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
