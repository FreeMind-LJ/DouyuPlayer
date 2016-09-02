package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_ls_2E_o_3A_01458B9F_2D_2A2B_2D_4FF7_2D_8FFE_2D_2EDF72BF4080.*;
   
   public function F___libc_allocate_tls() : void
   {
      var _loc3_:* = 0;
      var _loc8_:* = 0;
      var _loc9_:* = 0;
      var _loc5_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_tls_static_space);
      _loc2_ = int(_loc2_ - 16);
      si32(1,_loc2_);
      _loc9_ = 8;
      _loc8_ = li32(_loc3_ + 4);
      if(uint(_loc8_) >= uint(_loc9_))
      {
         _loc9_ = _loc8_;
      }
      var _loc7_:* = li32(_loc3_ + 8);
      var _loc6_:int = _loc7_ + _loc1_;
      _loc6_ = _loc6_ + -1;
      _loc7_ = int(0 - _loc7_);
      _loc7_ = _loc6_ & _loc7_;
      _loc6_ = _loc7_ + _loc9_;
      si32(_loc6_,_loc2_ + 4);
      ESP = _loc2_;
      F_calloc();
      _loc2_ = int(_loc2_ + 16);
      _loc6_ = eax;
      _loc2_ = int(_loc2_ - 16);
      si32(12,_loc2_);
      _loc9_ = int(_loc6_ + _loc7_);
      ESP = _loc2_;
      F_malloc();
      _loc2_ = int(_loc2_ + 16);
      _loc7_ = int(eax);
      si32(_loc9_,_loc9_);
      si32(_loc7_,_loc9_ + 4);
      si32(1,_loc7_);
      si32(1,_loc7_ + 4);
      _loc5_ = li32(_tls_static_space);
      _loc1_ = int(_loc9_ - _loc5_);
      si32(_loc1_,_loc7_ + 8);
      _loc8_ = li32(_loc3_);
      if(_loc8_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc1_,_loc2_);
         si32(_loc5_,_loc2_ + 8);
         _loc7_ = int(_loc8_ - _loc5_);
         si32(_loc7_,_loc2_ + 4);
         ESP = _loc2_;
         Fmemcpy();
         _loc2_ = int(_loc2_ + 16);
         _loc2_ = int(_loc2_ - 16);
         si32(4,_loc2_ + 8);
         si32(8,_loc2_ + 4);
         si32(_loc8_,_loc2_);
         ESP = _loc2_;
         F__rtld_free_tls();
         _loc2_ = int(_loc2_ + 16);
      }
      else
      {
         _loc2_ = int(_loc2_ - 16);
         si32(li32(_tls_init_size),_loc2_ + 8);
         si32(li32(_tls_init),_loc2_ + 4);
         si32(_loc1_,_loc2_);
         ESP = _loc2_;
         Fmemcpy();
         _loc2_ = int(_loc2_ + 16);
         _loc7_ = li32(_tls_init_size);
         var _loc4_:* = li32(_tls_static_space);
         _loc2_ = int(_loc2_ - 16);
         si32(int(_loc4_ - _loc7_),_loc2_ + 8);
         si32(0,_loc2_ + 4);
         _loc6_ = _loc9_ - _loc4_;
         _loc7_ = int(_loc6_ + _loc7_);
         si32(_loc7_,_loc2_);
         ESP = _loc2_;
         Fmemset();
         _loc2_ = int(_loc2_ + 16);
      }
      eax = _loc9_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
