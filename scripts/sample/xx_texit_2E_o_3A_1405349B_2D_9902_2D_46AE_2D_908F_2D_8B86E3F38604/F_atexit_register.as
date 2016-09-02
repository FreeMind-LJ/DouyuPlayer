package sample.xx_texit_2E_o_3A_1405349B_2D_9902_2D_46AE_2D_908F_2D_8B86E3F38604
{
   import sample.xx.*;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F_atexit_register() : void
   {
      var _loc3_:* = 0;
      var _loc8_:* = 0;
      var _loc1_:* = 0;
      var _loc7_:* = 0;
      var _loc6_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(___isthreaded);
      if(_loc1_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_atexit_mutex,_loc2_);
         ESP = _loc2_;
         F__pthread_mutex_lock();
         _loc2_ = int(_loc2_ + 16);
      }
      _loc8_ = li32(_loc3_);
      _loc7_ = li32(___atexit);
      if(_loc7_ == 0)
      {
         _loc7_ = int(___atexit0_2E_2738);
         si32(_loc7_,___atexit);
         _loc6_ = li32(___atexit0_2E_2738 + 4);
      }
      else
      {
         while(true)
         {
            _loc6_ = li32(_loc7_ + 4);
            if(_loc6_ > 31)
            {
               if(li32(___isthreaded) != 0)
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(_atexit_mutex,_loc2_);
                  ESP = _loc2_;
                  F__pthread_mutex_unlock();
                  _loc2_ = int(_loc2_ + 16);
               }
               _loc2_ = int(_loc2_ - 16);
               si32(520,_loc2_);
               ESP = _loc2_;
               F_malloc();
               _loc5_ = -1;
               _loc2_ = int(_loc2_ + 16);
               _loc6_ = int(eax);
               if(_loc6_ != 0)
               {
                  if(li32(___isthreaded) != 0)
                  {
                     _loc2_ = int(_loc2_ - 16);
                     si32(_atexit_mutex,_loc2_);
                     ESP = _loc2_;
                     F__pthread_mutex_lock();
                     _loc2_ = int(_loc2_ + 16);
                  }
                  _loc5_ = li32(___atexit);
                  if(_loc7_ != _loc5_)
                  {
                     if(li32(___isthreaded) != 0)
                     {
                        _loc2_ = int(_loc2_ - 16);
                        si32(_atexit_mutex,_loc2_);
                        ESP = _loc2_;
                        F__pthread_mutex_unlock();
                        _loc2_ = int(_loc2_ + 16);
                     }
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc6_,_loc2_);
                     ESP = _loc2_;
                     F_free();
                     _loc2_ = int(_loc2_ + 16);
                     _loc1_ = li32(___isthreaded);
                     if(_loc1_ != 0)
                     {
                        _loc2_ = int(_loc2_ - 16);
                        si32(_atexit_mutex,_loc2_);
                        ESP = _loc2_;
                        F__pthread_mutex_lock();
                        _loc2_ = int(_loc2_ + 16);
                     }
                     _loc7_ = li32(___atexit);
                  }
                  else
                  {
                     si32(0,_loc6_ + 4);
                     si32(_loc5_,_loc6_);
                     si32(_loc6_,___atexit);
                     _loc7_ = _loc6_;
                  }
                  continue;
               }
               break;
            }
         }
         eax = _loc5_;
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      _loc1_ = _loc6_ << 4;
      _loc1_ = int(_loc7_ + _loc1_);
      var _loc4_:* = li32(_loc8_);
      si32(_loc4_,_loc1_ + 8);
      _loc4_ = li32(_loc8_ + 4);
      si32(_loc4_,_loc1_ + 12);
      _loc4_ = li32(_loc8_ + 8);
      si32(_loc4_,_loc1_ + 16);
      _loc4_ = li32(_loc8_ + 12);
      si32(_loc4_,_loc1_ + 20);
      _loc1_ = int(_loc6_ + 1);
      si32(_loc1_,_loc7_ + 4);
      _loc5_ = 0;
      _loc1_ = li32(___isthreaded);
      if(_loc1_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_atexit_mutex,_loc2_);
         ESP = _loc2_;
         F__pthread_mutex_unlock();
         _loc2_ = int(_loc2_ + 16);
         _loc5_ = 0;
      }
      §§goto(addr342);
   }
}
