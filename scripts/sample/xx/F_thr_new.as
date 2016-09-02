package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libcHack_2E_o_3A_1893F4CD_2D_7665_2D_4444_2D_96C7_2D_3F371B8BE323.*;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public function F_thr_new() : void
   {
      var _loc5_:* = 0;
      var _loc30_:* = 0;
      var _loc27_:int = 0;
      var _loc24_:int = 0;
      var _loc20_:int = 0;
      var _loc17_:int = 0;
      var _loc11_:* = 0;
      var _loc4_:* = 0;
      var _loc1_:* = 0;
      var _loc29_:int = 0;
      var _loc21_:int = 0;
      var _loc19_:int = 0;
      var _loc8_:int = 0;
      var _loc26_:int = 0;
      var _loc25_:int = 0;
      var _loc12_:* = 0;
      var _loc23_:int = 0;
      var _loc16_:int = 0;
      var _loc18_:* = 0;
      var _loc13_:int = 0;
      var _loc6_:* = 0;
      var _loc9_:int = 0;
      var _loc31_:int = 0;
      var _loc2_:* = int(ESP);
      _loc5_ = _loc2_;
      var _loc15_:* = li32(_loc5_ + 4);
      if(_loc15_ != 52)
      {
         ESP = _loc2_;
         F___error();
         si32(22,int(eax));
         _loc31_ = -1;
      }
      else
      {
         _loc30_ = li32(_loc5_);
         _loc15_ = li32(_loc30_ + 32);
         _loc15_ = _loc15_ & -3;
         if(_loc15_ != 0)
         {
            ESP = _loc2_;
            F___error();
            si32(22,int(eax));
            _loc31_ = -1;
         }
         else
         {
            _loc15_ = li32(_sTID_2E_5319);
            if(_loc15_ <= -1)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(0,_loc2_);
               ESP = _loc2_;
               F_uiThreadIdRaw();
               _loc2_ = int(_loc2_ + 16);
               _loc15_ = int(eax);
               si32(_loc15_,_sTID_2E_5319);
            }
            _loc2_ = int(_loc2_ - 16);
            si32(0,_loc2_);
            ESP = _loc2_;
            F_uiThreadESPInit();
            _loc2_ = int(_loc2_ + 16);
            _loc29_ = eax;
            var _loc28_:* = li32(_loc30_ + 12);
            _loc15_ = li32(_loc30_ + 8);
            _loc27_ = _loc15_ + _loc28_;
            _loc26_ = 1;
            if(_loc29_ == _loc27_)
            {
               _loc26_ = 0;
            }
            _loc15_ = li32(_flascc_maxWorkers);
            if(_loc15_ >= 1)
            {
               _loc15_ = _loc26_ & 1;
               if(_loc15_ != 0)
               {
                  _loc15_ = int(workerDomainClass.current.listWorkers().length);
                  if(_loc15_ >= li32(_flascc_maxWorkers))
                  {
                     ESP = _loc2_;
                     F___error();
                     si32(67,int(eax));
                     _loc31_ = -1;
                  }
               }
            }
            ESP = _loc2_;
            F_ensureSelfThrEntry();
            _loc25_ = _sLock_2E_3947;
            _loc24_ = tcbp;
            if(_loc24_ != -1)
            {
               _loc25_ = _loc24_ + 16;
            }
            _loc12_ = li32(_sLock_2E_3947);
            if(_loc12_ == -1)
            {
               _loc15_ = int(realThreadId);
               _loc12_ = int(_loc15_ + 1);
               si32(_loc12_,_sLock_2E_3947);
            }
            if(_loc12_ != 0)
            {
               if(_loc25_ != _sLock_2E_3947)
               {
                  si32(_loc12_,_loc25_);
                  si32(0,_sLock_2E_3947);
               }
            }
            _loc15_ = int(realThreadId);
            _loc20_ = _loc15_ + 1;
            _loc15_ = li32(_loc25_);
            _loc15_ = _loc15_ & 2147483647;
            if(_loc15_ != _loc20_)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_loc20_,_loc2_ + 4);
               si32(_loc25_,_loc2_);
               ESP = _loc2_;
               F_avm2_lock_id();
               _loc2_ = int(_loc2_ + 16);
            }
            _loc21_ = tcbp;
            if(_loc21_ == -1)
            {
               li32(_sCounter_2E_3962);
               _loc23_ = _sCounter_2E_3962;
            }
            else
            {
               _loc23_ = _loc21_ + 20;
               _loc15_ = li32(_sCounter_2E_3962);
               if(_loc15_ != 0)
               {
                  if(_loc23_ != _sCounter_2E_3962)
                  {
                     _loc15_ = li32(_sCounter_2E_3962);
                     si32(_loc15_,_loc23_);
                     si32(0,_sCounter_2E_3962);
                  }
               }
            }
            _loc15_ = li32(_loc23_);
            _loc15_ = int(_loc15_ + 1);
            si32(_loc15_,_loc23_);
            _loc16_ = _sLock_2E_3947;
            _loc17_ = tcbp;
            if(_loc17_ != -1)
            {
               _loc16_ = _loc17_ + 16;
            }
            _loc18_ = li32(_sLock_2E_3947);
            if(_loc18_ == -1)
            {
               _loc15_ = int(realThreadId);
               _loc18_ = int(_loc15_ + 1);
               si32(_loc18_,_sLock_2E_3947);
            }
            if(_loc18_ != 0)
            {
               if(_loc16_ != _sLock_2E_3947)
               {
                  si32(_loc18_,_loc16_);
                  si32(0,_sLock_2E_3947);
               }
            }
            _loc19_ = tcbp;
            if(_loc19_ == -1)
            {
               li32(_sCounter_2E_3962);
               _loc13_ = _sCounter_2E_3962;
            }
            else
            {
               _loc13_ = _loc19_ + 20;
               _loc15_ = li32(_sCounter_2E_3962);
               if(_loc15_ != 0)
               {
                  if(_loc13_ != _sCounter_2E_3962)
                  {
                     _loc15_ = li32(_sCounter_2E_3962);
                     si32(_loc15_,_loc13_);
                     si32(0,_sCounter_2E_3962);
                  }
               }
            }
            _loc15_ = li32(_loc13_);
            _loc15_ = int(_loc15_ + -1);
            si32(_loc15_,_loc13_);
            if(_loc15_ == 0)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_loc16_,_loc2_);
               ESP = _loc2_;
               F_avm2_unlock();
               _loc2_ = int(_loc2_ + 16);
            }
            _loc11_ = li32(_sUITID_2E_4001);
            if(_loc11_ == -2)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(-1,_loc2_);
               ESP = _loc2_;
               F_uiThreadIdRaw();
               _loc2_ = int(_loc2_ + 16);
               _loc15_ = int(eax);
               si32(_loc15_,_sUITID_2E_4001);
               if(_loc15_ >= 0)
               {
                  si8(1,_sIsThreaded_2E_b);
                  addr552:
               }
            }
            else if(_loc11_ >= 0)
            {
               §§goto(addr552);
            }
            _loc2_ = int(_loc2_ - 16);
            si32(12,_loc2_);
            ESP = _loc2_;
            F_malloc();
            _loc2_ = int(_loc2_ + 16);
            _loc8_ = eax;
            if(_loc29_ == _loc27_)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(-1,_loc2_);
               ESP = _loc2_;
               F_uiThreadIdRaw();
               _loc2_ = int(_loc2_ + 16);
               _loc9_ = eax;
            }
            else
            {
               _loc6_ = li32(_sTID_2E_5319);
               do
               {
                  var _loc7_:* = _loc6_;
                  _loc2_ = int(_loc2_ - 16);
                  si32(_loc7_,_loc2_ + 4);
                  si32(_sTID_2E_5319,_loc2_);
                  _loc9_ = _loc7_ + 1;
                  si32(_loc9_,_loc2_ + 8);
                  ESP = _loc2_;
                  F_avm2_cmpSwapUns();
                  _loc2_ = int(_loc2_ + 16);
                  _loc6_ = int(eax);
               }
               while(_loc6_ != _loc7_);
               
            }
            si32(_loc9_,_loc8_ + 8);
            _loc15_ = li32(_loc30_ + 16);
            si32(_loc15_,_loc8_ + 4);
            _loc15_ = li32(_loc30_ + 12);
            _loc28_ = li32(_loc30_ + 8);
            _loc15_ = int(_loc28_ + _loc15_);
            var _loc3_:* = li32(_loc30_ + 4);
            _loc28_ = li32(_loc30_);
            var _loc10_:* = newThread(_loc9_,_loc15_,_thread_run,new <int>[_loc8_,_loc28_,_loc3_]);
            _loc15_ = int(threadId);
            _loc2_ = int(_loc2_ - 16);
            _loc15_ = int(_loc15_ + 8);
            si32(_loc15_,_loc2_ + 4);
            si32(_sThreadListMtx,_loc2_);
            ESP = _loc2_;
            F_avm2_lock_id();
            _loc2_ = int(_loc2_ + 16);
            _loc15_ = li32(_sThreadListHead);
            si32(_loc15_,_loc8_);
            si32(_loc8_,_sThreadListHead);
            _loc2_ = int(_loc2_ - 16);
            si32(_sThreadListMtx,_loc2_);
            ESP = _loc2_;
            F_avm2_unlock();
            _loc2_ = int(_loc2_ + 16);
            _loc4_ = li32(_loc30_ + 24);
            if(_loc4_ != 0)
            {
               _loc15_ = int(_loc9_ + 8);
               si32(_loc15_,_loc4_);
            }
            _loc1_ = li32(_loc30_ + 28);
            if(_loc1_ != 0)
            {
               _loc15_ = int(_loc9_ + 8);
               si32(_loc15_,_loc1_);
            }
            si8(1,_sIsThreaded_2E_b);
            _loc10_.start();
            _loc31_ = 0;
         }
      }
      eax = _loc31_;
      _loc2_ = _loc5_;
      ESP = _loc2_;
   }
}
