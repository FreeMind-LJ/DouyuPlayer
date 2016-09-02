package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libcHack_2E_o_3A_1893F4CD_2D_7665_2D_4444_2D_96C7_2D_3F371B8BE323.*;
   import avm2.intrinsics.memory.li8;
   
   public function F_avm2_ui_thunk() : void
   {
      var _loc6_:* = 0;
      var _loc30_:* = 0;
      var _loc31_:* = 0;
      var _loc15_:* = 0;
      var _loc21_:int = 0;
      var _loc24_:int = 0;
      var _loc16_:int = 0;
      var _loc8_:int = 0;
      var _loc12_:int = 0;
      var _loc20_:* = 0;
      var _loc25_:int = 0;
      var _loc18_:int = 0;
      var _loc11_:int = 0;
      var _loc5_:int = 0;
      var _loc26_:int = 0;
      var _loc22_:int = 0;
      var _loc23_:* = 0;
      var _loc14_:int = 0;
      var _loc13_:* = 0;
      var _loc17_:* = 0;
      var _loc10_:int = 0;
      var _loc7_:int = 0;
      var _loc4_:* = 0;
      var _loc3_:int = 0;
      var _loc27_:* = 0;
      var _loc2_:* = int(ESP);
      _loc6_ = _loc2_;
      _loc2_ = int(_loc2_ - 32);
      _loc15_ = li32(_sUITID_2E_4001);
      _loc31_ = li32(_loc6_ + 4);
      _loc30_ = li32(_loc6_);
      if(_loc15_ == -2)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(-1,_loc2_);
         ESP = _loc2_;
         F_uiThreadIdRaw();
         _loc2_ = int(_loc2_ + 16);
         var _loc29_:* = int(eax);
         si32(_loc29_,_sUITID_2E_4001);
         if(_loc29_ >= 0)
         {
            si8(1,_sIsThreaded_2E_b);
            addr116:
            var _loc28_:* = li32(_sUITID_2E_4001);
            _loc29_ = int(realThreadId);
            addr856:
            if(_loc29_ != _loc28_)
            {
               _loc29_ = li8(_sRegged_2E_5947_2E_b);
               if(_loc29_ == 0)
               {
                  _loc2_ = int(_loc2_ - 16);
                  _loc29_ = int(int(threadId) + 8);
                  si32(_loc29_,_loc2_ + 4);
                  si32(_sThunkTickLock,_loc2_);
                  ESP = _loc2_;
                  F_avm2_lock_id();
                  _loc2_ = int(_loc2_ + 16);
                  _loc29_ = li8(_sRegged_2E_5947_2E_b);
                  if(_loc29_ == 0)
                  {
                     _loc29_ = li32(_flascc_uiTickProc);
                     si32(_loc29_,_sOldUiTickProc);
                     _loc2_ = int(_loc2_ - 16);
                     si32(_uiThunkTickProc,_loc2_ + 8);
                     si32(_loc29_,_loc2_ + 4);
                     si32(_flascc_uiTickProc,_loc2_);
                     ESP = _loc2_;
                     F_avm2_cmpSwapUns();
                     _loc2_ = int(_loc2_ + 16);
                     _loc26_ = eax;
                     if(_loc26_ != li32(_sOldUiTickProc))
                     {
                        do
                        {
                           si32(_loc26_,_sOldUiTickProc);
                           _loc2_ = int(_loc2_ - 16);
                           si32(_uiThunkTickProc,_loc2_ + 8);
                           si32(_loc26_,_loc2_ + 4);
                           si32(_flascc_uiTickProc,_loc2_);
                           ESP = _loc2_;
                           F_avm2_cmpSwapUns();
                           _loc2_ = int(_loc2_ + 16);
                           _loc26_ = eax;
                           _loc29_ = li32(_sOldUiTickProc);
                        }
                        while(_loc26_ != _loc29_);
                        
                     }
                     si8(1,_sRegged_2E_5947_2E_b);
                  }
                  _loc2_ = int(_loc2_ - 16);
                  si32(_sThunkTickLock,_loc2_);
                  ESP = _loc2_;
                  F_avm2_unlock();
                  _loc2_ = int(_loc2_ + 16);
               }
               _loc25_ = realThreadId;
               _loc24_ = _loc25_ + 1;
               while(true)
               {
                  _loc28_ = int(threadId);
                  _loc29_ = int(tcbp);
                  si32(0,_loc6_ - 24);
                  _loc12_ = _loc6_ - 24;
                  _loc20_ = _loc12_ | 4;
                  si32(0,_loc20_);
                  si32(0,_loc6_ - 16);
                  si32(0,_loc6_ - 12);
                  si32(0,_loc6_ - 8);
                  si32(0,_loc6_ - 4);
                  si32(_loc30_,_loc6_ - 24);
                  si32(_loc31_,_loc20_);
                  si32(_loc28_,_loc6_ - 16);
                  si32(_loc29_,_loc6_ - 12);
                  _loc21_ = tcbp;
                  _loc22_ = _sLock_2E_3947;
                  if(_loc21_ != -1)
                  {
                     _loc22_ = _loc21_ + 16;
                  }
                  _loc23_ = li32(_sLock_2E_3947);
                  if(_loc23_ == -1)
                  {
                     si32(_loc24_,_sLock_2E_3947);
                     _loc23_ = _loc24_;
                  }
                  if(_loc23_ != 0)
                  {
                     if(_loc22_ != _sLock_2E_3947)
                     {
                        si32(_loc23_,_loc22_);
                        si32(0,_sLock_2E_3947);
                     }
                  }
                  _loc16_ = _loc25_ + 1;
                  _loc29_ = li32(_loc22_);
                  _loc29_ = _loc29_ & 2147483647;
                  _loc17_ = 0;
                  if(_loc29_ == _loc16_)
                  {
                     _loc18_ = tcbp;
                     if(_loc18_ == -1)
                     {
                        li32(_sCounter_2E_3962);
                        _loc14_ = _sCounter_2E_3962;
                     }
                     else
                     {
                        _loc14_ = _loc18_ + 20;
                        _loc29_ = li32(_sCounter_2E_3962);
                        if(_loc29_ != 0)
                        {
                           if(_loc14_ != _sCounter_2E_3962)
                           {
                              _loc29_ = li32(_sCounter_2E_3962);
                              si32(_loc29_,_loc14_);
                              si32(0,_sCounter_2E_3962);
                           }
                        }
                     }
                     _loc13_ = li32(_loc14_);
                     _loc17_ = _loc16_;
                  }
                  _loc29_ = int(threadId);
                  _loc2_ = int(_loc2_ - 16);
                  _loc29_ = int(_loc29_ + 8);
                  si32(_loc29_,_loc2_ + 4);
                  si32(_sThunkTickLock,_loc2_);
                  ESP = _loc2_;
                  F_avm2_lock_id();
                  _loc2_ = int(_loc2_ + 16);
                  _loc29_ = li32(_sThunkTickHead);
                  si32(_loc29_,_loc6_ - 4);
                  si32(_loc12_,_sThunkTickHead);
                  _loc2_ = int(_loc2_ - 16);
                  si32(_sThunkTickHead,_loc2_);
                  ESP = _loc2_;
                  F_avm2_wake_one();
                  _loc2_ = int(_loc2_ + 16);
                  if(_loc17_ == 0)
                  {
                     _loc2_ = int(_loc2_ - 16);
                     si32(0,_loc2_ + 8);
                     si32(_sThunkTickLock,_loc2_ + 4);
                     si32(_loc12_,_loc2_);
                     ESP = _loc2_;
                     F_avm2_msleep();
                     _loc2_ = int(_loc2_ + 16);
                  }
                  else
                  {
                     _loc11_ = tcbp;
                     if(_loc11_ == -1)
                     {
                        li32(_sCounter_2E_3962);
                        _loc10_ = _sCounter_2E_3962;
                     }
                     else
                     {
                        _loc10_ = _loc11_ + 20;
                        _loc29_ = li32(_sCounter_2E_3962);
                        if(_loc29_ != 0)
                        {
                           if(_loc10_ != _sCounter_2E_3962)
                           {
                              _loc29_ = li32(_sCounter_2E_3962);
                              si32(_loc29_,_loc10_);
                              si32(0,_sCounter_2E_3962);
                           }
                        }
                     }
                     si32(0,_loc10_);
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc22_,_loc2_);
                     ESP = _loc2_;
                     F_avm2_unlock();
                     _loc2_ = int(_loc2_ + 16);
                     _loc2_ = int(_loc2_ - 16);
                     si32(0,_loc2_ + 8);
                     si32(_sThunkTickLock,_loc2_ + 4);
                     si32(_loc12_,_loc2_);
                     ESP = _loc2_;
                     F_avm2_msleep();
                     _loc2_ = int(_loc2_ + 16);
                     if(_loc17_ != 0)
                     {
                        _loc7_ = _sLock_2E_3947;
                        _loc8_ = tcbp;
                        if(_loc8_ != -1)
                        {
                           _loc7_ = _loc8_ + 16;
                        }
                        _loc4_ = li32(_sLock_2E_3947);
                        if(_loc4_ == -1)
                        {
                           _loc4_ = int(_loc25_ + 1);
                           si32(_loc4_,_sLock_2E_3947);
                        }
                        if(_loc4_ != 0)
                        {
                           if(_loc7_ != _sLock_2E_3947)
                           {
                              si32(_loc4_,_loc7_);
                              si32(0,_sLock_2E_3947);
                           }
                        }
                        _loc2_ = int(_loc2_ - 16);
                        si32(_loc17_,_loc2_ + 4);
                        si32(_loc7_,_loc2_);
                        ESP = _loc2_;
                        F_avm2_lock_id();
                        _loc2_ = int(_loc2_ + 16);
                        _loc5_ = tcbp;
                        if(_loc5_ == -1)
                        {
                           li32(_sCounter_2E_3962);
                           _loc3_ = _sCounter_2E_3962;
                        }
                        else
                        {
                           _loc3_ = _loc5_ + 20;
                           _loc29_ = li32(_sCounter_2E_3962);
                           if(_loc29_ != 0)
                           {
                              if(_loc3_ != _sCounter_2E_3962)
                              {
                                 _loc29_ = li32(_sCounter_2E_3962);
                                 si32(_loc29_,_loc3_);
                                 si32(0,_sCounter_2E_3962);
                              }
                           }
                        }
                        si32(_loc13_,_loc3_);
                     }
                  }
                  _loc2_ = int(_loc2_ - 16);
                  si32(_sThunkTickLock,_loc2_);
                  ESP = _loc2_;
                  F_avm2_unlock();
                  _loc2_ = int(_loc2_ + 16);
                  _loc29_ = li32(_loc6_ - 8);
                  if(_loc29_ == 0)
                  {
                     break;
                  }
                  _loc2_ = int(_loc2_ - 16);
                  si32(5,_loc2_ + 4);
                  si32(_sEnterFrame,_loc2_);
                  ESP = _loc2_;
                  F_avm2_self_msleep();
                  _loc2_ = int(_loc2_ + 16);
               }
               _loc27_ = li32(_loc20_);
            }
            eax = _loc27_;
            _loc2_ = _loc6_;
            ESP = _loc2_;
            return;
         }
      }
      else if(_loc15_ >= 0)
      {
         §§goto(addr116);
      }
      _loc2_ = int(_loc2_ - 16);
      si32(_loc31_,_loc2_);
      ESP = _loc2_;
      ptr2fun[_loc30_]();
      _loc2_ = int(_loc2_ + 16);
      _loc27_ = int(eax);
      §§goto(addr856);
   }
}
