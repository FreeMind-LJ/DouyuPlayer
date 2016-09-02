package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_dtoa_misc_2E_o_3A_CAC42ED2_2D_032E_2D_4175_2D_B9DB_2D_C2338140AFF7.*;
   
   public function F___pow5mult_D2A() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc9_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc8_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc9_ = _loc1_ & 3;
      _loc8_ = li32(_loc3_);
      if(_loc9_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(0,_loc2_ + 8);
         si32(_loc8_,_loc2_);
         var _loc7_:* = _loc9_ << 2;
         _loc7_ = int(_loc7_ + _p05_2E_3375);
         _loc7_ = li32(_loc7_ - 4);
         si32(_loc7_,_loc2_ + 4);
         ESP = _loc2_;
         F___multadd_D2A();
         _loc2_ = int(_loc2_ + 16);
         _loc8_ = int(eax);
      }
      _loc9_ = _loc1_ >> 2;
      if(_loc9_ != 0)
      {
         _loc6_ = li32(_p5s);
         _loc1_ = _loc8_;
         if(_loc6_ == 0)
         {
            _loc7_ = li32(___isthreaded);
            if(_loc7_ != 0)
            {
               _loc2_ = int(_loc2_ - 16);
               _loc7_ = int(___gdtoa_locks + 4);
               si32(_loc7_,_loc2_);
               ESP = _loc2_;
               F__pthread_mutex_lock();
               _loc2_ = int(_loc2_ + 16);
               _loc6_ = li32(_p5s);
               if(_loc6_ == 0)
               {
               }
               addr177:
               _loc7_ = li32(___isthreaded);
               _loc1_ = _loc8_;
               if(_loc7_ != 0)
               {
                  _loc2_ = int(_loc2_ - 16);
                  _loc7_ = int(___gdtoa_locks + 4);
                  si32(_loc7_,_loc2_);
                  ESP = _loc2_;
                  F__pthread_mutex_unlock();
                  _loc2_ = int(_loc2_ + 16);
                  _loc1_ = _loc8_;
               }
            }
            _loc2_ = int(_loc2_ - 16);
            si32(1,_loc2_);
            ESP = _loc2_;
            F___Balloc_D2A();
            _loc2_ = int(_loc2_ + 16);
            _loc6_ = int(eax);
            si32(625,_loc6_ + 20);
            si32(1,_loc6_ + 16);
            si32(_loc6_,_p5s);
            si32(0,_loc6_);
            §§goto(addr177);
         }
         while(true)
         {
            _loc5_ = _loc6_;
            _loc7_ = _loc9_ & 1;
            _loc8_ = _loc1_;
            if(_loc7_ != 0)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_loc5_,_loc2_ + 4);
               si32(_loc1_,_loc2_);
               ESP = _loc2_;
               F___mult_D2A();
               _loc2_ = int(_loc2_ + 16);
               _loc8_ = int(eax);
               if(_loc1_ != 0)
               {
                  _loc6_ = li32(_loc1_ + 4);
                  if(_loc6_ >= 10)
                  {
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc1_,_loc2_);
                     ESP = _loc2_;
                     F_free();
                     _loc2_ = int(_loc2_ + 16);
                  }
                  else
                  {
                     _loc7_ = li32(___isthreaded);
                     if(_loc7_ != 0)
                     {
                        _loc2_ = int(_loc2_ - 16);
                        si32(___gdtoa_locks,_loc2_);
                        ESP = _loc2_;
                        F__pthread_mutex_lock();
                        _loc2_ = int(_loc2_ + 16);
                        _loc6_ = li32(_loc1_ + 4);
                     }
                     _loc7_ = _loc6_ << 2;
                     _loc7_ = int(_freelist + _loc7_);
                     var _loc4_:* = li32(_loc7_);
                     si32(_loc4_,_loc1_);
                     si32(_loc1_,_loc7_);
                     _loc7_ = li32(___isthreaded);
                     if(_loc7_ != 0)
                     {
                        _loc2_ = int(_loc2_ - 16);
                        si32(___gdtoa_locks,_loc2_);
                        ESP = _loc2_;
                        F__pthread_mutex_unlock();
                        _loc2_ = int(_loc2_ + 16);
                     }
                  }
               }
            }
            _loc9_ = _loc9_ >> 1;
            if(_loc9_ != 0)
            {
               _loc6_ = li32(_loc5_);
               _loc1_ = _loc8_;
               if(_loc6_ == 0)
               {
                  _loc7_ = li32(___isthreaded);
                  if(_loc7_ != 0)
                  {
                     _loc2_ = int(_loc2_ - 16);
                     _loc7_ = int(___gdtoa_locks + 4);
                     si32(_loc7_,_loc2_);
                     ESP = _loc2_;
                     F__pthread_mutex_lock();
                     _loc2_ = int(_loc2_ + 16);
                     _loc6_ = li32(_loc5_);
                     if(_loc6_ == 0)
                     {
                     }
                     addr452:
                     _loc7_ = li32(___isthreaded);
                     _loc1_ = _loc8_;
                     if(_loc7_ != 0)
                     {
                        _loc2_ = int(_loc2_ - 16);
                        _loc7_ = int(___gdtoa_locks + 4);
                        si32(_loc7_,_loc2_);
                        ESP = _loc2_;
                        F__pthread_mutex_unlock();
                        _loc2_ = int(_loc2_ + 16);
                        _loc1_ = _loc8_;
                     }
                     continue;
                  }
                  _loc2_ = int(_loc2_ - 16);
                  si32(_loc5_,_loc2_ + 4);
                  si32(_loc5_,_loc2_);
                  ESP = _loc2_;
                  F___mult_D2A();
                  _loc2_ = int(_loc2_ + 16);
                  _loc6_ = int(eax);
                  si32(_loc6_,_loc5_);
                  si32(0,_loc6_);
                  §§goto(addr452);
               }
               else
               {
                  continue;
               }
            }
            else
            {
               break;
            }
         }
      }
      eax = _loc8_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
