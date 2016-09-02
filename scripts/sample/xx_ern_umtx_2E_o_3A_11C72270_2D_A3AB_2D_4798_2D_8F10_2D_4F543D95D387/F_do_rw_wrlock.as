package sample.xx_ern_umtx_2E_o_3A_11C72270_2D_A3AB_2D_4798_2D_8F10_2D_4F543D95D387
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx.*;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si8;
   
   public function F_do_rw_wrlock() : void
   {
      var _loc4_:* = 0;
      var _loc5_:* = 0;
      var _loc10_:* = 0;
      var _loc8_:* = 0;
      var _loc3_:* = 0;
      var _loc11_:* = 0;
      var _loc7_:* = 0;
      var _loc13_:* = 0;
      var _loc6_:* = 0;
      var _loc9_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc3_ = li32(_loc4_ + 4);
      _loc13_ = li32(_loc3_ + 4);
      _loc13_ = li32(_loc4_);
      si32(6,_loc13_ + 12);
      si32(0,_loc13_ + 16);
      si32(_loc3_,_loc13_ + 20);
      si32(0,_loc13_ + 24);
      var _loc12_:* = int(_loc3_ * -1640562687);
      _loc12_ = int(_loc12_ >>> 25);
      si32(_loc12_,_loc13_ + 8);
      _loc11_ = li32(_loc4_ + 8);
      _loc10_ = 0;
      _loc9_ = 0;
      while(true)
      {
         loop1:
         while(true)
         {
            _loc8_ = li32(_loc3_);
            while(true)
            {
               _loc7_ = _loc8_;
               if(_loc7_ >= 0)
               {
                  _loc12_ = _loc7_ & 536870911;
                  if(_loc12_ != 0)
                  {
                     break;
                  }
                  _loc2_ = int(_loc2_ - 16);
                  si32(_loc7_,_loc2_ + 4);
                  si32(_loc3_,_loc2_);
                  _loc12_ = _loc7_ | -2147483648;
                  si32(_loc12_,_loc2_ + 8);
                  ESP = _loc2_;
                  F___sync_val_compare_and_swap_4();
                  _loc6_ = 0;
                  _loc2_ = int(_loc2_ + 16);
                  _loc8_ = int(eax);
                  if(_loc8_ != _loc7_)
                  {
                     continue;
                  }
                  addr2174:
                  eax = _loc6_;
                  _loc2_ = _loc4_;
                  ESP = _loc2_;
                  return;
               }
               break;
            }
            if(_loc9_ != 0)
            {
               _loc6_ = _loc9_;
               if(uint(_loc7_) <= 1073741823)
               {
                  _loc6_ = _loc9_;
                  if(_loc10_ != 0)
                  {
                     _loc3_ = li32(_loc13_ + 8);
                     _loc12_ = li32(_loc13_ + 12);
                     if(_loc12_ <= 1)
                     {
                        _loc12_ = int(_umtxq_chains + int(_loc3_ * 44));
                        _loc3_ = int(_loc12_ + 5632);
                     }
                     else
                     {
                        _loc3_ = int(_umtxq_chains + int(_loc3_ * 44));
                     }
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc3_,_loc2_);
                     ESP = _loc2_;
                     F_kmtx_lock();
                     _loc2_ = int(_loc2_ + 16);
                     _loc3_ = li32(_loc13_ + 8);
                     _loc12_ = li32(_loc13_ + 12);
                     if(_loc12_ <= 1)
                     {
                        _loc12_ = int(_umtxq_chains + int(_loc3_ * 44));
                        _loc11_ = int(_loc12_ + 5632);
                     }
                     else
                     {
                        _loc11_ = int(_umtxq_chains + int(_loc3_ * 44));
                     }
                     _loc12_ = li8(_loc11_ + 36);
                     if(_loc12_ != 0)
                     {
                        _loc3_ = li32(_loc11_ + 40);
                        do
                        {
                           _loc12_ = int(_loc3_ + 1);
                           si32(_loc12_,_loc11_ + 40);
                           _loc2_ = int(_loc2_ - 32);
                           si32(0,_loc2_ + 16);
                           si32(L__2E_str,_loc2_ + 12);
                           si32(0,_loc2_ + 8);
                           si32(_loc11_,_loc2_ + 4);
                           si32(_loc11_,_loc2_);
                           ESP = _loc2_;
                           F_kmsleep();
                           _loc2_ = int(_loc2_ + 32);
                           _loc12_ = li32(_loc11_ + 40);
                           _loc3_ = int(_loc12_ + -1);
                           si32(_loc3_,_loc11_ + 40);
                           _loc12_ = li8(_loc11_ + 36);
                        }
                        while(_loc12_ != 0);
                        
                     }
                     si8(1,_loc11_ + 36);
                     _loc3_ = li32(_loc13_ + 8);
                     _loc12_ = li32(_loc13_ + 12);
                     if(_loc12_ <= 1)
                     {
                        _loc12_ = int(_umtxq_chains + int(_loc3_ * 44));
                        _loc3_ = int(_loc12_ + 5632);
                     }
                     else
                     {
                        _loc3_ = int(_umtxq_chains + int(_loc3_ * 44));
                     }
                     _loc3_ = li32(_loc3_ + 20);
                     _loc11_ = 2147483647;
                     loop9:
                     while(true)
                     {
                        while(true)
                        {
                           _loc10_ = _loc3_;
                           if(_loc10_ != 0)
                           {
                              _loc7_ = li32(_loc10_ + 12);
                              _loc3_ = li32(_loc10_);
                              if(_loc7_ == li32(_loc13_ + 12))
                              {
                                 _loc12_ = li32(_loc10_ + 20);
                                 if(_loc12_ == li32(_loc13_ + 20))
                                 {
                                    _loc12_ = li32(_loc10_ + 24);
                                    if(_loc12_ != li32(_loc13_ + 24))
                                    {
                                       continue;
                                    }
                                    _loc8_ = li32(_loc10_ + 8);
                                    if(_loc7_ <= 1)
                                    {
                                       _loc12_ = int(_umtxq_chains + int(_loc8_ * 44));
                                       _loc7_ = int(_loc12_ + 5632);
                                    }
                                    else
                                    {
                                       _loc7_ = int(_umtxq_chains + int(_loc8_ * 44));
                                    }
                                    _loc12_ = li8(_loc10_ + 28);
                                    _loc12_ = _loc12_ & 1;
                                    if(_loc12_ != 0)
                                    {
                                       _loc8_ = li32(_loc10_ + 4);
                                       if(_loc3_ != 0)
                                       {
                                          si32(_loc8_,_loc3_ + 4);
                                       }
                                       else
                                       {
                                          si32(_loc8_,_loc7_ + 24);
                                       }
                                       var _loc1_:* = li32(_loc10_);
                                       _loc12_ = li32(_loc10_ + 4);
                                       si32(_loc1_,_loc12_);
                                       _loc12_ = li32(_loc10_ + 28);
                                       _loc12_ = _loc12_ & -2;
                                       si32(_loc12_,_loc10_ + 28);
                                    }
                                    _loc2_ = int(_loc2_ - 16);
                                    si32(_loc10_,_loc2_);
                                    ESP = _loc2_;
                                    F_kwakeup();
                                    _loc2_ = int(_loc2_ + 16);
                                    _loc11_ = int(_loc11_ + -1);
                                    if(_loc11_ != 0)
                                    {
                                       continue loop9;
                                    }
                                    break;
                                 }
                              }
                              continue;
                           }
                           break;
                        }
                        _loc3_ = li32(_loc13_ + 8);
                        _loc12_ = li32(_loc13_ + 12);
                        if(_loc12_ <= 1)
                        {
                           _loc12_ = int(_umtxq_chains + int(_loc3_ * 44));
                           _loc3_ = int(_loc12_ + 5632);
                        }
                        else
                        {
                           _loc3_ = int(_umtxq_chains + int(_loc3_ * 44));
                        }
                        si8(0,_loc3_ + 36);
                        _loc12_ = li32(_loc3_ + 40);
                        if(_loc12_ != 0)
                        {
                           _loc2_ = int(_loc2_ - 16);
                           si32(_loc3_,_loc2_);
                           ESP = _loc2_;
                           F_kwakeup_one();
                           _loc2_ = int(_loc2_ + 16);
                        }
                        _loc3_ = li32(_loc13_ + 8);
                        _loc12_ = li32(_loc13_ + 12);
                        if(_loc12_ <= 1)
                        {
                           _loc12_ = int(_umtxq_chains + int(_loc3_ * 44));
                           _loc13_ = int(_loc12_ + 5632);
                        }
                        else
                        {
                           _loc13_ = int(_umtxq_chains + int(_loc3_ * 44));
                        }
                        _loc2_ = int(_loc2_ - 16);
                        si32(_loc13_,_loc2_);
                        ESP = _loc2_;
                        F_kmtx_unlock();
                        _loc2_ = int(_loc2_ + 16);
                        _loc6_ = _loc9_;
                     }
                  }
               }
               §§goto(addr2174);
            }
            else
            {
               _loc8_ = li32(_loc13_ + 8);
               _loc12_ = li32(_loc13_ + 12);
               if(_loc12_ <= 1)
               {
                  _loc12_ = int(_umtxq_chains + int(_loc8_ * 44));
                  _loc8_ = int(_loc12_ + 5632);
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
               _loc8_ = li32(_loc13_ + 8);
               _loc12_ = li32(_loc13_ + 12);
               if(_loc12_ <= 1)
               {
                  _loc12_ = int(_umtxq_chains + int(_loc8_ * 44));
                  _loc8_ = int(_loc12_ + 5632);
               }
               else
               {
                  _loc8_ = int(_umtxq_chains + int(_loc8_ * 44));
               }
               _loc12_ = li8(_loc8_ + 36);
               if(_loc12_ != 0)
               {
                  _loc7_ = li32(_loc8_ + 40);
                  do
                  {
                     _loc12_ = int(_loc7_ + 1);
                     si32(_loc12_,_loc8_ + 40);
                     _loc2_ = int(_loc2_ - 32);
                     si32(0,_loc2_ + 16);
                     si32(L__2E_str,_loc2_ + 12);
                     si32(0,_loc2_ + 8);
                     si32(_loc8_,_loc2_ + 4);
                     si32(_loc8_,_loc2_);
                     ESP = _loc2_;
                     F_kmsleep();
                     _loc2_ = int(_loc2_ + 32);
                     _loc12_ = li32(_loc8_ + 40);
                     _loc7_ = int(_loc12_ + -1);
                     si32(_loc7_,_loc8_ + 40);
                     _loc12_ = li8(_loc8_ + 36);
                  }
                  while(_loc12_ != 0);
                  
               }
               si8(1,_loc8_ + 36);
               _loc8_ = li32(_loc13_ + 8);
               _loc12_ = li32(_loc13_ + 12);
               if(_loc12_ <= 1)
               {
                  _loc12_ = int(_umtxq_chains + int(_loc8_ * 44));
                  _loc8_ = int(_loc12_ + 5632);
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
               _loc7_ = li32(_loc3_);
               while(true)
               {
                  _loc8_ = _loc7_;
                  _loc6_ = 1;
                  if(_loc8_ >= 0)
                  {
                     _loc6_ = 0;
                  }
                  _loc5_ = _loc8_ & 536870911;
                  _loc7_ = 1;
                  if(_loc5_ == 0)
                  {
                     _loc7_ = 0;
                  }
                  _loc12_ = _loc8_ & 1073741824;
                  if(_loc12_ == 0)
                  {
                     _loc12_ = _loc6_ | _loc7_;
                     if(_loc12_ == 0)
                     {
                        break;
                     }
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc8_,_loc2_ + 4);
                     si32(_loc3_,_loc2_);
                     _loc12_ = _loc8_ | 1073741824;
                     si32(_loc12_,_loc2_ + 8);
                     ESP = _loc2_;
                     F___sync_val_compare_and_swap_4();
                     _loc2_ = int(_loc2_ + 16);
                     _loc7_ = int(eax);
                     if(_loc7_ != _loc8_)
                     {
                        continue;
                     }
                     break loop1;
                  }
                  break;
               }
               if(_loc8_ >= 0)
               {
                  if(_loc5_ == 0)
                  {
                     _loc8_ = li32(_loc13_ + 8);
                     _loc12_ = li32(_loc13_ + 12);
                     if(_loc12_ <= 1)
                     {
                        _loc12_ = int(_umtxq_chains + int(_loc8_ * 44));
                        _loc8_ = int(_loc12_ + 5632);
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
                     _loc8_ = li32(_loc13_ + 8);
                     _loc12_ = li32(_loc13_ + 12);
                     if(_loc12_ <= 1)
                     {
                        _loc12_ = int(_umtxq_chains + int(_loc8_ * 44));
                        _loc8_ = int(_loc12_ + 5632);
                     }
                     else
                     {
                        _loc8_ = int(_umtxq_chains + int(_loc8_ * 44));
                     }
                     si8(0,_loc8_ + 36);
                     _loc12_ = li32(_loc8_ + 40);
                     if(_loc12_ != 0)
                     {
                        _loc2_ = int(_loc2_ - 16);
                        si32(_loc8_,_loc2_);
                        ESP = _loc2_;
                        F_kwakeup_one();
                        _loc2_ = int(_loc2_ + 16);
                     }
                     _loc8_ = li32(_loc13_ + 8);
                     _loc12_ = li32(_loc13_ + 12);
                     if(_loc12_ <= 1)
                     {
                        _loc12_ = int(_umtxq_chains + int(_loc8_ * 44));
                        _loc8_ = int(_loc12_ + 5632);
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
                     continue;
                  }
                  break;
               }
               break;
            }
         }
         _loc12_ = li32(_loc3_ + 12);
         _loc12_ = int(_loc12_ + 1);
         si32(_loc12_,_loc3_ + 12);
         while(true)
         {
            if(_loc8_ >= 0)
            {
               _loc12_ = _loc8_ & 536870911;
               if(_loc12_ == 0)
               {
               }
               break;
            }
            _loc9_ = li32(_loc13_ + 8);
            _loc12_ = li32(_loc13_ + 12);
            if(_loc12_ <= 1)
            {
               _loc12_ = int(_umtxq_chains + int(_loc9_ * 44));
               _loc9_ = int(_loc12_ + 5632);
            }
            else
            {
               _loc9_ = int(_umtxq_chains + int(_loc9_ * 44));
            }
            _loc2_ = int(_loc2_ - 16);
            si32(_loc9_,_loc2_);
            ESP = _loc2_;
            F_kmtx_lock();
            _loc2_ = int(_loc2_ + 16);
            _loc9_ = li32(_loc13_ + 8);
            _loc12_ = li32(_loc13_ + 12);
            if(_loc12_ <= 1)
            {
               _loc12_ = int(_umtxq_chains + int(_loc9_ * 44));
               _loc9_ = int(_loc12_ + 5632);
            }
            else
            {
               _loc9_ = int(_umtxq_chains + int(_loc9_ * 44));
            }
            si32(0,_loc13_);
            _loc12_ = li32(_loc9_ + 32);
            si32(_loc12_,_loc13_ + 4);
            _loc12_ = li32(_loc9_ + 32);
            si32(_loc13_,_loc12_);
            si32(_loc13_,_loc9_ + 32);
            _loc12_ = li32(_loc13_ + 28);
            _loc12_ = _loc12_ | 1;
            si32(_loc12_,_loc13_ + 28);
            _loc9_ = li32(_loc13_ + 8);
            _loc12_ = li32(_loc13_ + 12);
            if(_loc12_ <= 1)
            {
               _loc12_ = int(_umtxq_chains + int(_loc9_ * 44));
               _loc9_ = int(_loc12_ + 5632);
            }
            else
            {
               _loc9_ = int(_umtxq_chains + int(_loc9_ * 44));
            }
            si8(0,_loc9_ + 36);
            _loc12_ = li32(_loc9_ + 40);
            if(_loc12_ != 0)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_loc9_,_loc2_);
               ESP = _loc2_;
               F_kwakeup_one();
               _loc2_ = int(_loc2_ + 16);
            }
            _loc8_ = li32(_loc13_ + 12);
            _loc10_ = li32(_loc13_ + 8);
            if(_loc8_ <= 1)
            {
               _loc12_ = int(_umtxq_chains + int(_loc10_ * 44));
               _loc7_ = int(_loc12_ + 5632);
            }
            else
            {
               _loc7_ = int(_umtxq_chains + int(_loc10_ * 44));
            }
            _loc12_ = li8(_loc13_ + 28);
            _loc12_ = _loc12_ & 1;
            _loc9_ = 0;
            if(_loc12_ != 0)
            {
               _loc2_ = int(_loc2_ - 32);
               si32(_loc11_,_loc2_ + 16);
               si32(L__2E_str2,_loc2_ + 12);
               si32(256,_loc2_ + 8);
               si32(_loc7_,_loc2_ + 4);
               si32(_loc13_,_loc2_);
               ESP = _loc2_;
               F_kmsleep();
               _loc9_ = 60;
               _loc2_ = int(_loc2_ + 32);
               _loc10_ = int(eax);
               if(_loc10_ != 35)
               {
                  _loc9_ = _loc10_;
               }
               _loc8_ = li32(_loc13_ + 12);
               _loc10_ = li32(_loc13_ + 8);
            }
            if(_loc8_ <= 1)
            {
               _loc12_ = int(_umtxq_chains + int(_loc10_ * 44));
               _loc10_ = int(_loc12_ + 5632);
            }
            else
            {
               _loc10_ = int(_umtxq_chains + int(_loc10_ * 44));
            }
            _loc12_ = li8(_loc10_ + 36);
            if(_loc12_ != 0)
            {
               _loc8_ = li32(_loc10_ + 40);
               do
               {
                  _loc12_ = int(_loc8_ + 1);
                  si32(_loc12_,_loc10_ + 40);
                  _loc2_ = int(_loc2_ - 32);
                  si32(0,_loc2_ + 16);
                  si32(L__2E_str,_loc2_ + 12);
                  si32(0,_loc2_ + 8);
                  si32(_loc10_,_loc2_ + 4);
                  si32(_loc10_,_loc2_);
                  ESP = _loc2_;
                  F_kmsleep();
                  _loc2_ = int(_loc2_ + 32);
                  _loc12_ = li32(_loc10_ + 40);
                  _loc8_ = int(_loc12_ + -1);
                  si32(_loc8_,_loc10_ + 40);
                  _loc12_ = li8(_loc10_ + 36);
               }
               while(_loc12_ != 0);
               
            }
            si8(1,_loc10_ + 36);
            _loc8_ = li32(_loc13_ + 12);
            _loc7_ = li32(_loc13_ + 8);
            if(_loc8_ <= 1)
            {
               _loc12_ = int(_umtxq_chains + int(_loc7_ * 44));
               _loc10_ = int(_loc12_ + 5632);
            }
            else
            {
               _loc10_ = int(_umtxq_chains + int(_loc7_ * 44));
            }
            _loc12_ = li8(_loc13_ + 28);
            _loc12_ = _loc12_ & 1;
            if(_loc12_ != 0)
            {
               _loc8_ = li32(_loc13_ + 4);
               _loc7_ = li32(_loc13_);
               if(_loc7_ != 0)
               {
                  si32(_loc8_,_loc7_ + 4);
               }
               else
               {
                  si32(_loc8_,_loc10_ + 32);
               }
               _loc12_ = li32(_loc13_);
               _loc1_ = li32(_loc13_ + 4);
               si32(_loc12_,_loc1_);
               _loc12_ = li32(_loc13_ + 28);
               _loc12_ = _loc12_ & -2;
               si32(_loc12_,_loc13_ + 28);
               _loc8_ = li32(_loc13_ + 12);
               _loc7_ = li32(_loc13_ + 8);
            }
            if(_loc8_ <= 1)
            {
               _loc12_ = int(_umtxq_chains + int(_loc7_ * 44));
               _loc10_ = int(_loc12_ + 5632);
            }
            else
            {
               _loc10_ = int(_umtxq_chains + int(_loc7_ * 44));
            }
            _loc2_ = int(_loc2_ - 16);
            si32(_loc10_,_loc2_);
            ESP = _loc2_;
            F_kmtx_unlock();
            _loc2_ = int(_loc2_ + 16);
            if(_loc9_ == 0)
            {
               _loc8_ = li32(_loc3_);
               _loc9_ = 0;
               continue;
            }
            break;
         }
         _loc12_ = li32(_loc3_ + 12);
         _loc1_ = int(_loc12_ + -1);
         si32(_loc1_,_loc3_ + 12);
         _loc10_ = 0;
         if(_loc12_ == 1)
         {
            _loc10_ = li32(_loc3_);
            do
            {
               _loc12_ = _loc10_;
               _loc2_ = int(_loc2_ - 16);
               si32(_loc12_,_loc2_ + 4);
               si32(_loc3_,_loc2_);
               _loc1_ = _loc12_ & -1073741825;
               si32(_loc1_,_loc2_ + 8);
               ESP = _loc2_;
               F___sync_val_compare_and_swap_4();
               _loc2_ = int(_loc2_ + 16);
               _loc10_ = int(eax);
            }
            while(_loc10_ != _loc12_);
            
            _loc10_ = li32(_loc3_ + 8);
         }
         _loc8_ = li32(_loc13_ + 8);
         _loc12_ = li32(_loc13_ + 12);
         if(_loc12_ <= 1)
         {
            _loc12_ = int(_umtxq_chains + int(_loc8_ * 44));
            _loc8_ = int(_loc12_ + 5632);
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
         _loc8_ = li32(_loc13_ + 8);
         _loc12_ = li32(_loc13_ + 12);
         if(_loc12_ <= 1)
         {
            _loc12_ = int(_umtxq_chains + int(_loc8_ * 44));
            _loc8_ = int(_loc12_ + 5632);
         }
         else
         {
            _loc8_ = int(_umtxq_chains + int(_loc8_ * 44));
         }
         si8(0,_loc8_ + 36);
         _loc12_ = li32(_loc8_ + 40);
         if(_loc12_ != 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_loc8_,_loc2_);
            ESP = _loc2_;
            F_kwakeup_one();
            _loc2_ = int(_loc2_ + 16);
         }
         _loc8_ = li32(_loc13_ + 8);
         _loc12_ = li32(_loc13_ + 12);
         if(_loc12_ <= 1)
         {
            _loc12_ = int(_umtxq_chains + int(_loc8_ * 44));
            _loc8_ = int(_loc12_ + 5632);
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
      }
   }
}
