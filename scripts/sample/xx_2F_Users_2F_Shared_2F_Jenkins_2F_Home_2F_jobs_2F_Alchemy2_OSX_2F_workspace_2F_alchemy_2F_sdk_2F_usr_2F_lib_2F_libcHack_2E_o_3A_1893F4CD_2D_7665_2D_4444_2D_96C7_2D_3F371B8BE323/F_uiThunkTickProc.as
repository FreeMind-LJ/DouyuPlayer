package sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libcHack_2E_o_3A_1893F4CD_2D_7665_2D_4444_2D_96C7_2D_3F371B8BE323
{
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   import sample.xx.*;
   
   public function F_uiThunkTickProc() : void
   {
      var _loc4_:* = 0;
      var _loc16_:* = 0;
      var _loc9_:Number = NaN;
      var _loc8_:* = 0;
      var _loc14_:* = 0;
      var _loc13_:* = 0;
      var _loc10_:* = 0;
      var _loc12_:* = 0;
      var _loc3_:int = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      si32(_sEnterFrame,_loc2_);
      ESP = _loc2_;
      F_avm2_wake();
      _loc2_ = int(_loc2_ + 16);
      _loc3_ = eax;
      _loc16_ = li32(_sOldUiTickProc);
      if(_loc16_ != 0)
      {
         ESP = _loc2_;
         ptr2fun[_loc16_]();
      }
      var _loc11_:Number = new Date().time;
      _loc9_ = _loc11_ + 5000;
      while(true)
      {
         _loc11_ = new Date().time;
         if(_loc11_ < _loc9_)
         {
            _loc2_ = int(_loc2_ - 16);
            var _loc15_:* = int(int(threadId) + 8);
            si32(_loc15_,_loc2_ + 4);
            si32(_sThunkTickLock,_loc2_);
            ESP = _loc2_;
            F_avm2_lock_id();
            _loc2_ = int(_loc2_ + 16);
            _loc14_ = li32(_sThunkTickHead);
            _loc13_ = 0;
            si32(_loc13_,_sThunkTickHead);
            _loc2_ = int(_loc2_ - 16);
            si32(_sThunkTickLock,_loc2_);
            ESP = _loc2_;
            F_avm2_unlock();
            _loc2_ = int(_loc2_ + 16);
            if(_loc14_ == 0)
            {
               if(_loc3_ != 0)
               {
                  _loc2_ = int(_loc2_ - 16);
                  _loc15_ = int(int(threadId) + 8);
                  si32(_loc15_,_loc2_ + 4);
                  si32(_sThunkTickLock,_loc2_);
                  ESP = _loc2_;
                  F_avm2_lock_id();
                  _loc2_ = int(_loc2_ + 16);
                  _loc15_ = li32(_sThunkTickHead);
                  if(_loc15_ == 0)
                  {
                     _loc2_ = int(_loc2_ - 16);
                     si32(1,_loc2_ + 8);
                     si32(_sThunkTickLock,_loc2_ + 4);
                     si32(_sThunkTickHead,_loc2_);
                     ESP = _loc2_;
                     F_avm2_msleep();
                     _loc2_ = int(_loc2_ + 16);
                  }
                  _loc2_ = int(_loc2_ - 16);
                  si32(_sThunkTickLock,_loc2_);
                  ESP = _loc2_;
                  F_avm2_unlock();
                  _loc2_ = int(_loc2_ + 16);
                  _loc3_ = 0;
                  continue;
               }
               break;
            }
            do
            {
               _loc12_ = _loc14_;
               _loc10_ = _loc13_;
               _loc14_ = li32(_loc12_ + 20);
               si32(_loc10_,_loc12_ + 20);
               _loc13_ = _loc12_;
            }
            while(_loc14_ != 0);
            
            while(true)
            {
               _loc8_ = _loc10_;
               _loc15_ = li32(_loc12_ + 8);
               var _loc7_:* = li32(_loc12_ + 12);
               var _loc1_:* = li32(_loc12_);
               var _loc5_:* = li32(_loc12_ + 4);
               _loc2_ = int(_loc2_ - 32);
               var _loc6_:int = _loc12_ + 16;
               si32(_loc6_,_loc2_ + 16);
               si32(_loc5_,_loc2_ + 12);
               si32(_loc1_,_loc2_ + 8);
               si32(_loc7_,_loc2_ + 4);
               si32(_loc15_,_loc2_);
               ESP = _loc2_;
               F_thrImpersonate();
               _loc2_ = int(_loc2_ + 32);
               _loc15_ = int(eax);
               si32(_loc15_,_loc12_ + 4);
               _loc2_ = int(_loc2_ - 16);
               si32(_loc12_,_loc2_);
               ESP = _loc2_;
               F_avm2_wake_one();
               _loc2_ = int(_loc2_ + 16);
               _loc3_ = 1;
               if(_loc8_ != 0)
               {
                  _loc10_ = li32(_loc8_ + 20);
                  _loc12_ = _loc8_;
                  continue;
               }
               break;
            }
            continue;
         }
         break;
      }
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
