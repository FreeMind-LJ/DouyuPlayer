package sample.xx
{
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libcHack_2E_o_3A_1893F4CD_2D_7665_2D_4444_2D_96C7_2D_3F371B8BE323.*;
   
   public function F_avm2_msleep() : void
   {
      var _loc4_:* = 0;
      var _loc15_:* = 0;
      var _loc13_:* = 0;
      var _loc6_:int = 0;
      var _loc8_:* = 0;
      var _loc10_:* = 0;
      var _loc14_:Number = NaN;
      var _loc16_:* = NaN;
      var _loc1_:* = 0;
      var _loc5_:int = 0;
      var _loc9_:* = NaN;
      var _loc3_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc2_ = int(_loc2_ - 32);
      _loc9_ = Number(new Date().time);
      _loc3_ = 0;
      var _loc17_:* = li8(_sIsThreaded_2E_b);
      if(_loc17_ == 1)
      {
         _loc15_ = li32(_loc4_ + 4);
         _loc17_ = li32(_loc15_);
         _loc13_ = _loc17_ & 2147483647;
         si32(2,_loc4_ - 24);
         si32(li32(_loc4_),_loc4_ - 20);
         si32(_loc15_,_loc4_ - 16);
         si32(_loc13_,_loc4_ - 12);
         _loc17_ = int(threadId);
         si32(_loc17_,_loc4_ - 8);
         _loc17_ = li8(_sIsThreaded_2E_b);
         if(_loc17_ == 1)
         {
            threadArbMutexLock();
         }
         _loc17_ = li32(_loc4_ + 8);
         var _loc7_:Number = _loc17_;
         _loc14_ = _loc7_ + _loc9_;
         var _loc11_:* = li32(_sArbRequestHead);
         si32(_loc11_,_loc4_ - 32);
         _loc3_ = int(_loc4_ - 32);
         si32(_loc3_,_sArbRequestHead);
         _loc2_ = int(_loc2_ - 16);
         si32(_loc15_,_loc2_);
         ESP = _loc2_;
         F_avm2_unlock();
         _loc2_ = int(_loc2_ + 16);
         if(_loc17_ != 0)
         {
            while(true)
            {
               _loc8_ = int(_sArbRequestHead);
               if(_loc9_ < _loc14_)
               {
                  _loc8_ = int(_sArbRequestHead);
                  _loc17_ = li32(_loc4_ - 24);
                  if(_loc17_ != 0)
                  {
                     _loc17_ = li8(_sIsThreaded_2E_b);
                     if(_loc17_ == 1)
                     {
                        var _loc12_:Number = _loc14_ - _loc9_;
                        _loc6_ = _loc12_;
                        _loc16_ = -1;
                        if(_loc6_ != 0)
                        {
                           _loc16_ = Number(_loc6_);
                        }
                        _loc5_ = 1;
                        _loc9_ = Number(3000);
                        _loc1_ = _loc5_;
                        if(_loc16_ <= _loc9_)
                        {
                           _loc1_ = 0;
                        }
                        if(_loc16_ >= 0)
                        {
                           _loc5_ = 0;
                        }
                        _loc17_ = _loc5_ | _loc1_;
                        if(_loc17_ == 0)
                        {
                           _loc9_ = _loc16_;
                        }
                        ESP = _loc2_;
                        F__sync_synchronize();
                        _loc8_ = int(threadArbCondWait(_loc9_));
                        ESP = _loc2_;
                        F__sync_synchronize();
                     }
                     _loc9_ = Number(new Date().time);
                     continue;
                  }
               }
            }
         }
         else
         {
            while(true)
            {
               _loc8_ = int(_sArbRequestHead);
               _loc17_ = li32(_loc4_ - 24);
               if(_loc17_ != 0)
               {
                  _loc17_ = li8(_sIsThreaded_2E_b);
                  if(_loc17_ != 0)
                  {
                     ESP = _loc2_;
                     F__sync_synchronize();
                     _loc10_ = int(threadArbCondWait(3000));
                     ESP = _loc2_;
                     F__sync_synchronize();
                  }
                  _loc14_ = new Date().time;
                  continue;
               }
               break;
            }
         }
         while(true)
         {
            _loc10_ = _loc8_;
            _loc8_ = li32(_loc10_);
            if(_loc8_ != 0)
            {
               if(_loc8_ == _loc3_)
               {
                  _loc17_ = li32(_loc8_);
                  si32(_loc17_,_loc10_);
                  break;
               }
               continue;
            }
            break;
         }
         _loc17_ = li32(_loc4_ - 24);
         if(_loc17_ != 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_loc13_,_loc2_ + 4);
            si32(_loc15_,_loc2_);
            ESP = _loc2_;
            F_avm2_lock_id();
            _loc2_ = int(_loc2_ + 16);
         }
         _loc17_ = li8(_sIsThreaded_2E_b);
         if(_loc17_ == 1)
         {
            threadArbMutexUnlock();
         }
         _loc3_ = 1;
         _loc17_ = li32(_loc4_ - 24);
         if(_loc17_ != 0)
         {
            _loc3_ = 0;
         }
         _loc3_ = _loc3_ & 1;
      }
      eax = _loc3_;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
