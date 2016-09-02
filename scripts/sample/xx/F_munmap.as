package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libcHack_2E_o_3A_1893F4CD_2D_7665_2D_4444_2D_96C7_2D_3F371B8BE323.*;
   import avm2.intrinsics.memory.si32;
   
   public function F_munmap() : void
   {
      var _loc10_:* = 0;
      var _loc22_:* = 0;
      var _loc21_:* = 0;
      var _loc18_:int = 0;
      var _loc15_:int = 0;
      var _loc14_:* = 0;
      var _loc4_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:* = 0;
      var _loc9_:int = 0;
      var _loc6_:* = 0;
      var _loc19_:* = 0;
      var _loc1_:* = 0;
      var _loc11_:* = 0;
      var _loc12_:int = 0;
      var _loc13_:int = 0;
      var _loc3_:* = 0;
      var _loc16_:* = 0;
      var _loc2_:int = 0;
      var _loc5_:* = int(ESP);
      _loc10_ = _loc5_;
      _loc6_ = li32(_avm2_haveWorkers_2E_4273);
      if(_loc6_ == -1)
      {
         _loc6_ = int(Boolean(workerClass));
         si32(_loc6_,_avm2_haveWorkers_2E_4273);
      }
      if(_loc6_ != 0)
      {
         _loc5_ = int(_loc5_ - 16);
         var _loc23_:* = int(int(threadId) + 8);
         si32(_loc23_,_loc5_ + 4);
         si32(_smmapMtx,_loc5_);
         ESP = _loc5_;
         F_avm2_lock_id();
         _loc5_ = int(_loc5_ + 16);
      }
      _loc22_ = li32(_loc10_);
      _loc21_ = li32(_loc10_ + 4);
      _loc23_ = int(_loc21_ + _loc22_);
      _loc23_ = int(_loc23_ + 4095);
      _loc23_ = int(_loc23_ >>> 12);
      var _loc20_:* = _loc22_ >> 31;
      _loc20_ = int(_loc20_ >>> 20);
      _loc20_ = int(_loc22_ + _loc20_);
      _loc19_ = _loc20_ >> 12;
      if(_loc23_ != _loc19_)
      {
         _loc23_ = int(_loc22_ + _loc21_);
         _loc23_ = int(_loc23_ + 4095);
         _loc18_ = _loc23_ >>> 12;
         do
         {
            _loc23_ = _loc19_ & 31;
            _loc23_ = 1 << _loc23_;
            _loc23_ = _loc23_ ^ -1;
            _loc20_ = _loc19_ & -32;
            _loc20_ = int(_loc20_ >>> 3);
            _loc20_ = int(_mmapBlockAllocBitSet + _loc20_);
            var _loc17_:* = li32(_loc20_);
            _loc23_ = _loc17_ & _loc23_;
            si32(_loc23_,_loc20_);
            _loc19_ = int(_loc19_ + 1);
         }
         while(_loc18_ != _loc19_);
         
      }
      ESP = _loc5_ & -16;
      _loc15_ = (ram.length + 4095) / 4096;
      _loc1_ = li32(_mmapBlockCount);
      if(_loc15_ > _loc1_)
      {
         do
         {
            _loc23_ = _loc1_ & 31;
            _loc23_ = 1 << _loc23_;
            _loc20_ = _loc1_ & -32;
            _loc20_ = int(_loc20_ >>> 3);
            _loc20_ = int(_mmapBlockAllocBitSet + _loc20_);
            _loc17_ = li32(_loc20_);
            _loc23_ = _loc23_ | _loc17_;
            si32(_loc23_,_loc20_);
            _loc1_ = int(_loc1_ + 1);
         }
         while(_loc15_ != _loc1_);
         
      }
      si32(_loc15_,_mmapBlockCount);
      _loc11_ = _loc15_ << 12;
      _loc12_ = _loc15_ + -1;
      _loc13_ = -1;
      while(true)
      {
         _loc14_ = _loc11_;
         _loc4_ = _loc12_;
         _loc7_ = _loc13_;
         if(_loc4_ != -1)
         {
            _loc20_ = _loc4_ & -32;
            _loc20_ = int(_mmapBlockAllocBitSet + (int(_loc20_ >>> 3)));
            _loc20_ = li32(_loc20_);
            _loc11_ = int(_loc14_ + -4096);
            _loc12_ = _loc4_ + -1;
            _loc13_ = _loc7_ + -1;
            if((_loc20_ & 1 << (_loc4_ & 31)) != 0)
            {
               break;
            }
            continue;
         }
         break;
      }
      _loc23_ = _loc7_ ^ -1;
      if(_loc23_ >= 256)
      {
         _loc5_ = int(_loc5_ - 16);
         si32(_loc14_,_loc5_ + 4);
         _loc8_ = _loc15_ << 12;
         si32(_loc8_,_loc5_);
         ESP = _loc5_;
         F_avm2_casRamLength();
         _loc5_ = int(_loc5_ + 16);
         _loc9_ = eax;
         if(_loc9_ == -1)
         {
            _loc3_ = li32(_avm2_haveWorkers_2E_4273);
            if(_loc3_ == -1)
            {
               _loc3_ = int(Boolean(workerClass));
               si32(_loc3_,_avm2_haveWorkers_2E_4273);
            }
            if(_loc3_ != 0)
            {
               _loc5_ = int(_loc5_ - 16);
               si32(_smmapMtx,_loc5_);
               ESP = _loc5_;
               F_avm2_unlock();
               _loc5_ = int(_loc5_ + 16);
            }
            ESP = _loc5_;
            F___error();
            _loc23_ = int(eax);
            si32(22,_loc23_);
            _loc2_ = -1;
         }
         else if(_loc9_ == _loc8_)
         {
            _loc23_ = int(_loc4_ + 1);
            si32(_loc23_,_mmapBlockCount);
         }
         addr486:
         eax = _loc2_;
         _loc5_ = _loc10_;
         ESP = _loc5_;
         return;
      }
      _loc16_ = li32(_avm2_haveWorkers_2E_4273);
      if(_loc16_ == -1)
      {
         _loc16_ = int(Boolean(workerClass));
         si32(_loc16_,_avm2_haveWorkers_2E_4273);
      }
      _loc2_ = 0;
      if(_loc16_ != 0)
      {
         _loc5_ = int(_loc5_ - 16);
         si32(_smmapMtx,_loc5_);
         ESP = _loc5_;
         F_avm2_unlock();
         _loc5_ = int(_loc5_ + 16);
         _loc2_ = 0;
      }
      §§goto(addr486);
   }
}
