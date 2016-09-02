package sample.xx_ern_umtx_2E_o_3A_11C72270_2D_A3AB_2D_4798_2D_8F10_2D_4F543D95D387
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li8;
   import sample.xx.*;
   import avm2.intrinsics.memory.si8;
   
   public function F_do_rw_rdlock() : void
   {
      var _loc3_:* = 0;
      var _loc11_:* = 0;
      var _loc1_:* = 0;
      var _loc12_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:* = 0;
      var _loc5_:* = 0;
      var _loc10_:* = 0;
      var _loc9_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc12_ = li32(_loc1_ + 4);
      _loc11_ = li32(_loc3_);
      si32(6,_loc11_ + 12);
      si32(0,_loc11_ + 16);
      si32(_loc1_,_loc11_ + 20);
      si32(0,_loc11_ + 24);
      _loc10_ = int(_loc1_ * -1640562687);
      _loc10_ = int(_loc10_ >>> 25);
      si32(_loc10_,_loc11_ + 8);
      _loc10_ = li8(_loc3_ + 8);
      _loc10_ = _loc10_ & 2;
      _loc9_ = -2147483648;
      if(_loc10_ == 0)
      {
         _loc9_ = -2147483648;
         if((_loc12_ & 2) == 0)
         {
            _loc9_ = -1073741824;
         }
      }
      _loc12_ = li32(_loc3_ + 12);
      _loc8_ = 0;
      while(true)
      {
         loop1:
         while(true)
         {
            _loc7_ = li32(_loc1_);
            while(true)
            {
               _loc6_ = _loc7_;
               _loc10_ = _loc6_ & _loc9_;
               if(_loc10_ != 0)
               {
                  _loc5_ = _loc8_;
                  if(_loc8_ == 0)
                  {
                     _loc7_ = li32(_loc11_ + 8);
                     _loc10_ = li32(_loc11_ + 12);
                     if(_loc10_ <= 1)
                     {
                        _loc10_ = int(_umtxq_chains + int(_loc7_ * 44));
                        _loc7_ = int(_loc10_ + 5632);
                     }
                     else
                     {
                        _loc7_ = int(_umtxq_chains + int(_loc7_ * 44));
                     }
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc7_,_loc2_);
                     ESP = _loc2_;
                     F_kmtx_lock();
                     _loc2_ = int(_loc2_ + 16);
                     _loc7_ = li32(_loc11_ + 8);
                     _loc10_ = li32(_loc11_ + 12);
                     if(_loc10_ <= 1)
                     {
                        _loc10_ = int(_umtxq_chains + int(_loc7_ * 44));
                        _loc7_ = int(_loc10_ + 5632);
                     }
                     else
                     {
                        _loc7_ = int(_umtxq_chains + int(_loc7_ * 44));
                     }
                     _loc10_ = li8(_loc7_ + 36);
                     if(_loc10_ != 0)
                     {
                        _loc6_ = li32(_loc7_ + 40);
                        do
                        {
                           _loc10_ = int(_loc6_ + 1);
                           si32(_loc10_,_loc7_ + 40);
                           _loc2_ = int(_loc2_ - 32);
                           si32(0,_loc2_ + 16);
                           si32(L__2E_str,_loc2_ + 12);
                           si32(0,_loc2_ + 8);
                           si32(_loc7_,_loc2_ + 4);
                           si32(_loc7_,_loc2_);
                           ESP = _loc2_;
                           F_kmsleep();
                           _loc2_ = int(_loc2_ + 32);
                           _loc10_ = li32(_loc7_ + 40);
                           _loc6_ = int(_loc10_ + -1);
                           si32(_loc6_,_loc7_ + 40);
                           _loc10_ = li8(_loc7_ + 36);
                        }
                        while(_loc10_ != 0);
                        
                     }
                     si8(1,_loc7_ + 36);
                     _loc7_ = li32(_loc11_ + 8);
                     _loc10_ = li32(_loc11_ + 12);
                     if(_loc10_ <= 1)
                     {
                        _loc10_ = int(_umtxq_chains + int(_loc7_ * 44));
                        _loc7_ = int(_loc10_ + 5632);
                     }
                     else
                     {
                        _loc7_ = int(_umtxq_chains + int(_loc7_ * 44));
                     }
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc7_,_loc2_);
                     ESP = _loc2_;
                     F_kmtx_unlock();
                     _loc2_ = int(_loc2_ + 16);
                     _loc6_ = li32(_loc1_);
                     while(true)
                     {
                        _loc7_ = _loc6_;
                        _loc6_ = _loc7_ & _loc9_;
                        if(_loc6_ != 0)
                        {
                           _loc10_ = _loc7_ & 536870912;
                           if(_loc10_ != 0)
                           {
                              break;
                           }
                           _loc2_ = int(_loc2_ - 16);
                           si32(_loc7_,_loc2_ + 4);
                           si32(_loc1_,_loc2_);
                           _loc10_ = _loc7_ | 536870912;
                           si32(_loc10_,_loc2_ + 8);
                           ESP = _loc2_;
                           F___sync_val_compare_and_swap_4();
                           _loc2_ = int(_loc2_ + 16);
                           _loc6_ = int(eax);
                           if(_loc6_ != _loc7_)
                           {
                              continue;
                           }
                           break loop1;
                        }
                        break;
                     }
                     if(_loc6_ == 0)
                     {
                        _loc7_ = li32(_loc11_ + 8);
                        _loc10_ = li32(_loc11_ + 12);
                        if(_loc10_ <= 1)
                        {
                           _loc10_ = int(_umtxq_chains + int(_loc7_ * 44));
                           _loc7_ = int(_loc10_ + 5632);
                        }
                        else
                        {
                           _loc7_ = int(_umtxq_chains + int(_loc7_ * 44));
                        }
                        _loc2_ = int(_loc2_ - 16);
                        si32(_loc7_,_loc2_);
                        ESP = _loc2_;
                        F_kmtx_lock();
                        _loc2_ = int(_loc2_ + 16);
                        _loc7_ = li32(_loc11_ + 8);
                        _loc10_ = li32(_loc11_ + 12);
                        if(_loc10_ <= 1)
                        {
                           _loc10_ = int(_umtxq_chains + int(_loc7_ * 44));
                           _loc7_ = int(_loc10_ + 5632);
                        }
                        else
                        {
                           _loc7_ = int(_umtxq_chains + int(_loc7_ * 44));
                        }
                        si8(0,_loc7_ + 36);
                        _loc10_ = li32(_loc7_ + 40);
                        if(_loc10_ != 0)
                        {
                           _loc2_ = int(_loc2_ - 16);
                           si32(_loc7_,_loc2_);
                           ESP = _loc2_;
                           F_kwakeup_one();
                           _loc2_ = int(_loc2_ + 16);
                        }
                        _loc7_ = li32(_loc11_ + 8);
                        _loc10_ = li32(_loc11_ + 12);
                        if(_loc10_ <= 1)
                        {
                           _loc10_ = int(_umtxq_chains + int(_loc7_ * 44));
                           _loc7_ = int(_loc10_ + 5632);
                        }
                        else
                        {
                           _loc7_ = int(_umtxq_chains + int(_loc7_ * 44));
                        }
                        _loc2_ = int(_loc2_ - 16);
                        si32(_loc7_,_loc2_);
                        ESP = _loc2_;
                        F_kmtx_unlock();
                        _loc2_ = int(_loc2_ + 16);
                        continue loop1;
                     }
                     break loop1;
                  }
                  break;
               }
               _loc5_ = 35;
               if((_loc6_ & 536870911) != 536870911)
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(_loc6_,_loc2_ + 4);
                  si32(_loc1_,_loc2_);
                  _loc10_ = int(_loc6_ + 1);
                  si32(_loc10_,_loc2_ + 8);
                  ESP = _loc2_;
                  F___sync_val_compare_and_swap_4();
                  _loc5_ = 0;
                  _loc2_ = int(_loc2_ + 16);
                  _loc7_ = int(eax);
                  if(_loc7_ != _loc6_)
                  {
                     continue;
                  }
                  break;
               }
               break;
            }
            eax = _loc5_;
            _loc2_ = _loc3_;
            ESP = _loc2_;
            return;
         }
         _loc10_ = li32(_loc1_ + 8);
         _loc10_ = int(_loc10_ + 1);
         si32(_loc10_,_loc1_ + 8);
         while(true)
         {
            _loc10_ = _loc7_ & _loc9_;
            if(_loc10_ != 0)
            {
               _loc8_ = li32(_loc11_ + 8);
               _loc10_ = li32(_loc11_ + 12);
               if(_loc10_ <= 1)
               {
                  _loc10_ = int(_umtxq_chains + int(_loc8_ * 44));
                  _loc8_ = int(_loc10_ + 5632);
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
               _loc8_ = li32(_loc11_ + 8);
               _loc10_ = li32(_loc11_ + 12);
               if(_loc10_ <= 1)
               {
                  _loc10_ = int(_umtxq_chains + int(_loc8_ * 44));
                  _loc8_ = int(_loc10_ + 5632);
               }
               else
               {
                  _loc8_ = int(_umtxq_chains + int(_loc8_ * 44));
               }
               si32(0,_loc11_);
               _loc10_ = li32(_loc8_ + 24);
               si32(_loc10_,_loc11_ + 4);
               _loc10_ = li32(_loc8_ + 24);
               si32(_loc11_,_loc10_);
               si32(_loc11_,_loc8_ + 24);
               _loc10_ = li32(_loc11_ + 28);
               _loc10_ = _loc10_ | 1;
               si32(_loc10_,_loc11_ + 28);
               _loc8_ = li32(_loc11_ + 8);
               _loc10_ = li32(_loc11_ + 12);
               if(_loc10_ <= 1)
               {
                  _loc10_ = int(_umtxq_chains + int(_loc8_ * 44));
                  _loc8_ = int(_loc10_ + 5632);
               }
               else
               {
                  _loc8_ = int(_umtxq_chains + int(_loc8_ * 44));
               }
               si8(0,_loc8_ + 36);
               _loc10_ = li32(_loc8_ + 40);
               if(_loc10_ != 0)
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(_loc8_,_loc2_);
                  ESP = _loc2_;
                  F_kwakeup_one();
                  _loc2_ = int(_loc2_ + 16);
               }
               _loc6_ = li32(_loc11_ + 12);
               _loc5_ = li32(_loc11_ + 8);
               if(_loc6_ <= 1)
               {
                  _loc10_ = int(_umtxq_chains + int(_loc5_ * 44));
                  _loc7_ = int(_loc10_ + 5632);
               }
               else
               {
                  _loc7_ = int(_umtxq_chains + int(_loc5_ * 44));
               }
               _loc10_ = li8(_loc11_ + 28);
               _loc10_ = _loc10_ & 1;
               _loc8_ = 0;
               if(_loc10_ != 0)
               {
                  _loc2_ = int(_loc2_ - 32);
                  si32(_loc12_,_loc2_ + 16);
                  si32(L__2E_str7,_loc2_ + 12);
                  si32(256,_loc2_ + 8);
                  si32(_loc7_,_loc2_ + 4);
                  si32(_loc11_,_loc2_);
                  ESP = _loc2_;
                  F_kmsleep();
                  _loc8_ = 60;
                  _loc2_ = int(_loc2_ + 32);
                  _loc7_ = int(eax);
                  if(_loc7_ != 35)
                  {
                     _loc8_ = _loc7_;
                  }
                  _loc6_ = li32(_loc11_ + 12);
                  _loc5_ = li32(_loc11_ + 8);
               }
               if(_loc6_ <= 1)
               {
                  _loc10_ = int(_umtxq_chains + int(_loc5_ * 44));
                  _loc6_ = int(_loc10_ + 5632);
               }
               else
               {
                  _loc6_ = int(_umtxq_chains + int(_loc5_ * 44));
               }
               _loc10_ = li8(_loc6_ + 36);
               if(_loc10_ != 0)
               {
                  _loc7_ = li32(_loc6_ + 40);
                  do
                  {
                     _loc10_ = int(_loc7_ + 1);
                     si32(_loc10_,_loc6_ + 40);
                     _loc2_ = int(_loc2_ - 32);
                     si32(0,_loc2_ + 16);
                     si32(L__2E_str,_loc2_ + 12);
                     si32(0,_loc2_ + 8);
                     si32(_loc6_,_loc2_ + 4);
                     si32(_loc6_,_loc2_);
                     ESP = _loc2_;
                     F_kmsleep();
                     _loc2_ = int(_loc2_ + 32);
                     _loc10_ = li32(_loc6_ + 40);
                     _loc7_ = int(_loc10_ + -1);
                     si32(_loc7_,_loc6_ + 40);
                     _loc10_ = li8(_loc6_ + 36);
                  }
                  while(_loc10_ != 0);
                  
               }
               si8(1,_loc6_ + 36);
               _loc5_ = li32(_loc11_ + 12);
               _loc6_ = li32(_loc11_ + 8);
               if(_loc5_ <= 1)
               {
                  _loc10_ = int(_umtxq_chains + int(_loc6_ * 44));
                  _loc7_ = int(_loc10_ + 5632);
               }
               else
               {
                  _loc7_ = int(_umtxq_chains + int(_loc6_ * 44));
               }
               _loc10_ = li8(_loc11_ + 28);
               _loc10_ = _loc10_ & 1;
               if(_loc10_ != 0)
               {
                  _loc6_ = li32(_loc11_ + 4);
                  _loc5_ = li32(_loc11_);
                  if(_loc5_ != 0)
                  {
                     si32(_loc6_,_loc5_ + 4);
                  }
                  else
                  {
                     si32(_loc6_,_loc7_ + 24);
                  }
                  var _loc4_:* = li32(_loc11_);
                  _loc10_ = li32(_loc11_ + 4);
                  si32(_loc4_,_loc10_);
                  _loc10_ = li32(_loc11_ + 28);
                  _loc10_ = _loc10_ & -2;
                  si32(_loc10_,_loc11_ + 28);
                  _loc5_ = li32(_loc11_ + 12);
                  _loc6_ = li32(_loc11_ + 8);
               }
               if(_loc5_ <= 1)
               {
                  _loc10_ = int(_umtxq_chains + int(_loc6_ * 44));
                  _loc7_ = int(_loc10_ + 5632);
               }
               else
               {
                  _loc7_ = int(_umtxq_chains + int(_loc6_ * 44));
               }
               _loc2_ = int(_loc2_ - 16);
               si32(_loc7_,_loc2_);
               ESP = _loc2_;
               F_kmtx_unlock();
               _loc2_ = int(_loc2_ + 16);
               if(_loc8_ == 0)
               {
                  _loc7_ = li32(_loc1_);
                  _loc8_ = 0;
                  continue;
               }
               break;
            }
            break;
         }
         _loc10_ = li32(_loc1_ + 8);
         _loc4_ = int(_loc10_ + -1);
         si32(_loc4_,_loc1_ + 8);
         if(_loc10_ == 1)
         {
            _loc7_ = li32(_loc1_);
            do
            {
               _loc10_ = _loc7_;
               _loc2_ = int(_loc2_ - 16);
               si32(_loc10_,_loc2_ + 4);
               si32(_loc1_,_loc2_);
               _loc4_ = _loc10_ & -536870913;
               si32(_loc4_,_loc2_ + 8);
               ESP = _loc2_;
               F___sync_val_compare_and_swap_4();
               _loc2_ = int(_loc2_ + 16);
               _loc7_ = int(eax);
            }
            while(_loc7_ != _loc10_);
            
         }
         _loc7_ = li32(_loc11_ + 8);
         _loc10_ = li32(_loc11_ + 12);
         if(_loc10_ <= 1)
         {
            _loc10_ = int(_umtxq_chains + int(_loc7_ * 44));
            _loc7_ = int(_loc10_ + 5632);
         }
         else
         {
            _loc7_ = int(_umtxq_chains + int(_loc7_ * 44));
         }
         _loc2_ = int(_loc2_ - 16);
         si32(_loc7_,_loc2_);
         ESP = _loc2_;
         F_kmtx_lock();
         _loc2_ = int(_loc2_ + 16);
         _loc7_ = li32(_loc11_ + 8);
         _loc10_ = li32(_loc11_ + 12);
         if(_loc10_ <= 1)
         {
            _loc10_ = int(_umtxq_chains + int(_loc7_ * 44));
            _loc7_ = int(_loc10_ + 5632);
         }
         else
         {
            _loc7_ = int(_umtxq_chains + int(_loc7_ * 44));
         }
         si8(0,_loc7_ + 36);
         _loc10_ = li32(_loc7_ + 40);
         if(_loc10_ != 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_loc7_,_loc2_);
            ESP = _loc2_;
            F_kwakeup_one();
            _loc2_ = int(_loc2_ + 16);
         }
         _loc7_ = li32(_loc11_ + 8);
         _loc10_ = li32(_loc11_ + 12);
         if(_loc10_ <= 1)
         {
            _loc10_ = int(_umtxq_chains + int(_loc7_ * 44));
            _loc7_ = int(_loc10_ + 5632);
         }
         else
         {
            _loc7_ = int(_umtxq_chains + int(_loc7_ * 44));
         }
         _loc2_ = int(_loc2_ - 16);
         si32(_loc7_,_loc2_);
         ESP = _loc2_;
         F_kmtx_unlock();
         _loc2_ = int(_loc2_ + 16);
      }
   }
}
