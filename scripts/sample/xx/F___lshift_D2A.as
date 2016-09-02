package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_dtoa_misc_2E_o_3A_CAC42ED2_2D_032E_2D_4175_2D_B9DB_2D_C2338140AFF7.*;
   
   public function F___lshift_D2A() : void
   {
      var _loc4_:* = 0;
      var _loc13_:* = 0;
      var _loc3_:* = 0;
      var _loc14_:* = 0;
      var _loc11_:int = 0;
      var _loc9_:* = 0;
      var _loc7_:* = 0;
      var _loc5_:int = 0;
      var _loc8_:* = 0;
      var _loc1_:int = 0;
      var _loc10_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc3_ = li32(_loc4_ + 4);
      _loc14_ = _loc3_ >> 5;
      _loc13_ = li32(_loc4_);
      var _loc12_:* = li32(_loc13_ + 16);
      _loc11_ = _loc12_ + _loc14_;
      _loc10_ = int(_loc11_ + 1);
      _loc9_ = li32(_loc13_ + 8);
      _loc8_ = li32(_loc13_ + 4);
      if(_loc10_ > _loc9_)
      {
         do
         {
            _loc8_ = int(_loc8_ + 1);
            _loc9_ = _loc9_ << 1;
         }
         while(_loc10_ > _loc9_);
         
      }
      _loc2_ = int(_loc2_ - 16);
      si32(_loc8_,_loc2_);
      ESP = _loc2_;
      F___Balloc_D2A();
      _loc2_ = int(_loc2_ + 16);
      _loc9_ = int(eax);
      _loc8_ = int(_loc9_ + 20);
      if(_loc14_ >= 1)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(0,_loc2_ + 4);
         si32(_loc8_,_loc2_);
         _loc12_ = _loc3_ >> 3;
         _loc12_ = _loc12_ & -4;
         si32(_loc12_,_loc2_ + 8);
         _loc12_ = int(_loc12_ + _loc9_);
         _loc8_ = int(_loc12_ + 20);
         ESP = _loc2_;
         Fmemset();
         _loc2_ = int(_loc2_ + 16);
      }
      _loc12_ = li32(_loc13_ + 16);
      _loc12_ = _loc12_ << 2;
      _loc12_ = int(_loc13_ + _loc12_);
      _loc14_ = int(_loc12_ + 20);
      _loc7_ = _loc3_ & 31;
      if(_loc7_ == 0)
      {
         _loc11_ = _loc13_ + 20;
         do
         {
            _loc12_ = li32(_loc11_);
            si32(_loc12_,_loc8_);
            _loc11_ = _loc11_ + 4;
            _loc8_ = int(_loc8_ + 4);
         }
         while(uint(_loc11_) < uint(_loc14_));
         
      }
      else
      {
         _loc1_ = _loc13_ + 20;
         _loc5_ = 32 - _loc7_;
         _loc3_ = 0;
         do
         {
            _loc12_ = li32(_loc1_);
            _loc12_ = _loc12_ << _loc7_;
            _loc12_ = _loc12_ | _loc3_;
            si32(_loc12_,_loc8_);
            _loc12_ = li32(_loc1_);
            _loc3_ = int(_loc12_ >>> _loc5_);
            _loc1_ = _loc1_ + 4;
            _loc8_ = int(_loc8_ + 4);
         }
         while(uint(_loc1_) < uint(_loc14_));
         
         si32(_loc3_,_loc8_);
         if(_loc3_ != 0)
         {
            _loc10_ = int(_loc11_ + 2);
         }
      }
      _loc12_ = int(_loc10_ + -1);
      si32(_loc12_,_loc9_ + 16);
      if(_loc13_ != 0)
      {
         _loc10_ = li32(_loc13_ + 4);
         if(_loc10_ >= 10)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_loc13_,_loc2_);
            ESP = _loc2_;
            F_free();
            _loc2_ = int(_loc2_ + 16);
         }
         else
         {
            _loc12_ = li32(___isthreaded);
            if(_loc12_ != 0)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(___gdtoa_locks,_loc2_);
               ESP = _loc2_;
               F__pthread_mutex_lock();
               _loc2_ = int(_loc2_ + 16);
               _loc10_ = li32(_loc13_ + 4);
            }
            _loc12_ = _loc10_ << 2;
            _loc12_ = int(_freelist + _loc12_);
            var _loc6_:* = li32(_loc12_);
            si32(_loc6_,_loc13_);
            si32(_loc13_,_loc12_);
            _loc12_ = li32(___isthreaded);
            if(_loc12_ != 0)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(___gdtoa_locks,_loc2_);
               ESP = _loc2_;
               F__pthread_mutex_unlock();
               _loc2_ = int(_loc2_ + 16);
            }
         }
      }
      eax = _loc9_;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
