package sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libcHack_2E_o_3A_1893F4CD_2D_7665_2D_4444_2D_96C7_2D_3F371B8BE323
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import sample.xx.*;
   import avm2.intrinsics.memory.si32;
   
   public function F_thrTermAuxStackShim() : void
   {
      var _loc2_:* = 0;
      var _loc23_:* = 0;
      var _loc24_:* = 0;
      var _loc25_:* = 0;
      var _loc21_:int = 0;
      var _loc19_:* = 0;
      var _loc14_:* = 0;
      var _loc11_:* = 0;
      var _loc7_:* = 0;
      var _loc4_:* = 0;
      var _loc9_:* = 0;
      var _loc6_:* = 0;
      var _loc8_:int = 0;
      var _loc3_:int = 0;
      var _loc22_:* = 0;
      var _loc15_:int = 0;
      var _loc16_:* = 0;
      var _loc10_:* = 0;
      var _loc13_:int = 0;
      var _loc20_:* = 0;
      var _loc5_:* = 0;
      var _loc18_:int = 0;
      var _loc1_:* = int(ESP);
      _loc2_ = _loc1_;
      _loc1_ = int(_loc1_ - 48);
      _loc9_ = li32(_loc2_ + 4);
      _loc25_ = li8(_loc9_ + 8);
      _loc24_ = li32(_loc9_ + 4);
      _loc23_ = li32(_loc9_);
      ESP = _loc1_;
      F_ensureSelfThrEntry();
      _loc9_ = int(threadId);
      _loc1_ = int(_loc1_ - 16);
      _loc9_ = int(_loc9_ + 8);
      si32(_loc9_,_loc1_ + 4);
      si32(_sThreadListMtx,_loc1_);
      ESP = _loc1_;
      F_avm2_lock_id();
      _loc1_ = int(_loc1_ + 16);
      _loc22_ = int(_sThreadListHead);
      _loc21_ = realThreadId;
      _loc20_ = li32(_loc2_);
      while(true)
      {
         _loc19_ = li32(_loc22_);
         if(_loc19_ == 0)
         {
            _loc1_ = int(_loc1_ - 16);
            si32(_sThreadListMtx,_loc1_);
            ESP = _loc1_;
            F_avm2_unlock();
            _loc1_ = int(_loc1_ + 16);
            _loc18_ = 0;
            break;
         }
         _loc9_ = li32(_loc19_ + 8);
         if(_loc9_ == _loc23_)
         {
            _loc6_ = _loc25_ & 255;
            if(_loc6_ != 0)
            {
               _loc9_ = li32(_loc19_);
               si32(_loc9_,_loc22_);
               _loc1_ = int(_loc1_ - 16);
               si32(_sThreadListMtx,_loc1_);
               ESP = _loc1_;
               F_avm2_unlock();
               _loc1_ = int(_loc1_ + 16);
            }
            else
            {
               _loc1_ = int(_loc1_ - 16);
               si32(_sThreadListMtx,_loc1_);
               ESP = _loc1_;
               F_avm2_unlock();
               _loc1_ = int(_loc1_ + 16);
               _loc18_ = 0;
               if(_loc19_ != 0)
               {
               }
               break;
            }
            _loc14_ = li32(_loc19_ + 4);
            _loc15_ = _sLock_2E_3947;
            if(_loc14_ != -1)
            {
               _loc15_ = _loc14_ + 16;
            }
            _loc16_ = li32(_sLock_2E_3947);
            if(_loc16_ == -1)
            {
               _loc9_ = int(realThreadId);
               _loc16_ = int(_loc9_ + 1);
               si32(_loc16_,_sLock_2E_3947);
            }
            if(_loc16_ != 0)
            {
               if(_loc15_ != _sLock_2E_3947)
               {
                  si32(_loc16_,_loc15_);
                  si32(0,_sLock_2E_3947);
               }
            }
            if(_loc21_ != _loc23_)
            {
               _loc9_ = int(realThreadId);
               var _loc17_:* = li32(_loc15_);
               _loc10_ = 0;
               if((_loc17_ & 2147483647) != int(_loc9_ + 1))
               {
               }
               addr349:
               if(_loc6_ != 0)
               {
                  _loc1_ = int(_loc1_ - 16);
                  si32(_loc19_,_loc1_);
                  ESP = _loc1_;
                  F_free();
                  _loc1_ = int(_loc1_ + 16);
               }
               if(_loc21_ != _loc23_)
               {
                  _loc1_ = int(_loc1_ - 16);
                  _loc9_ = int(int(threadId) + 8);
                  si32(_loc9_,_loc1_ + 4);
                  si32(_sThreadListMtx,_loc1_);
                  ESP = _loc1_;
                  F_avm2_lock_id();
                  _loc1_ = int(_loc1_ + 16);
                  _loc1_ = int(_loc1_ - 16);
                  _loc9_ = int(int(threadId) + 8);
                  si32(_loc9_,_loc1_ + 4);
                  si32(_skpmallocMtx,_loc1_);
                  ESP = _loc1_;
                  F_avm2_lock_id();
                  _loc1_ = int(_loc1_ + 16);
                  _loc1_ = int(_loc1_ - 16);
                  _loc9_ = int(int(threadId) + 8);
                  si32(_loc9_,_loc1_ + 4);
                  si32(_smmapMtx,_loc1_);
                  ESP = _loc1_;
                  F_avm2_lock_id();
                  _loc1_ = int(_loc1_ + 16);
                  _loc9_ = li8(_sIsThreaded_2E_b);
                  if(_loc9_ == 1)
                  {
                     threadArbMutexLock();
                  }
               }
               else
               {
                  if(_loc24_ != 0)
                  {
                     si32(1,_loc24_);
                     si32(_loc24_,_loc2_ - 48);
                     _loc8_ = _loc2_ - 48;
                     si32(3,_loc8_ | 4);
                     si32(2147483647,_loc2_ - 40);
                     si32(0,_loc2_ - 36);
                     si32(0,_loc2_ - 32);
                     _loc9_ = int(tcbp);
                     _loc7_ = li32(_loc9_ + 12);
                     _loc9_ = li32(_loc7_);
                     if(_loc9_ == 0)
                     {
                        _loc9_ = int(threadId);
                        _loc9_ = int(_loc9_ + 8);
                        si32(_loc9_,_loc7_);
                     }
                     _loc1_ = int(_loc1_ - 16);
                     si32(_loc8_,_loc1_ + 4);
                     si32(_loc7_,_loc1_);
                     ESP = _loc1_;
                     F_k_umtx_op();
                     _loc1_ = int(_loc1_ + 16);
                  }
                  if(_loc10_ != 0)
                  {
                     si32(0,_loc13_);
                  }
               }
               _loc1_ = int(_loc1_ - 16);
               si32(_loc23_,_loc1_);
               if(_loc21_ != _loc23_)
               {
                  _loc20_ = 0;
               }
               si32(_loc20_,_loc1_ + 8);
               _loc5_ = _loc10_;
               if(_loc21_ != _loc23_)
               {
                  _loc5_ = 0;
               }
               si32(_loc5_,_loc1_ + 4);
               ESP = _loc1_;
               F_workerTerm();
               _loc1_ = int(_loc1_ + 16);
               _loc9_ = li8(_sIsThreaded_2E_b);
               if(_loc9_ == 1)
               {
                  threadArbMutexUnlock();
               }
               _loc1_ = int(_loc1_ - 16);
               si32(_smmapMtx,_loc1_);
               ESP = _loc1_;
               F_avm2_unlock();
               _loc1_ = int(_loc1_ + 16);
               _loc1_ = int(_loc1_ - 16);
               si32(_sThreadListMtx,_loc1_);
               ESP = _loc1_;
               F_avm2_unlock();
               _loc1_ = int(_loc1_ + 16);
               _loc1_ = int(_loc1_ - 16);
               si32(_skpmallocMtx,_loc1_);
               ESP = _loc1_;
               F_avm2_unlock();
               _loc1_ = int(_loc1_ + 16);
               if(_loc24_ != 0)
               {
                  si32(1,_loc24_);
                  si32(_loc24_,_loc2_ - 24);
                  _loc3_ = _loc2_ - 24;
                  si32(3,_loc3_ | 4);
                  si32(2147483647,_loc2_ - 16);
                  si32(0,_loc2_ - 12);
                  si32(0,_loc2_ - 8);
                  _loc9_ = int(tcbp);
                  _loc4_ = li32(_loc9_ + 12);
                  _loc9_ = li32(_loc4_);
                  if(_loc9_ == 0)
                  {
                     _loc9_ = int(threadId);
                     _loc9_ = int(_loc9_ + 8);
                     si32(_loc9_,_loc4_);
                  }
                  _loc1_ = int(_loc1_ - 16);
                  si32(_loc3_,_loc1_ + 4);
                  si32(_loc4_,_loc1_);
                  ESP = _loc1_;
                  F_k_umtx_op();
                  _loc1_ = int(_loc1_ + 16);
               }
               _loc18_ = 1;
               if(_loc10_ != 0)
               {
                  si32(0,_loc13_);
                  _loc1_ = int(_loc1_ - 16);
                  si32(_loc10_,_loc1_);
                  ESP = _loc1_;
                  F_avm2_unlock();
                  _loc1_ = int(_loc1_ + 16);
                  _loc18_ = 1;
                  break;
               }
               break;
            }
            _loc11_ = li32(_loc19_ + 4);
            if(_loc11_ == -1)
            {
               li32(_sCounter_2E_3962);
               _loc13_ = _sCounter_2E_3962;
               _loc10_ = _loc15_;
            }
            else
            {
               _loc13_ = _loc11_ + 20;
               _loc10_ = _loc15_;
               if(li32(_sCounter_2E_3962) != 0)
               {
                  _loc10_ = _loc15_;
                  if(_loc13_ != _sCounter_2E_3962)
                  {
                     _loc9_ = li32(_sCounter_2E_3962);
                     si32(_loc9_,_loc13_);
                     si32(0,_sCounter_2E_3962);
                     _loc10_ = _loc15_;
                  }
               }
            }
            §§goto(addr349);
         }
         else
         {
            _loc22_ = _loc19_;
            continue;
         }
      }
      eax = _loc18_;
      _loc1_ = _loc2_;
      ESP = _loc1_;
   }
}
