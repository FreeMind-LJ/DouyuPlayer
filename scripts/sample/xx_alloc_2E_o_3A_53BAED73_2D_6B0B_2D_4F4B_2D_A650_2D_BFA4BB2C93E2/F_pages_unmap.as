package sample.xx_alloc_2E_o_3A_53BAED73_2D_6B0B_2D_4F4B_2D_A650_2D_BFA4BB2C93E2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx.*;
   import avm2.intrinsics.memory.li8;
   
   public function F_pages_unmap() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 64);
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = li32(_loc3_ + 4);
      si32(_loc1_,_loc2_ + 4);
      _loc1_ = li32(_loc3_);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F_munmap();
      _loc2_ = int(_loc2_ + 16);
      _loc1_ = int(eax);
      if(_loc1_ == -1)
      {
         ESP = _loc2_;
         F___error();
         _loc2_ = int(_loc2_ - 16);
         si32(64,_loc2_ + 8);
         _loc1_ = int(_loc3_ - 64);
         si32(_loc1_,_loc2_ + 4);
         si32(li32(int(eax)),_loc2_);
         ESP = _loc2_;
         F_strerror_r();
         _loc2_ = int(_loc2_ + 16);
         var _loc4_:* = li32(__malloc_message);
         ESP = _loc2_;
         F__getprogname();
         _loc2_ = int(_loc2_ - 16);
         si32(L__2E_str5,_loc2_ + 12);
         si32(_loc1_,_loc2_ + 8);
         si32(L__2E_str39,_loc2_ + 4);
         si32(int(eax),_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc4_]();
         _loc2_ = int(_loc2_ + 16);
         if(li8(_opt_abort_2E_b) == 1)
         {
            ESP = _loc2_;
            F_abort();
         }
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
