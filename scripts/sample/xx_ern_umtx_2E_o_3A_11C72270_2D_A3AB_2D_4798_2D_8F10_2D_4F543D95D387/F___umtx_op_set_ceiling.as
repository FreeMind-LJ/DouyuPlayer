package sample.xx_ern_umtx_2E_o_3A_11C72270_2D_A3AB_2D_4798_2D_8F10_2D_4F543D95D387
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx.*;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si8;
   
   public function F___umtx_op_set_ceiling() : void
   {
      var _loc4_:* = 0;
      var _loc14_:* = 0;
      var _loc11_:* = 0;
      var _loc3_:* = 0;
      var _loc10_:* = 0;
      var _loc9_:* = 0;
      var _loc7_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc5_:* = 0;
      var _loc12_:* = 0;
      var _loc13_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc3_ = li32(_loc4_ + 4);
      _loc14_ = li32(_loc3_);
      _loc13_ = li32(_loc14_ + 4);
      _loc13_ = _loc13_ & 8;
      _loc12_ = 22;
      if(_loc13_ != 0)
      {
         _loc11_ = li32(_loc3_ + 8);
         if(uint(_loc11_) <= 31)
         {
            _loc3_ = li32(_loc3_ + 12);
            _loc13_ = li32(_loc4_);
            _loc10_ = li32(_loc13_);
            _loc9_ = li32(_loc13_ + 4);
            si32(5,_loc9_ + 12);
            si32(0,_loc9_ + 16);
            si32(_loc14_,_loc9_ + 20);
            si32(0,_loc9_ + 24);
            _loc13_ = int(_loc14_ * -1640562687);
            _loc8_ = int(_loc13_ >>> 25);
            si32(_loc8_,_loc9_ + 8);
            _loc7_ = _loc10_ | -2147483648;
            _loc12_ = 0;
            _loc1_ = 0;
            while(true)
            {
               _loc13_ = _loc12_ & 1;
               if(_loc13_ != 0)
               {
                  _loc13_ = int(_umtxq_chains + int(_loc8_ * 44));
                  _loc12_ = int(_loc13_ + 5632);
               }
               else
               {
                  _loc12_ = int(_umtxq_chains + int(_loc8_ * 44));
               }
               _loc2_ = int(_loc2_ - 16);
               si32(_loc12_,_loc2_);
               ESP = _loc2_;
               F_kmtx_lock();
               _loc2_ = int(_loc2_ + 16);
               _loc12_ = li32(_loc9_ + 8);
               _loc13_ = li32(_loc9_ + 12);
               if(_loc13_ <= 1)
               {
                  _loc13_ = int(_umtxq_chains + int(_loc12_ * 44));
                  _loc8_ = int(_loc13_ + 5632);
               }
               else
               {
                  _loc8_ = int(_umtxq_chains + int(_loc12_ * 44));
               }
               _loc13_ = li8(_loc8_ + 36);
               if(_loc13_ != 0)
               {
                  _loc12_ = li32(_loc8_ + 40);
                  do
                  {
                     _loc13_ = int(_loc12_ + 1);
                     si32(_loc13_,_loc8_ + 40);
                     _loc2_ = int(_loc2_ - 32);
                     si32(0,_loc2_ + 16);
                     si32(L__2E_str,_loc2_ + 12);
                     si32(0,_loc2_ + 8);
                     si32(_loc8_,_loc2_ + 4);
                     si32(_loc8_,_loc2_);
                     ESP = _loc2_;
                     F_kmsleep();
                     _loc2_ = int(_loc2_ + 32);
                     _loc13_ = li32(_loc8_ + 40);
                     _loc12_ = int(_loc13_ + -1);
                     si32(_loc12_,_loc8_ + 40);
                     _loc13_ = li8(_loc8_ + 36);
                  }
                  while(_loc13_ != 0);
                  
               }
               si8(1,_loc8_ + 36);
               _loc12_ = li32(_loc9_ + 8);
               _loc13_ = li32(_loc9_ + 12);
               if(_loc13_ <= 1)
               {
                  _loc13_ = int(_umtxq_chains + int(_loc12_ * 44));
                  _loc12_ = int(_loc13_ + 5632);
               }
               else
               {
                  _loc12_ = int(_umtxq_chains + int(_loc12_ * 44));
               }
               _loc2_ = int(_loc2_ - 16);
               si32(_loc12_,_loc2_);
               ESP = _loc2_;
               F_kmtx_unlock();
               _loc2_ = int(_loc2_ + 16);
               _loc8_ = li32(_loc14_ + 8);
               _loc2_ = int(_loc2_ - 16);
               si32(_loc7_,_loc2_ + 8);
               si32(-2147483648,_loc2_ + 4);
               si32(_loc14_,_loc2_);
               ESP = _loc2_;
               F___sync_val_compare_and_swap_4();
               _loc12_ = 14;
               _loc2_ = int(_loc2_ + 16);
               _loc5_ = int(eax);
               if(_loc5_ != -1)
               {
                  if(_loc5_ == -2147483648)
                  {
                     si32(_loc11_,_loc14_ + 8);
                     si32(-2147483648,_loc14_);
                     _loc12_ = 0;
                     break;
                  }
                  _loc13_ = _loc5_ & 2147483647;
                  if(_loc13_ == _loc10_)
                  {
                     si32(_loc11_,_loc14_ + 8);
                     _loc12_ = 0;
                     break;
                  }
                  _loc12_ = _loc1_;
                  if(_loc1_ == 0)
                  {
                     _loc1_ = li32(_loc9_ + 8);
                     _loc13_ = li32(_loc9_ + 12);
                     if(_loc13_ <= 1)
                     {
                        _loc13_ = int(_umtxq_chains + int(_loc1_ * 44));
                        _loc1_ = int(_loc13_ + 5632);
                     }
                     else
                     {
                        _loc1_ = int(_umtxq_chains + int(_loc1_ * 44));
                     }
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc1_,_loc2_);
                     ESP = _loc2_;
                     F_kmtx_lock();
                     _loc2_ = int(_loc2_ + 16);
                     _loc1_ = li32(_loc9_ + 8);
                     _loc13_ = li32(_loc9_ + 12);
                     if(_loc13_ <= 1)
                     {
                        _loc13_ = int(_umtxq_chains + int(_loc1_ * 44));
                        _loc1_ = int(_loc13_ + 5632);
                     }
                     else
                     {
                        _loc1_ = int(_umtxq_chains + int(_loc1_ * 44));
                     }
                     si32(0,_loc9_);
                     _loc13_ = li32(_loc1_ + 24);
                     si32(_loc13_,_loc9_ + 4);
                     _loc13_ = li32(_loc1_ + 24);
                     si32(_loc9_,_loc13_);
                     si32(_loc9_,_loc1_ + 24);
                     _loc13_ = li32(_loc9_ + 28);
                     _loc13_ = _loc13_ | 1;
                     si32(_loc13_,_loc9_ + 28);
                     _loc1_ = li32(_loc9_ + 8);
                     _loc13_ = li32(_loc9_ + 12);
                     if(_loc13_ <= 1)
                     {
                        _loc13_ = int(_umtxq_chains + int(_loc1_ * 44));
                        _loc1_ = int(_loc13_ + 5632);
                     }
                     else
                     {
                        _loc1_ = int(_umtxq_chains + int(_loc1_ * 44));
                     }
                     si8(0,_loc1_ + 36);
                     _loc13_ = li32(_loc1_ + 40);
                     if(_loc13_ != 0)
                     {
                        _loc2_ = int(_loc2_ - 16);
                        si32(_loc1_,_loc2_);
                        ESP = _loc2_;
                        F_kwakeup_one();
                        _loc2_ = int(_loc2_ + 16);
                     }
                     _loc5_ = li32(_loc9_ + 12);
                     _loc8_ = li32(_loc9_ + 8);
                     if(_loc5_ <= 1)
                     {
                        _loc13_ = int(_umtxq_chains + int(_loc8_ * 44));
                        _loc12_ = int(_loc13_ + 5632);
                     }
                     else
                     {
                        _loc12_ = int(_umtxq_chains + int(_loc8_ * 44));
                     }
                     _loc13_ = li8(_loc9_ + 28);
                     _loc13_ = _loc13_ & 1;
                     _loc1_ = 0;
                     if(_loc13_ != 0)
                     {
                        _loc2_ = int(_loc2_ - 32);
                        si32(0,_loc2_ + 16);
                        si32(L__2E_str3,_loc2_ + 12);
                        si32(256,_loc2_ + 8);
                        si32(_loc12_,_loc2_ + 4);
                        si32(_loc9_,_loc2_);
                        ESP = _loc2_;
                        F_kmsleep();
                        _loc1_ = 60;
                        _loc2_ = int(_loc2_ + 32);
                        _loc12_ = int(eax);
                        if(_loc12_ != 35)
                        {
                           _loc1_ = _loc12_;
                        }
                        _loc5_ = li32(_loc9_ + 12);
                        _loc8_ = li32(_loc9_ + 8);
                     }
                     if(_loc5_ <= 1)
                     {
                        _loc13_ = int(_umtxq_chains + int(_loc8_ * 44));
                        _loc12_ = int(_loc13_ + 5632);
                     }
                     else
                     {
                        _loc12_ = int(_umtxq_chains + int(_loc8_ * 44));
                     }
                     _loc13_ = li8(_loc9_ + 28);
                     _loc13_ = _loc13_ & 1;
                     if(_loc13_ != 0)
                     {
                        _loc5_ = li32(_loc9_ + 4);
                        _loc8_ = li32(_loc9_);
                        if(_loc8_ != 0)
                        {
                           si32(_loc5_,_loc8_ + 4);
                        }
                        else
                        {
                           si32(_loc5_,_loc12_ + 24);
                        }
                        var _loc6_:* = li32(_loc9_);
                        _loc13_ = li32(_loc9_ + 4);
                        si32(_loc6_,_loc13_);
                        _loc13_ = li32(_loc9_ + 28);
                        _loc13_ = _loc13_ & -2;
                        si32(_loc13_,_loc9_ + 28);
                        _loc5_ = li32(_loc9_ + 12);
                        _loc8_ = li32(_loc9_ + 8);
                     }
                     if(_loc5_ <= 1)
                     {
                        _loc13_ = int(_umtxq_chains + int(_loc8_ * 44));
                        _loc12_ = int(_loc13_ + 5632);
                     }
                     else
                     {
                        _loc12_ = int(_umtxq_chains + int(_loc8_ * 44));
                     }
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc12_,_loc2_);
                     ESP = _loc2_;
                     F_kmtx_unlock();
                     _loc2_ = int(_loc2_ + 16);
                     _loc13_ = li32(_loc9_ + 12);
                     _loc12_ = 1;
                     if(_loc13_ >= 2)
                     {
                        _loc12_ = 0;
                     }
                     _loc8_ = li32(_loc9_ + 8);
                     continue;
                  }
                  break;
               }
               break;
            }
            _loc11_ = li32(_loc9_ + 8);
            _loc13_ = li32(_loc9_ + 12);
            if(_loc13_ <= 1)
            {
               _loc13_ = int(_umtxq_chains + int(_loc11_ * 44));
               _loc11_ = int(_loc13_ + 5632);
            }
            else
            {
               _loc11_ = int(_umtxq_chains + int(_loc11_ * 44));
            }
            _loc2_ = int(_loc2_ - 16);
            si32(_loc11_,_loc2_);
            ESP = _loc2_;
            F_kmtx_lock();
            _loc2_ = int(_loc2_ + 16);
            if(_loc12_ == 0)
            {
               _loc11_ = li32(_loc9_ + 8);
               _loc13_ = li32(_loc9_ + 12);
               if(_loc13_ <= 1)
               {
                  _loc13_ = int(_umtxq_chains + int(_loc11_ * 44));
                  _loc11_ = int(_loc13_ + 5632);
               }
               else
               {
                  _loc11_ = int(_umtxq_chains + int(_loc11_ * 44));
               }
               _loc14_ = li32(_loc11_ + 20);
               _loc7_ = 2147483647;
               loop2:
               while(true)
               {
                  while(true)
                  {
                     _loc11_ = _loc14_;
                     if(_loc11_ != 0)
                     {
                        _loc1_ = li32(_loc11_ + 12);
                        _loc14_ = li32(_loc11_);
                        if(_loc1_ == li32(_loc9_ + 12))
                        {
                           _loc6_ = li32(_loc11_ + 20);
                           if(_loc6_ == li32(_loc9_ + 20))
                           {
                              _loc6_ = li32(_loc11_ + 24);
                              if(_loc6_ != li32(_loc9_ + 24))
                              {
                                 continue;
                              }
                              _loc10_ = li32(_loc11_ + 8);
                              if(_loc1_ <= 1)
                              {
                                 _loc13_ = int(_umtxq_chains + int(_loc10_ * 44));
                                 _loc10_ = int(_loc13_ + 5632);
                              }
                              else
                              {
                                 _loc10_ = int(_umtxq_chains + int(_loc10_ * 44));
                              }
                              _loc13_ = li8(_loc11_ + 28);
                              _loc13_ = _loc13_ & 1;
                              if(_loc13_ != 0)
                              {
                                 _loc1_ = li32(_loc11_ + 4);
                                 if(_loc14_ != 0)
                                 {
                                    si32(_loc1_,_loc14_ + 4);
                                 }
                                 else
                                 {
                                    si32(_loc1_,_loc10_ + 24);
                                 }
                                 _loc6_ = li32(_loc11_);
                                 _loc13_ = li32(_loc11_ + 4);
                                 si32(_loc6_,_loc13_);
                                 _loc13_ = li32(_loc11_ + 28);
                                 _loc13_ = _loc13_ & -2;
                                 si32(_loc13_,_loc11_ + 28);
                              }
                              _loc2_ = int(_loc2_ - 16);
                              si32(_loc11_,_loc2_);
                              ESP = _loc2_;
                              F_kwakeup();
                              _loc2_ = int(_loc2_ + 16);
                              _loc7_ = int(_loc7_ + -1);
                              if(_loc7_ != 0)
                              {
                                 continue loop2;
                              }
                              break;
                           }
                        }
                        continue;
                     }
                     break;
                  }
               }
            }
            _loc11_ = li32(_loc9_ + 8);
            _loc13_ = li32(_loc9_ + 12);
            if(_loc13_ <= 1)
            {
               _loc13_ = int(_umtxq_chains + int(_loc11_ * 44));
               _loc11_ = int(_loc13_ + 5632);
            }
            else
            {
               _loc11_ = int(_umtxq_chains + int(_loc11_ * 44));
            }
            si8(0,_loc11_ + 36);
            _loc13_ = li32(_loc11_ + 40);
            if(_loc13_ != 0)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_loc11_,_loc2_);
               ESP = _loc2_;
               F_kwakeup_one();
               _loc2_ = int(_loc2_ + 16);
            }
            _loc11_ = li32(_loc9_ + 8);
            _loc13_ = li32(_loc9_ + 12);
            if(_loc13_ <= 1)
            {
               _loc13_ = int(_umtxq_chains + int(_loc11_ * 44));
               _loc9_ = int(_loc13_ + 5632);
            }
            else
            {
               _loc9_ = int(_umtxq_chains + int(_loc11_ * 44));
            }
            _loc2_ = int(_loc2_ - 16);
            si32(_loc9_,_loc2_);
            ESP = _loc2_;
            F_kmtx_unlock();
            _loc2_ = int(_loc2_ + 16);
            if(_loc12_ == 0)
            {
               if(_loc3_ != 0)
               {
                  si32(_loc8_,_loc3_);
               }
            }
         }
      }
      eax = _loc12_;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
