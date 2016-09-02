package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_dtoa_misc_2E_o_3A_CAC42ED2_2D_032E_2D_4175_2D_B9DB_2D_C2338140AFF7.*;
   
   public function F___multadd_D2A() : void
   {
      var _loc4_:* = 0;
      var _loc12_:* = 0;
      var _loc11_:* = 0;
      var _loc3_:* = 0;
      var _loc15_:* = 0;
      var _loc1_:int = 0;
      var _loc5_:int = 0;
      var _loc10_:* = 0;
      var _loc14_:* = 0;
      var _loc13_:* = 0;
      var _loc7_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc3_ = li32(_loc4_ + 4);
      _loc15_ = _loc3_ >> 31;
      _loc14_ = li32(_loc4_ + 8);
      _loc13_ = _loc14_ >> 31;
      _loc12_ = li32(_loc4_);
      _loc11_ = li32(_loc12_ + 16);
      _loc10_ = 0;
      do
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc3_,_loc2_ + 8);
         si32(0,_loc2_ + 4);
         si32(_loc15_,_loc2_ + 12);
         var _loc9_:* = _loc10_ << 2;
         _loc9_ = int(_loc12_ + _loc9_);
         var _loc8_:* = li32(_loc9_ + 20);
         si32(_loc8_,_loc2_);
         ESP = _loc2_;
         F___muldi3();
         _loc2_ = int(_loc2_ + 16);
         _loc8_ = int(eax);
         _loc1_ = edx;
         _loc5_ = _loc8_ + _loc14_;
         si32(_loc5_,_loc9_ + 20);
         _loc6_ = 1;
         _loc7_ = _loc6_;
         if(uint(_loc5_) >= uint(_loc8_))
         {
            _loc7_ = 0;
         }
         if(uint(_loc5_) >= uint(_loc14_))
         {
            _loc6_ = _loc7_;
         }
         _loc9_ = int(_loc1_ + _loc13_);
         _loc14_ = int(_loc9_ + _loc6_);
         _loc10_ = int(_loc10_ + 1);
         _loc13_ = 0;
      }
      while(_loc10_ < _loc11_);
      
      _loc10_ = _loc12_;
      if((_loc14_ | 0) != 0)
      {
         _loc10_ = _loc12_;
         if(li32(_loc12_ + 8) <= _loc11_)
         {
            _loc2_ = int(_loc2_ - 16);
            _loc9_ = int(li32(_loc12_ + 4) + 1);
            si32(_loc9_,_loc2_);
            ESP = _loc2_;
            F___Balloc_D2A();
            _loc2_ = int(_loc2_ + 16);
            _loc10_ = int(eax);
            _loc2_ = int(_loc2_ - 16);
            _loc9_ = li32(_loc12_ + 16) << 2;
            _loc9_ = int(_loc9_ + 8);
            si32(_loc9_,_loc2_ + 8);
            _loc9_ = int(_loc12_ + 12);
            si32(_loc9_,_loc2_ + 4);
            _loc9_ = int(_loc10_ + 12);
            si32(_loc9_,_loc2_);
            ESP = _loc2_;
            Fmemcpy();
            _loc2_ = int(_loc2_ + 16);
            if(_loc12_ != 0)
            {
               _loc3_ = li32(_loc12_ + 4);
               if(_loc3_ >= 10)
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(_loc12_,_loc2_);
                  ESP = _loc2_;
                  F_free();
                  _loc2_ = int(_loc2_ + 16);
               }
               else
               {
                  _loc9_ = li32(___isthreaded);
                  if(_loc9_ != 0)
                  {
                     _loc2_ = int(_loc2_ - 16);
                     si32(___gdtoa_locks,_loc2_);
                     ESP = _loc2_;
                     F__pthread_mutex_lock();
                     _loc2_ = int(_loc2_ + 16);
                     _loc3_ = li32(_loc12_ + 4);
                  }
                  _loc9_ = _loc3_ << 2;
                  _loc9_ = int(_freelist + _loc9_);
                  _loc8_ = li32(_loc9_);
                  si32(_loc8_,_loc12_);
                  si32(_loc12_,_loc9_);
                  _loc9_ = li32(___isthreaded);
                  if(_loc9_ != 0)
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
         _loc9_ = _loc11_ << 2;
         _loc9_ = int(_loc10_ + _loc9_);
         si32(_loc14_,_loc9_ + 20);
         _loc9_ = int(_loc11_ + 1);
         si32(_loc9_,_loc10_ + 16);
      }
      eax = _loc10_;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
