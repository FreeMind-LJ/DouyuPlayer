package sample.xx_ern_umtx_2E_o_3A_11C72270_2D_A3AB_2D_4798_2D_8F10_2D_4F543D95D387
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx.*;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si8;
   
   public function F__do_lock_umtx() : void
   {
      var _loc4_:* = 0;
      var _loc11_:* = 0;
      var _loc14_:int = 0;
      var _loc13_:int = 0;
      var _loc15_:* = 0;
      var _loc8_:* = 0;
      var _loc1_:* = 0;
      var _loc3_:* = 0;
      var _loc12_:* = 0;
      var _loc10_:* = 0;
      var _loc9_:* = 0;
      var _loc5_:* = 0;
      var _loc7_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc3_ = li32(_loc4_ + 4);
      _loc15_ = int(_loc3_ * -1640562687);
      _loc14_ = _loc15_ >>> 25;
      _loc15_ = int(_loc14_ * 44);
      _loc13_ = _umtxq_chains + _loc15_;
      _loc12_ = li32(_loc4_ + 8);
      _loc11_ = _loc12_ | -2147483648;
      _loc10_ = li32(_loc4_ + 12);
      _loc9_ = li32(_loc4_);
      _loc8_ = 0;
      loop0:
      while(true)
      {
         while(true)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_loc12_,_loc2_ + 8);
            _loc1_ = 0;
            si32(_loc1_,_loc2_ + 4);
            si32(_loc3_,_loc2_);
            ESP = _loc2_;
            F___sync_val_compare_and_swap_4();
            _loc2_ = int(_loc2_ + 16);
            _loc5_ = int(eax);
            if(_loc5_ != 0)
            {
               if(_loc5_ != -1)
               {
                  if(_loc5_ == -2147483648)
                  {
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc11_,_loc2_ + 8);
                     si32(-2147483648,_loc2_ + 4);
                     si32(_loc3_,_loc2_);
                     ESP = _loc2_;
                     F___sync_val_compare_and_swap_4();
                     _loc1_ = 0;
                     _loc2_ = int(_loc2_ + 16);
                     _loc5_ = int(eax);
                     if(_loc5_ != -2147483648)
                     {
                        if(_loc5_ != -1)
                        {
                           continue;
                        }
                     }
                     break;
                  }
                  _loc1_ = _loc8_;
                  if(_loc8_ == 0)
                  {
                     si32(2,_loc9_ + 12);
                     si32(0,_loc9_ + 16);
                     si32(_loc3_,_loc9_ + 20);
                     si32(0,_loc9_ + 24);
                     si32(_loc14_,_loc9_ + 8);
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc13_,_loc2_);
                     ESP = _loc2_;
                     F_kmtx_lock();
                     _loc2_ = int(_loc2_ + 16);
                     _loc8_ = li32(_loc9_ + 8);
                     _loc15_ = li32(_loc9_ + 12);
                     if(_loc15_ <= 1)
                     {
                        _loc15_ = int(_umtxq_chains + int(_loc8_ * 44));
                        _loc8_ = int(_loc15_ + 5632);
                     }
                     else
                     {
                        _loc8_ = int(_umtxq_chains + int(_loc8_ * 44));
                     }
                     _loc15_ = li8(_loc8_ + 36);
                     if(_loc15_ != 0)
                     {
                        _loc1_ = li32(_loc8_ + 40);
                        do
                        {
                           _loc15_ = int(_loc1_ + 1);
                           si32(_loc15_,_loc8_ + 40);
                           _loc2_ = int(_loc2_ - 32);
                           si32(0,_loc2_ + 16);
                           si32(L__2E_str,_loc2_ + 12);
                           si32(0,_loc2_ + 8);
                           si32(_loc8_,_loc2_ + 4);
                           si32(_loc8_,_loc2_);
                           ESP = _loc2_;
                           F_kmsleep();
                           _loc2_ = int(_loc2_ + 32);
                           _loc15_ = li32(_loc8_ + 40);
                           _loc1_ = int(_loc15_ + -1);
                           si32(_loc1_,_loc8_ + 40);
                           _loc15_ = li8(_loc8_ + 36);
                        }
                        while(_loc15_ != 0);
                        
                     }
                     si8(1,_loc8_ + 36);
                     _loc8_ = li32(_loc9_ + 8);
                     _loc15_ = li32(_loc9_ + 12);
                     if(_loc15_ <= 1)
                     {
                        _loc15_ = int(_umtxq_chains + int(_loc8_ * 44));
                        _loc8_ = int(_loc15_ + 5632);
                     }
                     else
                     {
                        _loc8_ = int(_umtxq_chains + int(_loc8_ * 44));
                     }
                     si32(0,_loc9_);
                     _loc15_ = li32(_loc8_ + 24);
                     si32(_loc15_,_loc9_ + 4);
                     _loc15_ = li32(_loc8_ + 24);
                     si32(_loc9_,_loc15_);
                     si32(_loc9_,_loc8_ + 24);
                     _loc15_ = li32(_loc9_ + 28);
                     _loc15_ = _loc15_ | 1;
                     si32(_loc15_,_loc9_ + 28);
                     _loc8_ = li32(_loc9_ + 8);
                     _loc15_ = li32(_loc9_ + 12);
                     if(_loc15_ <= 1)
                     {
                        _loc15_ = int(_umtxq_chains + int(_loc8_ * 44));
                        _loc8_ = int(_loc15_ + 5632);
                     }
                     else
                     {
                        _loc8_ = int(_umtxq_chains + int(_loc8_ * 44));
                     }
                     si8(0,_loc8_ + 36);
                     _loc15_ = li32(_loc8_ + 40);
                     if(_loc15_ != 0)
                     {
                        _loc2_ = int(_loc2_ - 16);
                        si32(_loc8_,_loc2_);
                        ESP = _loc2_;
                        F_kwakeup_one();
                        _loc2_ = int(_loc2_ + 16);
                     }
                     _loc8_ = li32(_loc9_ + 8);
                     _loc15_ = li32(_loc9_ + 12);
                     if(_loc15_ <= 1)
                     {
                        _loc15_ = int(_umtxq_chains + int(_loc8_ * 44));
                        _loc8_ = int(_loc15_ + 5632);
                     }
                     else
                     {
                        _loc8_ = int(_umtxq_chains + int(_loc8_ * 44));
                     }
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc8_,_loc2_);
                     ESP = _loc2_;
                     F_kmtx_unlock();
                     _loc2_ = int(_loc2_ + 16);
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc3_,_loc2_);
                     si32(_loc5_,_loc2_ + 4);
                     _loc15_ = _loc5_ | -2147483648;
                     si32(_loc15_,_loc2_ + 8);
                     ESP = _loc2_;
                     F___sync_val_compare_and_swap_4();
                     _loc2_ = int(_loc2_ + 16);
                     _loc1_ = int(eax);
                     _loc8_ = li32(_loc9_ + 8);
                     _loc15_ = li32(_loc9_ + 12);
                     if(_loc15_ <= 1)
                     {
                        _loc15_ = int(_umtxq_chains + int(_loc8_ * 44));
                        _loc8_ = int(_loc15_ + 5632);
                     }
                     else
                     {
                        _loc8_ = int(_umtxq_chains + int(_loc8_ * 44));
                     }
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc8_,_loc2_);
                     ESP = _loc2_;
                     F_kmtx_lock();
                     _loc2_ = int(_loc2_ + 16);
                     if(_loc1_ == -1)
                     {
                        _loc12_ = li32(_loc9_ + 12);
                        _loc10_ = li32(_loc9_ + 8);
                        if(_loc12_ <= 1)
                        {
                           _loc15_ = int(_umtxq_chains + int(_loc10_ * 44));
                           _loc3_ = int(_loc15_ + 5632);
                        }
                        else
                        {
                           _loc3_ = int(_umtxq_chains + int(_loc10_ * 44));
                        }
                        _loc15_ = li8(_loc9_ + 28);
                        _loc15_ = _loc15_ & 1;
                        if(_loc15_ != 0)
                        {
                           _loc10_ = li32(_loc9_ + 4);
                           _loc12_ = li32(_loc9_);
                           if(_loc12_ != 0)
                           {
                              si32(_loc10_,_loc12_ + 4);
                           }
                           else
                           {
                              si32(_loc10_,_loc3_ + 24);
                           }
                           _loc15_ = li32(_loc9_);
                           var _loc6_:* = li32(_loc9_ + 4);
                           si32(_loc15_,_loc6_);
                           _loc15_ = li32(_loc9_ + 28);
                           _loc15_ = _loc15_ & -2;
                           si32(_loc15_,_loc9_ + 28);
                           _loc12_ = li32(_loc9_ + 12);
                           _loc10_ = li32(_loc9_ + 8);
                        }
                        if(_loc12_ <= 1)
                        {
                           _loc15_ = int(_umtxq_chains + int(_loc10_ * 44));
                           _loc9_ = int(_loc15_ + 5632);
                        }
                        else
                        {
                           _loc9_ = int(_umtxq_chains + int(_loc10_ * 44));
                        }
                        _loc2_ = int(_loc2_ - 16);
                        si32(_loc9_,_loc2_);
                        ESP = _loc2_;
                        F_kmtx_unlock();
                        _loc2_ = int(_loc2_ + 16);
                        _loc1_ = 14;
                        break;
                     }
                     _loc8_ = 0;
                     if(_loc1_ == _loc5_)
                     {
                        _loc5_ = li32(_loc9_ + 8);
                        _loc15_ = li32(_loc9_ + 12);
                        if(_loc15_ <= 1)
                        {
                           _loc15_ = int(_umtxq_chains + int(_loc5_ * 44));
                           _loc5_ = int(_loc15_ + 5632);
                        }
                        else
                        {
                           _loc5_ = int(_umtxq_chains + int(_loc5_ * 44));
                        }
                        _loc15_ = li8(_loc9_ + 28);
                        _loc15_ = _loc15_ & 1;
                        _loc8_ = 0;
                        if(_loc15_ != 0)
                        {
                           _loc2_ = int(_loc2_ - 32);
                           si32(_loc10_,_loc2_ + 16);
                           si32(L__2E_str4,_loc2_ + 12);
                           si32(256,_loc2_ + 8);
                           si32(_loc5_,_loc2_ + 4);
                           si32(_loc9_,_loc2_);
                           ESP = _loc2_;
                           F_kmsleep();
                           _loc8_ = 60;
                           _loc2_ = int(_loc2_ + 32);
                           _loc5_ = int(eax);
                           if(_loc5_ != 35)
                           {
                              _loc8_ = _loc5_;
                           }
                        }
                     }
                     _loc1_ = li32(_loc9_ + 12);
                     _loc7_ = li32(_loc9_ + 8);
                     if(_loc1_ <= 1)
                     {
                        _loc15_ = int(_umtxq_chains + int(_loc7_ * 44));
                        _loc5_ = int(_loc15_ + 5632);
                     }
                     else
                     {
                        _loc5_ = int(_umtxq_chains + int(_loc7_ * 44));
                     }
                     _loc15_ = li8(_loc9_ + 28);
                     _loc15_ = _loc15_ & 1;
                     if(_loc15_ != 0)
                     {
                        _loc7_ = li32(_loc9_ + 4);
                        _loc1_ = li32(_loc9_);
                        if(_loc1_ != 0)
                        {
                           si32(_loc7_,_loc1_ + 4);
                        }
                        else
                        {
                           si32(_loc7_,_loc5_ + 24);
                        }
                        _loc6_ = li32(_loc9_);
                        _loc15_ = li32(_loc9_ + 4);
                        si32(_loc6_,_loc15_);
                        _loc15_ = li32(_loc9_ + 28);
                        _loc15_ = _loc15_ & -2;
                        si32(_loc15_,_loc9_ + 28);
                        _loc1_ = li32(_loc9_ + 12);
                        _loc7_ = li32(_loc9_ + 8);
                     }
                     if(_loc1_ <= 1)
                     {
                        _loc15_ = int(_umtxq_chains + int(_loc7_ * 44));
                        _loc5_ = int(_loc15_ + 5632);
                     }
                     else
                     {
                        _loc5_ = int(_umtxq_chains + int(_loc7_ * 44));
                     }
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc5_,_loc2_);
                     ESP = _loc2_;
                     F_kmtx_unlock();
                     _loc2_ = int(_loc2_ + 16);
                     continue loop0;
                  }
                  break;
               }
               _loc1_ = 14;
               break;
            }
            break;
         }
         eax = _loc1_;
         _loc2_ = _loc4_;
         ESP = _loc2_;
         return;
      }
   }
}
