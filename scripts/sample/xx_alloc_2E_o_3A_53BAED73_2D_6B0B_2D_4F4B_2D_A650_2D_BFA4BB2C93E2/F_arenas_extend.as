package sample.xx_alloc_2E_o_3A_53BAED73_2D_6B0B_2D_4F4B_2D_A650_2D_BFA4BB2C93E2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx.*;
   import avm2.intrinsics.memory.li8;
   
   public function F_arenas_extend() : void
   {
      var _loc4_:* = 0;
      var _loc7_:int = 0;
      var _loc3_:* = 0;
      var _loc6_:int = 0;
      var _loc1_:int = 0;
      var _loc10_:* = 0;
      var _loc8_:int = 0;
      var _loc11_:int = 0;
      var _loc9_:int = 0;
      var _loc13_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc3_ = li32(_nbins);
      _loc2_ = int(_loc2_ - 16);
      _loc3_ = int(_loc3_ * 40);
      _loc3_ = int(_loc3_ + 60);
      si32(_loc3_,_loc2_);
      ESP = _loc2_;
      F_base_alloc();
      _loc2_ = int(_loc2_ + 16);
      _loc13_ = int(eax);
      if(_loc13_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_base_calloc,_loc2_ + 4);
         si32(_loc13_,_loc2_);
         ESP = _loc2_;
         F__pthread_mutex_init_calloc_cb();
         _loc2_ = int(_loc2_ + 16);
         if(int(eax) == 0)
         {
            si32(int(_loc13_ + 8),_loc13_ + 4);
            si32(int(_loc13_ + 8),_loc13_ + 12);
            si32(int(_loc13_ + 8) & -2,_loc13_ + 16);
            si32(0,_loc13_ + 36);
            si32(0,_loc13_ + 40);
            si32(int(_loc13_ + 48),_loc13_ + 44);
            si32(int(_loc13_ + 48),_loc13_ + 48);
            si32(int(_loc13_ + 48) & -2,_loc13_ + 52);
            si32(0,_loc13_ + 60);
            si32(int(_loc13_ + 68),_loc13_ + 64);
            si32(int(_loc13_ + 68),_loc13_ + 68);
            si32(int(_loc13_ + 68) & -2,_loc13_ + 72);
            si32(2,_loc13_ + 80);
            _loc2_ = int(_loc2_ - 16);
            si32(4096,_loc2_ + 4);
            si32(int(_loc13_ + 60),_loc2_);
            ESP = _loc2_;
            F_arena_bin_run_size_calc();
            _loc2_ = int(_loc2_ + 16);
            si32(0,_loc13_ + 100);
            var _loc12_:* = int(_loc13_ + 108);
            si32(_loc12_,_loc13_ + 104);
            si32(_loc12_,_loc13_ + 108);
            _loc12_ = _loc12_ & -2;
            si32(_loc12_,_loc13_ + 112);
            si32(4,_loc13_ + 120);
            _loc2_ = int(_loc2_ - 16);
            si32(int(eax),_loc2_ + 4);
            si32(int(_loc13_ + 100),_loc2_);
            ESP = _loc2_;
            F_arena_bin_run_size_calc();
            _loc2_ = int(_loc2_ + 16);
            si32(0,_loc13_ + 140);
            _loc12_ = int(_loc13_ + 148);
            si32(_loc12_,_loc13_ + 144);
            si32(_loc12_,_loc13_ + 148);
            _loc12_ = _loc12_ & -2;
            si32(_loc12_,_loc13_ + 152);
            si32(8,_loc13_ + 160);
            _loc2_ = int(_loc2_ - 16);
            si32(int(eax),_loc2_ + 4);
            si32(int(_loc13_ + 140),_loc2_);
            ESP = _loc2_;
            F_arena_bin_run_size_calc();
            _loc2_ = int(_loc2_ + 16);
            _loc11_ = eax;
            _loc10_ = li32(_nqbins);
            _loc9_ = 3;
            if(uint(int(_loc10_ + 3)) >= 4)
            {
               _loc8_ = _loc13_ + 188;
               _loc7_ = _loc13_ + 180;
               _loc9_ = 3;
               _loc6_ = 16;
               _loc1_ = 0;
               do
               {
                  _loc12_ = int(_loc7_ + _loc1_);
                  si32(0,_loc12_);
                  var _loc5_:* = int(_loc8_ + _loc1_);
                  _loc3_ = int(_loc13_ + _loc1_);
                  si32(_loc5_,_loc3_ + 184);
                  _loc5_ = int(_loc8_ + _loc1_);
                  si32(_loc5_,_loc3_ + 188);
                  _loc5_ = int(_loc8_ + _loc1_);
                  _loc5_ = _loc5_ & -2;
                  si32(_loc5_,_loc3_ + 192);
                  si32(_loc6_,_loc3_ + 200);
                  _loc2_ = int(_loc2_ - 16);
                  si32(_loc11_,_loc2_ + 4);
                  si32(_loc12_,_loc2_);
                  ESP = _loc2_;
                  F_arena_bin_run_size_calc();
                  _loc6_ = _loc6_ + 16;
                  _loc9_ = _loc9_ + 1;
                  _loc1_ = _loc1_ + 40;
                  _loc2_ = int(_loc2_ + 16);
                  _loc11_ = eax;
                  _loc10_ = li32(_nqbins);
                  _loc3_ = int(_loc10_ + 3);
               }
               while(uint(_loc3_) > uint(_loc9_));
               
            }
            _loc3_ = li32(_ncbins);
            _loc3_ = int(_loc10_ + _loc3_);
            _loc3_ = int(_loc3_ + 3);
            if(uint(_loc3_) > uint(_loc9_))
            {
               _loc6_ = int(_loc9_ * 40) + 60;
               _loc8_ = int(_loc9_ * 40) + 68;
               do
               {
                  _loc3_ = int(_loc9_ * 10);
                  _loc3_ = _loc3_ << 2;
                  _loc3_ = int(_loc13_ + _loc3_);
                  si32(0,_loc3_ + 60);
                  _loc12_ = int(_loc13_ + _loc8_);
                  si32(_loc12_,_loc3_ + 64);
                  si32(_loc12_,_loc3_ + 68);
                  _loc12_ = _loc12_ & -2;
                  si32(_loc12_,_loc3_ + 72);
                  _loc12_ = li32(_nqbins);
                  _loc12_ = int(_loc9_ - _loc12_);
                  _loc5_ = _loc12_ << 6;
                  _loc12_ = li32(_cspace_min);
                  _loc12_ = int(_loc12_ + _loc5_);
                  _loc12_ = int(_loc12_ + -192);
                  si32(_loc12_,_loc3_ + 80);
                  _loc2_ = int(_loc2_ - 16);
                  si32(_loc11_,_loc2_ + 4);
                  _loc3_ = int(_loc13_ + _loc6_);
                  si32(_loc3_,_loc2_);
                  ESP = _loc2_;
                  F_arena_bin_run_size_calc();
                  _loc2_ = int(_loc2_ + 16);
                  _loc11_ = eax;
                  _loc12_ = li32(_ncbins);
                  _loc3_ = li32(_nqbins);
                  _loc3_ = int(_loc3_ + _loc12_);
                  _loc3_ = int(_loc3_ + 3);
                  _loc8_ = _loc8_ + 40;
                  _loc6_ = _loc6_ + 40;
                  _loc9_ = _loc9_ + 1;
               }
               while(uint(_loc3_) > uint(_loc9_));
               
            }
            _loc3_ = li32(_nbins);
            if(uint(_loc9_) < uint(_loc3_))
            {
               _loc8_ = int(_loc9_ * 40) + 60;
               _loc6_ = int(_loc9_ * 40) + 68;
               do
               {
                  _loc3_ = int(_loc9_ * 10);
                  _loc3_ = _loc3_ << 2;
                  _loc3_ = int(_loc13_ + _loc3_);
                  si32(0,_loc3_ + 60);
                  _loc12_ = int(_loc13_ + _loc6_);
                  si32(_loc12_,_loc3_ + 64);
                  si32(_loc12_,_loc3_ + 68);
                  _loc12_ = _loc12_ & -2;
                  si32(_loc12_,_loc3_ + 72);
                  _loc12_ = li32(_nqbins);
                  _loc5_ = int(0 - _loc12_);
                  _loc12_ = li32(_ncbins);
                  _loc12_ = int(_loc5_ - _loc12_);
                  _loc12_ = int(_loc9_ + _loc12_);
                  _loc5_ = _loc12_ << 8;
                  _loc12_ = li32(_sspace_min);
                  _loc12_ = int(_loc12_ + _loc5_);
                  _loc12_ = int(_loc12_ + -768);
                  si32(_loc12_,_loc3_ + 80);
                  _loc2_ = int(_loc2_ - 16);
                  si32(_loc11_,_loc2_ + 4);
                  _loc3_ = int(_loc13_ + _loc8_);
                  si32(_loc3_,_loc2_);
                  ESP = _loc2_;
                  F_arena_bin_run_size_calc();
                  _loc6_ = _loc6_ + 40;
                  _loc8_ = _loc8_ + 40;
                  _loc9_ = _loc9_ + 1;
                  _loc2_ = int(_loc2_ + 16);
                  _loc11_ = eax;
                  _loc3_ = li32(_nbins);
               }
               while(uint(_loc9_) < uint(_loc3_));
               
            }
            _loc3_ = li32(_loc4_);
            _loc3_ = _loc3_ << 2;
            _loc12_ = li32(_arenas);
            _loc3_ = int(_loc12_ + _loc3_);
            si32(_loc13_,_loc3_);
         }
         addr902:
         eax = _loc13_;
         _loc2_ = _loc4_;
         ESP = _loc2_;
         return;
      }
      _loc3_ = li32(__malloc_message);
      ESP = _loc2_;
      F__getprogname();
      _loc12_ = int(eax);
      _loc2_ = int(_loc2_ - 16);
      si32(L__2E_str2,_loc2_ + 12);
      si32(L__2E_str2,_loc2_ + 8);
      si32(L__2E_str40,_loc2_ + 4);
      si32(_loc12_,_loc2_);
      ESP = _loc2_;
      ptr2fun[_loc3_]();
      _loc2_ = int(_loc2_ + 16);
      _loc3_ = li8(_opt_abort_2E_b);
      if(_loc3_ == 1)
      {
         ESP = _loc2_;
         F_abort();
      }
      _loc3_ = li32(_arenas);
      _loc13_ = li32(_loc3_);
      §§goto(addr902);
   }
}
