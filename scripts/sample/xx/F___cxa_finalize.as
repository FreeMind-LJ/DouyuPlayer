package sample.xx
{
   import sample.xx_texit_2E_o_3A_1405349B_2D_9902_2D_46AE_2D_908F_2D_8B86E3F38604.*;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F___cxa_finalize() : void
   {
      var _loc3_:* = 0;
      var _loc11_:* = 0;
      var _loc10_:* = 0;
      var _loc8_:int = 0;
      var _loc9_:int = 0;
      var _loc6_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:* = 0;
      var _loc1_:* = 0;
      var _loc12_:* = 0;
      var _loc7_:int = 0;
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
      _loc12_ = li32(___atexit);
      if(_loc12_ != 0)
      {
         _loc11_ = li32(_loc3_);
         do
         {
            _loc10_ = li32(_loc12_ + 4);
            if(_loc10_ >= 1)
            {
               _loc9_ = _loc12_ + (_loc10_ << 4);
               _loc8_ = 0 - _loc10_;
               _loc7_ = 0;
               while(true)
               {
                  _loc1_ = _loc7_ << 4;
                  _loc1_ = int(_loc9_ + _loc1_);
                  _loc10_ = li32(_loc1_ - 8);
                  if(_loc10_ != 0)
                  {
                     _loc6_ = _loc7_ << 2;
                     if(_loc11_ != 0)
                     {
                        if(li32(int(_loc9_ + (_loc6_ << 2)) + 4) == _loc11_)
                        {
                        }
                     }
                     _loc1_ = _loc6_ << 2;
                     _loc1_ = int(_loc9_ + _loc1_);
                     _loc5_ = li32(_loc1_);
                     _loc1_ = _loc6_ << 2;
                     _loc1_ = int(_loc9_ + _loc1_);
                     _loc4_ = li32(_loc1_ - 4);
                     _loc1_ = _loc6_ << 2;
                     _loc1_ = int(_loc9_ + _loc1_);
                     si32(0,_loc1_ - 8);
                     _loc1_ = li32(___isthreaded);
                     if(_loc1_ != 0)
                     {
                        _loc2_ = int(_loc2_ - 16);
                        si32(_atexit_mutex,_loc2_);
                        ESP = _loc2_;
                        F__pthread_mutex_unlock();
                        _loc2_ = int(_loc2_ + 16);
                     }
                     if(_loc10_ != 1)
                     {
                        if(_loc10_ == 2)
                        {
                           _loc2_ = int(_loc2_ - 16);
                           si32(_loc5_,_loc2_);
                           ESP = _loc2_;
                           ptr2fun[_loc4_]();
                           _loc2_ = int(_loc2_ + 16);
                        }
                     }
                     else
                     {
                        ESP = _loc2_;
                        ptr2fun[_loc4_]();
                     }
                     _loc1_ = li32(___isthreaded);
                     if(_loc1_ != 0)
                     {
                        _loc2_ = int(_loc2_ - 16);
                        si32(_atexit_mutex,_loc2_);
                        ESP = _loc2_;
                        F__pthread_mutex_lock();
                        _loc2_ = int(_loc2_ + 16);
                     }
                  }
                  _loc7_ = _loc7_ + -1;
                  if(_loc8_ != _loc7_)
                  {
                     continue;
                  }
                  break;
               }
            }
            _loc12_ = li32(_loc12_);
         }
         while(_loc12_ != 0);
         
      }
      _loc1_ = li32(___isthreaded);
      if(_loc1_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_atexit_mutex,_loc2_);
         ESP = _loc2_;
         F__pthread_mutex_unlock();
         _loc2_ = int(_loc2_ + 16);
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
