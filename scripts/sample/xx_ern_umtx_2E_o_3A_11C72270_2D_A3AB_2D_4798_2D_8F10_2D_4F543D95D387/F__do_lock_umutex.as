package sample.xx_ern_umtx_2E_o_3A_11C72270_2D_A3AB_2D_4798_2D_8F10_2D_4F543D95D387
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx.*;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si8;
   
   public function F__do_lock_umutex() : void
   {
      var _loc5_:* = 0;
      var _loc12_:* = 0;
      var _loc4_:* = 0;
      var _loc13_:* = 0;
      var _loc14_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc1_:* = 0;
      var _loc10_:int = 0;
      var _loc17_:* = 0;
      var _loc8_:* = 0;
      var _loc9_:* = 0;
      var _loc16_:* = 0;
      var _loc2_:* = 0;
      var _loc3_:* = int(ESP);
      _loc5_ = _loc3_;
      _loc4_ = li32(_loc5_ + 8);
      _loc17_ = _loc4_ & 12;
      _loc16_ = 22;
      if(uint(_loc17_) <= 8)
      {
         var _loc15_:* = 1 << _loc17_;
         _loc15_ = _loc15_ & 273;
         if(_loc15_ != 0)
         {
            _loc14_ = li32(_loc5_ + 16);
            _loc13_ = li32(_loc5_ + 12);
            _loc12_ = li32(_loc5_ + 4);
            var _loc11_:* = int(_loc12_ * -1640562687);
            _loc10_ = _loc11_ >>> 25;
            _loc17_ = int(_umtxq_chains + int(_loc10_ * 44));
            _loc1_ = _loc4_ & 2;
            _loc4_ = li32(li32(_loc5_) + 4);
            _loc6_ = li32(li32(_loc5_));
            _loc7_ = _loc6_ | -2147483648;
            _loc8_ = 0;
            loop0:
            while(true)
            {
               if(_loc14_ == 2)
               {
                  _loc9_ = li32(_loc12_);
                  _loc16_ = 0;
                  if(_loc9_ != -2147483648)
                  {
                     if(_loc9_ != 0)
                     {
                     }
                     break;
                  }
                  break;
               }
               while(true)
               {
                  _loc9_ = li32(_loc12_);
                  _loc3_ = int(_loc3_ - 16);
                  si32(_loc6_,_loc3_ + 8);
                  si32(0,_loc3_ + 4);
                  si32(_loc12_,_loc3_);
                  ESP = _loc3_;
                  F___sync_val_compare_and_swap_4();
                  _loc3_ = int(_loc3_ + 16);
                  _loc9_ = int(eax);
                  if(_loc9_ != 0)
                  {
                     _loc16_ = 14;
                     if(_loc9_ != -1)
                     {
                        if(_loc9_ == -2147483648)
                        {
                           _loc3_ = int(_loc3_ - 16);
                           si32(_loc7_,_loc3_ + 8);
                           si32(-2147483648,_loc3_ + 4);
                           si32(_loc12_,_loc3_);
                           ESP = _loc3_;
                           F___sync_val_compare_and_swap_4();
                           _loc3_ = int(_loc3_ + 16);
                           _loc9_ = int(eax);
                           if(_loc9_ != -2147483648)
                           {
                              _loc16_ = 14;
                              if(_loc9_ != -1)
                              {
                                 continue;
                              }
                              break loop0;
                           }
                           break;
                        }
                     }
                     break loop0;
                  }
                  break;
               }
               _loc16_ = 0;
               break;
               if(_loc1_ != 0)
               {
                  _loc2_ = _loc9_ & 2147483647;
                  _loc16_ = 11;
                  if(_loc2_ != _loc6_)
                  {
                     _loc16_ = 16;
                  }
                  if(_loc2_ != _loc6_)
                  {
                     if(_loc14_ != 1)
                     {
                     }
                     break;
                  }
                  break;
               }
               _loc16_ = 16;
               if(_loc14_ != 1)
               {
               }
               break;
               _loc16_ = _loc8_;
               if(_loc8_ == 0)
               {
                  si32(3,_loc4_ + 12);
                  si32(0,_loc4_ + 16);
                  si32(_loc12_,_loc4_ + 20);
                  si32(0,_loc4_ + 24);
                  si32(_loc10_,_loc4_ + 8);
                  _loc3_ = int(_loc3_ - 16);
                  si32(_loc17_,_loc3_);
                  ESP = _loc3_;
                  F_kmtx_lock();
                  _loc3_ = int(_loc3_ + 16);
                  _loc8_ = li32(_loc4_ + 8);
                  _loc15_ = li32(_loc4_ + 12);
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
                     _loc16_ = li32(_loc8_ + 40);
                     do
                     {
                        _loc15_ = int(_loc16_ + 1);
                        si32(_loc15_,_loc8_ + 40);
                        _loc3_ = int(_loc3_ - 32);
                        si32(0,_loc3_ + 16);
                        si32(L__2E_str,_loc3_ + 12);
                        si32(0,_loc3_ + 8);
                        si32(_loc8_,_loc3_ + 4);
                        si32(_loc8_,_loc3_);
                        ESP = _loc3_;
                        F_kmsleep();
                        _loc3_ = int(_loc3_ + 32);
                        _loc15_ = li32(_loc8_ + 40);
                        _loc16_ = int(_loc15_ + -1);
                        si32(_loc16_,_loc8_ + 40);
                        _loc15_ = li8(_loc8_ + 36);
                     }
                     while(_loc15_ != 0);
                     
                  }
                  si8(1,_loc8_ + 36);
                  _loc8_ = li32(_loc4_ + 8);
                  _loc15_ = li32(_loc4_ + 12);
                  if(_loc15_ <= 1)
                  {
                     _loc15_ = int(_umtxq_chains + int(_loc8_ * 44));
                     _loc8_ = int(_loc15_ + 5632);
                  }
                  else
                  {
                     _loc8_ = int(_umtxq_chains + int(_loc8_ * 44));
                  }
                  si32(0,_loc4_);
                  _loc15_ = li32(_loc8_ + 24);
                  si32(_loc15_,_loc4_ + 4);
                  _loc15_ = li32(_loc8_ + 24);
                  si32(_loc4_,_loc15_);
                  si32(_loc4_,_loc8_ + 24);
                  _loc15_ = li32(_loc4_ + 28);
                  _loc15_ = _loc15_ | 1;
                  si32(_loc15_,_loc4_ + 28);
                  _loc8_ = li32(_loc4_ + 8);
                  _loc15_ = li32(_loc4_ + 12);
                  if(_loc15_ <= 1)
                  {
                     _loc15_ = int(_umtxq_chains + int(_loc8_ * 44));
                     _loc8_ = int(_loc15_ + 5632);
                  }
                  else
                  {
                     _loc8_ = int(_umtxq_chains + int(_loc8_ * 44));
                  }
                  _loc3_ = int(_loc3_ - 16);
                  si32(_loc8_,_loc3_);
                  ESP = _loc3_;
                  F_kmtx_unlock();
                  _loc3_ = int(_loc3_ + 16);
                  _loc3_ = int(_loc3_ - 16);
                  si32(_loc12_,_loc3_);
                  si32(_loc9_,_loc3_ + 4);
                  _loc15_ = _loc9_ | -2147483648;
                  si32(_loc15_,_loc3_ + 8);
                  ESP = _loc3_;
                  F___sync_val_compare_and_swap_4();
                  _loc3_ = int(_loc3_ + 16);
                  _loc16_ = int(eax);
                  _loc8_ = li32(_loc4_ + 8);
                  _loc15_ = li32(_loc4_ + 12);
                  if(_loc15_ <= 1)
                  {
                     _loc15_ = int(_umtxq_chains + int(_loc8_ * 44));
                     _loc8_ = int(_loc15_ + 5632);
                  }
                  else
                  {
                     _loc8_ = int(_umtxq_chains + int(_loc8_ * 44));
                  }
                  _loc3_ = int(_loc3_ - 16);
                  si32(_loc8_,_loc3_);
                  ESP = _loc3_;
                  F_kmtx_lock();
                  _loc3_ = int(_loc3_ + 16);
                  _loc8_ = li32(_loc4_ + 12);
                  _loc2_ = li32(_loc4_ + 8);
                  if(_loc16_ == -1)
                  {
                     if(_loc8_ <= 1)
                     {
                        _loc15_ = int(_umtxq_chains + int(_loc2_ * 44));
                        _loc17_ = int(_loc15_ + 5632);
                     }
                     else
                     {
                        _loc17_ = int(_umtxq_chains + int(_loc2_ * 44));
                     }
                     _loc15_ = li8(_loc4_ + 28);
                     _loc15_ = _loc15_ & 1;
                     if(_loc15_ != 0)
                     {
                        _loc13_ = li32(_loc4_ + 4);
                        _loc12_ = li32(_loc4_);
                        if(_loc12_ != 0)
                        {
                           si32(_loc13_,_loc12_ + 4);
                        }
                        else
                        {
                           si32(_loc13_,_loc17_ + 24);
                        }
                        _loc15_ = li32(_loc4_);
                        _loc11_ = li32(_loc4_ + 4);
                        si32(_loc15_,_loc11_);
                        _loc15_ = li32(_loc4_ + 28);
                        _loc15_ = _loc15_ & -2;
                        si32(_loc15_,_loc4_ + 28);
                        _loc8_ = li32(_loc4_ + 12);
                        _loc2_ = li32(_loc4_ + 8);
                     }
                     if(_loc8_ <= 1)
                     {
                        _loc15_ = int(_umtxq_chains + int(_loc2_ * 44));
                        _loc17_ = int(_loc15_ + 5632);
                     }
                     else
                     {
                        _loc17_ = int(_umtxq_chains + int(_loc2_ * 44));
                     }
                     si8(0,_loc17_ + 36);
                     _loc15_ = li32(_loc17_ + 40);
                     if(_loc15_ != 0)
                     {
                        _loc3_ = int(_loc3_ - 16);
                        si32(_loc17_,_loc3_);
                        ESP = _loc3_;
                        F_kwakeup_one();
                        _loc3_ = int(_loc3_ + 16);
                     }
                     _loc17_ = li32(_loc4_ + 8);
                     _loc15_ = li32(_loc4_ + 12);
                     if(_loc15_ <= 1)
                     {
                        _loc15_ = int(_umtxq_chains + int(_loc17_ * 44));
                        _loc4_ = int(_loc15_ + 5632);
                     }
                     else
                     {
                        _loc4_ = int(_umtxq_chains + int(_loc17_ * 44));
                     }
                     _loc3_ = int(_loc3_ - 16);
                     si32(_loc4_,_loc3_);
                     ESP = _loc3_;
                     F_kmtx_unlock();
                     _loc3_ = int(_loc3_ + 16);
                     _loc16_ = 14;
                     break;
                  }
                  if(_loc8_ <= 1)
                  {
                     _loc15_ = int(_umtxq_chains + int(_loc2_ * 44));
                     _loc8_ = int(_loc15_ + 5632);
                  }
                  else
                  {
                     _loc8_ = int(_umtxq_chains + int(_loc2_ * 44));
                  }
                  si8(0,_loc8_ + 36);
                  _loc15_ = li32(_loc8_ + 40);
                  if(_loc15_ != 0)
                  {
                     _loc3_ = int(_loc3_ - 16);
                     si32(_loc8_,_loc3_);
                     ESP = _loc3_;
                     F_kwakeup_one();
                     _loc3_ = int(_loc3_ + 16);
                  }
                  _loc8_ = 0;
                  if(_loc16_ == _loc9_)
                  {
                     _loc9_ = li32(_loc4_ + 8);
                     _loc15_ = li32(_loc4_ + 12);
                     if(_loc15_ <= 1)
                     {
                        _loc15_ = int(_umtxq_chains + int(_loc9_ * 44));
                        _loc9_ = int(_loc15_ + 5632);
                     }
                     else
                     {
                        _loc9_ = int(_umtxq_chains + int(_loc9_ * 44));
                     }
                     _loc15_ = li8(_loc4_ + 28);
                     _loc15_ = _loc15_ & 1;
                     _loc8_ = 0;
                     if(_loc15_ != 0)
                     {
                        _loc3_ = int(_loc3_ - 32);
                        si32(_loc13_,_loc3_ + 16);
                        si32(L__2E_str1,_loc3_ + 12);
                        si32(256,_loc3_ + 8);
                        si32(_loc9_,_loc3_ + 4);
                        si32(_loc4_,_loc3_);
                        ESP = _loc3_;
                        F_kmsleep();
                        _loc8_ = 60;
                        _loc3_ = int(_loc3_ + 32);
                        _loc9_ = int(eax);
                        if(_loc9_ != 35)
                        {
                           _loc8_ = _loc9_;
                        }
                     }
                  }
                  _loc2_ = li32(_loc4_ + 12);
                  _loc16_ = li32(_loc4_ + 8);
                  if(_loc2_ <= 1)
                  {
                     _loc15_ = int(_umtxq_chains + int(_loc16_ * 44));
                     _loc9_ = int(_loc15_ + 5632);
                  }
                  else
                  {
                     _loc9_ = int(_umtxq_chains + int(_loc16_ * 44));
                  }
                  _loc15_ = li8(_loc4_ + 28);
                  _loc15_ = _loc15_ & 1;
                  if(_loc15_ != 0)
                  {
                     _loc16_ = li32(_loc4_ + 4);
                     _loc2_ = li32(_loc4_);
                     if(_loc2_ != 0)
                     {
                        si32(_loc16_,_loc2_ + 4);
                     }
                     else
                     {
                        si32(_loc16_,_loc9_ + 24);
                     }
                     _loc15_ = li32(_loc4_);
                     _loc11_ = li32(_loc4_ + 4);
                     si32(_loc15_,_loc11_);
                     _loc15_ = li32(_loc4_ + 28);
                     _loc15_ = _loc15_ & -2;
                     si32(_loc15_,_loc4_ + 28);
                     _loc2_ = li32(_loc4_ + 12);
                     _loc16_ = li32(_loc4_ + 8);
                  }
                  if(_loc2_ <= 1)
                  {
                     _loc15_ = int(_umtxq_chains + int(_loc16_ * 44));
                     _loc9_ = int(_loc15_ + 5632);
                  }
                  else
                  {
                     _loc9_ = int(_umtxq_chains + int(_loc16_ * 44));
                  }
                  continue;
               }
               break;
            }
         }
      }
      eax = _loc16_;
      _loc3_ = _loc5_;
      ESP = _loc3_;
   }
}
