package sample.xx
{
   import sample.xx_dtoa_misc_2E_o_3A_CAC42ED2_2D_032E_2D_4175_2D_B9DB_2D_C2338140AFF7.*;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F___Balloc_D2A() : void
   {
      var _loc3_:* = 0;
      var _loc9_:* = 0;
      var _loc4_:int = 0;
      var _loc1_:* = 0;
      var _loc7_:int = 0;
      var _loc8_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(___isthreaded);
      if(_loc1_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(___gdtoa_locks,_loc2_);
         ESP = _loc2_;
         F__pthread_mutex_lock();
         _loc2_ = int(_loc2_ + 16);
      }
      _loc9_ = li32(_loc3_);
      if(_loc9_ >= 10)
      {
         _loc8_ = 1 << _loc9_;
         _loc7_ = (_loc8_ << 2) + 27;
      }
      else
      {
         _loc7_ = _freelist + (_loc9_ << 2);
         _loc6_ = li32(_loc7_);
         if(_loc6_ != 0)
         {
            si32(li32(_loc6_),_loc7_);
         }
         else
         {
            _loc6_ = li32(_pmem_next);
            _loc8_ = 1 << _loc9_;
            _loc7_ = (_loc8_ << 2) + 27;
            _loc4_ = _loc7_ >>> 3;
            if(uint(int((int(_loc6_ - _private_mem) >> 3) + _loc4_)) <= 288)
            {
               si32(int(_loc6_ + (_loc4_ << 3)),_pmem_next);
            }
            addr160:
            si32(_loc9_,_loc6_ + 4);
            si32(_loc8_,_loc6_ + 8);
         }
         _loc1_ = li32(___isthreaded);
         if(_loc1_ != 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(___gdtoa_locks,_loc2_);
            ESP = _loc2_;
            F__pthread_mutex_unlock();
            _loc2_ = int(_loc2_ + 16);
         }
         si32(0,_loc6_ + 16);
         si32(0,_loc6_ + 12);
         eax = _loc6_;
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = _loc7_ & -8;
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F_malloc();
      _loc2_ = int(_loc2_ + 16);
      _loc6_ = int(eax);
      §§goto(addr160);
   }
}
