package sample.xx_alloc_2E_o_3A_53BAED73_2D_6B0B_2D_4F4B_2D_A650_2D_BFA4BB2C93E2
{
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   import sample.xx.*;
   import avm2.intrinsics.memory.li8;
   
   public function F_pages_map() : void
   {
      var _loc3_:* = 0;
      var _loc8_:* = 0;
      var _loc9_:* = 0;
      var _loc7_:int = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 64);
      _loc2_ = int(_loc2_ - 32);
      _loc1_ = 0;
      si32(_loc1_,_loc2_ + 24);
      si32(_loc1_,_loc2_ + 20);
      si32(-1,_loc2_ + 16);
      si32(4098,_loc2_ + 12);
      si32(3,_loc2_ + 8);
      _loc9_ = li32(_loc3_ + 4);
      si32(_loc9_,_loc2_ + 4);
      _loc8_ = li32(_loc3_);
      si32(_loc8_,_loc2_);
      ESP = _loc2_;
      F_mmap();
      _loc2_ = int(_loc2_ + 32);
      _loc7_ = eax;
      if(_loc7_ != -1)
      {
         _loc1_ = _loc7_;
         if(_loc8_ != 0)
         {
            _loc1_ = _loc7_;
            if(_loc7_ != _loc8_)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_loc9_,_loc2_ + 4);
               si32(_loc7_,_loc2_);
               ESP = _loc2_;
               F_munmap();
               _loc1_ = 0;
               _loc2_ = int(_loc2_ + 16);
               var _loc6_:* = int(eax);
               if(_loc6_ == -1)
               {
                  ESP = _loc2_;
                  F___error();
                  _loc6_ = int(eax);
                  _loc2_ = int(_loc2_ - 16);
                  si32(64,_loc2_ + 8);
                  _loc6_ = int(_loc3_ - 64);
                  si32(_loc6_,_loc2_ + 4);
                  si32(li32(_loc6_),_loc2_);
                  ESP = _loc2_;
                  F_strerror_r();
                  _loc2_ = int(_loc2_ + 16);
                  var _loc5_:* = li32(__malloc_message);
                  ESP = _loc2_;
                  F__getprogname();
                  _loc2_ = int(_loc2_ - 16);
                  si32(L__2E_str5,_loc2_ + 12);
                  si32(_loc6_,_loc2_ + 8);
                  si32(L__2E_str39,_loc2_ + 4);
                  si32(int(eax),_loc2_);
                  ESP = _loc2_;
                  ptr2fun[_loc5_]();
                  _loc2_ = int(_loc2_ + 16);
                  _loc1_ = 0;
                  _loc6_ = li8(_opt_abort_2E_b);
                  if(_loc6_ == 1)
                  {
                     ESP = _loc2_;
                     F_abort();
                  }
               }
            }
         }
      }
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
