package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import sample.xx_indfp_2E_o_3A_98F2A02C_2D_FDD7_2D_4924_2D_9D30_2D_44B96552CC01.*;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.si16;
   
   public function F___sfp() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc4_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(___sdidinit);
      if(_loc1_ == 0)
      {
         si32(__cleanup,___cleanup);
         si32(1,___sdidinit);
      }
      _loc6_ = int(___sglue);
      _loc1_ = li32(___isthreaded);
      if(_loc1_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_thread_lock,_loc2_);
         ESP = _loc2_;
         F__spinlock();
         _loc2_ = int(_loc2_ + 16);
         _loc6_ = int(___sglue);
      }
      while(true)
      {
         if(_loc6_ == 0)
         {
            if(li32(___isthreaded) != 0)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_thread_lock,_loc2_);
               ESP = _loc2_;
               F__spinunlock();
               _loc2_ = int(_loc2_ + 16);
            }
            _loc2_ = int(_loc2_ - 16);
            si32(2335,_loc2_);
            ESP = _loc2_;
            F_malloc();
            _loc4_ = 0;
            _loc2_ = int(_loc2_ + 16);
            _loc5_ = int(eax);
            if(_loc5_ != 0)
            {
               si32(0,_loc5_);
               si32(10,_loc5_ + 4);
               si32(int(_loc5_ + 15) & -4,_loc5_ + 8);
               _loc2_ = int(_loc2_ - 16);
               si32(2320,_loc2_ + 8);
               si32(0,_loc2_ + 4);
               si32(int(_loc5_ + 15) & -4,_loc2_);
               ESP = _loc2_;
               Fmemset();
               _loc2_ = int(_loc2_ + 16);
               if(li32(___isthreaded) != 0)
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(_thread_lock,_loc2_);
                  ESP = _loc2_;
                  F__spinlock();
                  _loc2_ = int(_loc2_ + 16);
               }
               _loc1_ = li32(_lastglue);
               si32(_loc5_,_loc1_);
               si32(_loc5_,_lastglue);
               _loc4_ = li32(_loc5_ + 8);
            }
            addr368:
            eax = _loc4_;
            _loc2_ = _loc3_;
            ESP = _loc2_;
            return;
         }
         _loc5_ = li32(_loc6_ + 4);
         _loc4_ = li32(_loc6_ + 8);
         while(_loc5_ > 0)
         {
            if(li16(_loc4_ + 12) != 0)
            {
               _loc5_ = int(_loc5_ + -1);
               _loc4_ = int(_loc4_ + 232);
               continue;
            }
         }
         _loc6_ = li32(_loc6_);
         continue;
         si16(1,_loc4_ + 12);
         _loc1_ = li32(___isthreaded);
         if(_loc1_ != 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_thread_lock,_loc2_);
            ESP = _loc2_;
            F__spinunlock();
            _loc2_ = int(_loc2_ + 16);
         }
         si32(0,_loc4_);
         si32(0,_loc4_ + 8);
         si32(0,_loc4_ + 4);
         si32(0,_loc4_ + 16);
         si32(0,_loc4_ + 20);
         si32(0,_loc4_ + 24);
         si16(-1,_loc4_ + 14);
         si32(0,_loc4_ + 48);
         si32(0,_loc4_ + 52);
         si32(0,_loc4_ + 68);
         si32(0,_loc4_ + 72);
         _loc2_ = int(_loc2_ - 16);
         si32(132,_loc2_ + 8);
         si32(0,_loc2_ + 4);
         _loc1_ = int(_loc4_ + 100);
         si32(_loc1_,_loc2_);
         ESP = _loc2_;
         Fmemset();
         _loc2_ = int(_loc2_ + 16);
         §§goto(addr368);
      }
   }
}
