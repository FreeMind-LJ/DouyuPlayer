package sample.xx_ern_umtx_2E_o_3A_11C72270_2D_A3AB_2D_4798_2D_8F10_2D_4F543D95D387
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx.*;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si8;
   
   public function F___umtx_op_rw_unlock() : void
   {
      var _loc3_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc11_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc9_:* = 0;
      var _loc7_:* = 0;
      var _loc10_:* = 0;
      var _loc12_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc12_ = li32(_loc1_ + 4);
      _loc1_ = li32(_loc3_ + 4);
      _loc11_ = li32(_loc1_);
      _loc10_ = li32(_loc11_ + 4);
      si32(6,_loc12_ + 12);
      _loc9_ = 0;
      si32(_loc9_,_loc12_ + 16);
      si32(_loc11_,_loc12_ + 20);
      si32(_loc9_,_loc12_ + 24);
      _loc1_ = int(_loc11_ * -1640562687);
      _loc1_ = int(_loc1_ >>> 25);
      si32(_loc1_,_loc12_ + 8);
      _loc8_ = li32(_loc11_);
      if(_loc8_ <= -1)
      {
         while(true)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_loc8_,_loc2_ + 4);
            si32(_loc11_,_loc2_);
            _loc1_ = _loc8_ & 2147483647;
            si32(_loc1_,_loc2_ + 8);
            ESP = _loc2_;
            F___sync_val_compare_and_swap_4();
            _loc2_ = int(_loc2_ + 16);
            _loc7_ = int(eax);
            if(_loc7_ != _loc8_)
            {
               _loc6_ = 1;
               _loc8_ = _loc7_;
               if(_loc7_ <= -1)
               {
                  continue;
               }
            }
            else
            {
               addr202:
               _loc1_ = _loc10_ & 2;
               if(_loc1_ == 0)
               {
                  _loc9_ = 1;
                  _loc11_ = _loc9_;
                  if((_loc8_ & 1073741824) == 0)
                  {
                     _loc11_ = 2147483647;
                     _loc9_ = 0;
                     _loc6_ = _loc9_;
                     if((_loc8_ & 536870912) != 0)
                     {
                     }
                  }
               }
               else
               {
                  _loc11_ = 2147483647;
                  if((_loc8_ & 536870912) == 0)
                  {
                     _loc9_ = 1;
                     _loc6_ = 0;
                     _loc11_ = _loc9_;
                     if((_loc8_ & 1073741824) != 0)
                     {
                     }
                  }
               }
               _loc6_ = li32(_loc12_ + 8);
               _loc1_ = li32(_loc12_ + 12);
               if(_loc1_ <= 1)
               {
                  _loc6_ = int(int(_umtxq_chains + int(_loc6_ * 44)) + 5632);
               }
               else
               {
                  _loc6_ = int(_umtxq_chains + int(_loc6_ * 44));
               }
               _loc2_ = int(_loc2_ - 16);
               si32(_loc6_,_loc2_);
               ESP = _loc2_;
               F_kmtx_lock();
               _loc2_ = int(_loc2_ + 16);
               _loc6_ = li32(_loc12_ + 8);
               _loc1_ = li32(_loc12_ + 12);
               if(_loc1_ <= 1)
               {
                  _loc6_ = int(int(_umtxq_chains + int(_loc6_ * 44)) + 5632);
               }
               else
               {
                  _loc6_ = int(_umtxq_chains + int(_loc6_ * 44));
               }
               _loc1_ = li8(_loc6_ + 36);
               if(_loc1_ != 0)
               {
                  _loc8_ = li32(_loc6_ + 40);
                  do
                  {
                     _loc1_ = int(_loc8_ + 1);
                     si32(_loc1_,_loc6_ + 40);
                     _loc2_ = int(_loc2_ - 32);
                     si32(0,_loc2_ + 16);
                     si32(L__2E_str,_loc2_ + 12);
                     si32(0,_loc2_ + 8);
                     si32(_loc6_,_loc2_ + 4);
                     si32(_loc6_,_loc2_);
                     ESP = _loc2_;
                     F_kmsleep();
                     _loc2_ = int(_loc2_ + 32);
                     _loc1_ = li32(_loc6_ + 40);
                     _loc8_ = int(_loc1_ + -1);
                     si32(_loc8_,_loc6_ + 40);
                     _loc1_ = li8(_loc6_ + 36);
                  }
                  while(_loc1_ != 0);
                  
               }
               si8(1,_loc6_ + 36);
               _loc6_ = li32(_loc12_ + 8);
               _loc1_ = li32(_loc12_ + 12);
               if(_loc1_ <= 1)
               {
                  _loc6_ = int(int(_umtxq_chains + int(_loc6_ * 44)) + 5632);
               }
               else
               {
                  _loc6_ = int(_umtxq_chains + int(_loc6_ * 44));
               }
               _loc9_ = _loc9_ << 3;
               _loc1_ = int(_loc6_ + _loc9_);
               _loc8_ = li32(_loc1_ + 20);
               _loc10_ = 0;
               loop2:
               while(true)
               {
                  _loc10_ = int(_loc10_ + 1);
                  while(true)
                  {
                     _loc6_ = _loc8_;
                     if(_loc6_ != 0)
                     {
                        _loc5_ = li32(_loc6_ + 12);
                        _loc8_ = li32(_loc6_);
                        if(_loc5_ == li32(_loc12_ + 12))
                        {
                           if(li32(_loc6_ + 20) == li32(_loc12_ + 20))
                           {
                              if(li32(_loc6_ + 24) != li32(_loc12_ + 24))
                              {
                                 continue;
                              }
                              _loc7_ = li32(_loc6_ + 8);
                              if(_loc5_ <= 1)
                              {
                                 _loc7_ = int(int(_umtxq_chains + int(_loc7_ * 44)) + 5632);
                              }
                              else
                              {
                                 _loc7_ = int(_umtxq_chains + int(_loc7_ * 44));
                              }
                              _loc1_ = li8(_loc6_ + 28);
                              _loc1_ = _loc1_ & 1;
                              if(_loc1_ != 0)
                              {
                                 _loc5_ = li32(_loc6_ + 4);
                                 if(_loc8_ != 0)
                                 {
                                    si32(_loc5_,_loc8_ + 4);
                                 }
                                 else
                                 {
                                    si32(_loc5_,int(_loc7_ + _loc9_) + 24);
                                 }
                                 var _loc4_:* = li32(_loc6_);
                                 _loc1_ = li32(_loc6_ + 4);
                                 si32(_loc4_,_loc1_);
                                 _loc1_ = li32(_loc6_ + 28);
                                 _loc1_ = _loc1_ & -2;
                                 si32(_loc1_,_loc6_ + 28);
                              }
                              _loc2_ = int(_loc2_ - 16);
                              si32(_loc6_,_loc2_);
                              ESP = _loc2_;
                              F_kwakeup();
                              _loc2_ = int(_loc2_ + 16);
                              if(_loc10_ < _loc11_)
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
                  _loc11_ = li32(_loc12_ + 8);
                  _loc1_ = li32(_loc12_ + 12);
                  if(_loc1_ <= 1)
                  {
                     _loc11_ = int(int(_umtxq_chains + int(_loc11_ * 44)) + 5632);
                  }
                  else
                  {
                     _loc11_ = int(_umtxq_chains + int(_loc11_ * 44));
                  }
                  _loc6_ = 0;
                  si8(_loc6_,_loc11_ + 36);
                  _loc1_ = li32(_loc11_ + 40);
                  if(_loc1_ != 0)
                  {
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc11_,_loc2_);
                     ESP = _loc2_;
                     F_kwakeup_one();
                     _loc2_ = int(_loc2_ + 16);
                  }
                  _loc11_ = li32(_loc12_ + 8);
                  _loc1_ = li32(_loc12_ + 12);
                  if(_loc1_ <= 1)
                  {
                     _loc12_ = int(int(_umtxq_chains + int(_loc11_ * 44)) + 5632);
                  }
                  else
                  {
                     _loc12_ = int(_umtxq_chains + int(_loc11_ * 44));
                  }
                  _loc2_ = int(_loc2_ - 16);
                  si32(_loc12_,_loc2_);
                  ESP = _loc2_;
                  F_kmtx_unlock();
                  _loc2_ = int(_loc2_ + 16);
               }
            }
         }
      }
      else
      {
         _loc6_ = 1;
         if((_loc8_ & 536870911) != 0)
         {
            while(true)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_loc8_,_loc2_ + 4);
               si32(_loc11_,_loc2_);
               _loc1_ = int(_loc8_ + -1);
               si32(_loc1_,_loc2_ + 8);
               ESP = _loc2_;
               F___sync_val_compare_and_swap_4();
               _loc2_ = int(_loc2_ + 16);
               _loc7_ = int(eax);
               if(_loc7_ != _loc8_)
               {
                  _loc6_ = 1;
                  _loc8_ = _loc7_;
                  if((_loc7_ & 536870911) != 0)
                  {
                     continue;
                  }
                  break;
               }
               §§goto(addr202);
            }
         }
      }
      eax = _loc6_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
