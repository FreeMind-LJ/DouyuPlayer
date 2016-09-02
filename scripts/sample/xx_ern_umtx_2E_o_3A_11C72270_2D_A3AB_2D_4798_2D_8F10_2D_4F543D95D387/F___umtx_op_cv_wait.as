package sample.xx_ern_umtx_2E_o_3A_11C72270_2D_A3AB_2D_4798_2D_8F10_2D_4F543D95D387
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx.*;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si8;
   
   public function F___umtx_op_cv_wait() : void
   {
      var _loc4_:* = 0;
      var _loc11_:* = 0;
      var _loc3_:* = 0;
      var _loc12_:* = 0;
      var _loc9_:* = 0;
      var _loc8_:* = 0;
      var _loc7_:* = 0;
      var _loc13_:* = 0;
      var _loc10_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc2_ = int(_loc2_ - 32);
      _loc3_ = li32(_loc4_ + 4);
      _loc13_ = li32(_loc3_ + 16);
      _loc12_ = 0;
      if(_loc13_ != 0)
      {
         _loc12_ = int(_loc4_ - 32);
         _loc13_ = _loc12_ | 4;
         _loc11_ = 22;
         if(uint(li32(_loc13_)) <= 999999999)
         {
         }
         addr1612:
         eax = _loc11_;
         _loc2_ = _loc4_;
         ESP = _loc2_;
         return;
      }
      _loc11_ = li32(_loc4_);
      _loc10_ = li32(_loc3_ + 8);
      _loc9_ = li32(_loc3_ + 12);
      _loc8_ = li32(_loc11_ + 4);
      _loc3_ = li32(_loc3_);
      _loc7_ = li32(_loc3_ + 4);
      si32(1,_loc8_ + 12);
      si32(0,_loc8_ + 16);
      si32(_loc3_,_loc8_ + 20);
      si32(0,_loc8_ + 24);
      _loc13_ = int(_loc3_ * -1640562687);
      _loc13_ = int(_loc13_ >>> 25);
      si32(_loc13_,_loc8_ + 8);
      _loc13_ = int(_loc13_ * 44);
      _loc13_ = int(_umtxq_chains + _loc13_);
      _loc13_ = int(_loc13_ + 5632);
      _loc2_ = int(_loc2_ - 16);
      si32(_loc13_,_loc2_);
      ESP = _loc2_;
      F_kmtx_lock();
      _loc2_ = int(_loc2_ + 16);
      _loc7_ = li32(_loc8_ + 8);
      _loc13_ = li32(_loc8_ + 12);
      if(_loc13_ <= 1)
      {
         _loc13_ = int(_umtxq_chains + int(_loc7_ * 44));
         _loc6_ = int(_loc13_ + 5632);
      }
      else
      {
         _loc6_ = int(_umtxq_chains + int(_loc7_ * 44));
      }
      _loc13_ = li8(_loc6_ + 36);
      if(_loc13_ != 0)
      {
         _loc7_ = li32(_loc6_ + 40);
         do
         {
            _loc13_ = int(_loc7_ + 1);
            si32(_loc13_,_loc6_ + 40);
            _loc2_ = int(_loc2_ - 32);
            si32(0,_loc2_ + 16);
            si32(L__2E_str,_loc2_ + 12);
            si32(0,_loc2_ + 8);
            si32(_loc6_,_loc2_ + 4);
            si32(_loc6_,_loc2_);
            ESP = _loc2_;
            F_kmsleep();
            _loc2_ = int(_loc2_ + 32);
            _loc13_ = li32(_loc6_ + 40);
            _loc7_ = int(_loc13_ + -1);
            si32(_loc7_,_loc6_ + 40);
            _loc13_ = li8(_loc6_ + 36);
         }
         while(_loc13_ != 0);
         
      }
      si8(1,_loc6_ + 36);
      _loc7_ = li32(_loc8_ + 8);
      _loc13_ = li32(_loc8_ + 12);
      if(_loc13_ <= 1)
      {
         _loc13_ = int(_umtxq_chains + int(_loc7_ * 44));
         _loc7_ = int(_loc13_ + 5632);
      }
      else
      {
         _loc7_ = int(_umtxq_chains + int(_loc7_ * 44));
      }
      si32(0,_loc8_);
      _loc13_ = li32(_loc7_ + 24);
      si32(_loc13_,_loc8_ + 4);
      _loc13_ = li32(_loc7_ + 24);
      si32(_loc8_,_loc13_);
      si32(_loc8_,_loc7_ + 24);
      _loc13_ = li32(_loc8_ + 28);
      _loc13_ = _loc13_ | 1;
      si32(_loc13_,_loc8_ + 28);
      _loc7_ = li32(_loc8_ + 8);
      _loc13_ = li32(_loc8_ + 12);
      if(_loc13_ <= 1)
      {
         _loc13_ = int(_umtxq_chains + int(_loc7_ * 44));
         _loc7_ = int(_loc13_ + 5632);
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
      si32(1,_loc3_);
      _loc3_ = li32(_loc8_ + 8);
      _loc13_ = li32(_loc8_ + 12);
      if(_loc13_ <= 1)
      {
         _loc13_ = int(_umtxq_chains + int(_loc3_ * 44));
         _loc3_ = int(_loc13_ + 5632);
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
      _loc3_ = li32(_loc8_ + 8);
      _loc13_ = li32(_loc8_ + 12);
      if(_loc13_ <= 1)
      {
         _loc13_ = int(_umtxq_chains + int(_loc3_ * 44));
         _loc3_ = int(_loc13_ + 5632);
      }
      else
      {
         _loc3_ = int(_umtxq_chains + int(_loc3_ * 44));
      }
      si8(0,_loc3_ + 36);
      _loc13_ = li32(_loc3_ + 40);
      if(_loc13_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc3_,_loc2_);
         ESP = _loc2_;
         F_kwakeup_one();
         _loc2_ = int(_loc2_ + 16);
      }
      _loc3_ = li32(_loc8_ + 8);
      _loc13_ = li32(_loc8_ + 12);
      if(_loc13_ <= 1)
      {
         _loc13_ = int(_umtxq_chains + int(_loc3_ * 44));
         _loc3_ = int(_loc13_ + 5632);
      }
      else
      {
         _loc3_ = int(_umtxq_chains + int(_loc3_ * 44));
      }
      _loc2_ = int(_loc2_ - 16);
      si32(_loc3_,_loc2_);
      ESP = _loc2_;
      F_kmtx_unlock();
      _loc2_ = int(_loc2_ + 16);
      _loc2_ = int(_loc2_ - 16);
      si32(_loc9_,_loc2_ + 4);
      si32(_loc11_,_loc2_);
      ESP = _loc2_;
      F_do_unlock_umutex();
      _loc2_ = int(_loc2_ + 16);
      _loc9_ = int(eax);
      _loc3_ = li32(_loc8_ + 8);
      _loc13_ = li32(_loc8_ + 12);
      if(_loc13_ <= 1)
      {
         _loc13_ = int(_umtxq_chains + int(_loc3_ * 44));
         _loc3_ = int(_loc13_ + 5632);
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
      if(_loc9_ == 0)
      {
         _loc13_ = _loc10_ & 1;
         if(_loc13_ != 0)
         {
            _loc9_ = li32(_loc11_ + 12);
            _loc13_ = _loc9_ & 524288;
            if(_loc13_ != 0)
            {
               _loc13_ = _loc9_ & -524289;
               si32(_loc13_,_loc11_ + 12);
               _loc9_ = 4;
            }
            addr1448:
            _loc9_ = li32(_loc8_ + 12);
            _loc10_ = li32(_loc8_ + 8);
            if(_loc9_ <= 1)
            {
               _loc13_ = int(_umtxq_chains + int(_loc10_ * 44));
               _loc12_ = int(_loc13_ + 5632);
            }
            else
            {
               _loc12_ = int(_umtxq_chains + int(_loc10_ * 44));
            }
            _loc13_ = li8(_loc8_ + 28);
            _loc13_ = _loc13_ & 1;
            if(_loc13_ != 0)
            {
               _loc9_ = li32(_loc8_ + 4);
               _loc10_ = li32(_loc8_);
               if(_loc10_ != 0)
               {
                  si32(_loc9_,_loc10_ + 4);
               }
               else
               {
                  si32(_loc9_,_loc12_ + 24);
               }
               var _loc1_:* = li32(_loc8_);
               _loc13_ = li32(_loc8_ + 4);
               si32(_loc1_,_loc13_);
               _loc13_ = li32(_loc8_ + 28);
               _loc13_ = _loc13_ & -2;
               si32(_loc13_,_loc8_ + 28);
               _loc9_ = li32(_loc8_ + 12);
               _loc10_ = li32(_loc8_ + 8);
            }
            if(_loc9_ <= 1)
            {
               _loc13_ = int(_umtxq_chains + int(_loc10_ * 44));
               _loc8_ = int(_loc13_ + 5632);
            }
            else
            {
               _loc8_ = int(_umtxq_chains + int(_loc10_ * 44));
            }
            _loc2_ = int(_loc2_ - 16);
            si32(_loc8_,_loc2_);
            ESP = _loc2_;
            F_kmtx_unlock();
            _loc2_ = int(_loc2_ + 16);
            §§goto(addr1612);
         }
         if(_loc12_ == 0)
         {
            _loc12_ = li32(_loc8_ + 8);
            _loc13_ = li32(_loc8_ + 12);
            if(_loc13_ <= 1)
            {
               _loc13_ = int(_umtxq_chains + int(_loc12_ * 44));
               _loc12_ = int(_loc13_ + 5632);
            }
            else
            {
               _loc12_ = int(_umtxq_chains + int(_loc12_ * 44));
            }
            _loc13_ = li8(_loc8_ + 28);
            _loc13_ = _loc13_ & 1;
            _loc11_ = 0;
            if(_loc13_ != 0)
            {
               _loc2_ = int(_loc2_ - 32);
               si32(0,_loc2_ + 16);
               si32(L__2E_str6,_loc2_ + 12);
               si32(256,_loc2_ + 8);
               si32(_loc12_,_loc2_ + 4);
               si32(_loc8_,_loc2_);
               ESP = _loc2_;
               F_kmsleep();
               _loc9_ = 60;
               _loc2_ = int(_loc2_ + 32);
               _loc12_ = int(eax);
               if(_loc12_ != 35)
               {
                  _loc9_ = _loc12_;
               }
               addr1209:
               _loc11_ = 0;
               if(_loc9_ != 0)
               {
               }
            }
         }
         else
         {
            _loc2_ = int(_loc2_ - 16);
            _loc13_ = int(_loc4_ - 24);
            si32(_loc13_,_loc2_);
            ESP = _loc2_;
            F_kgetnanouptime();
            _loc2_ = int(_loc2_ + 16);
            _loc11_ = li32(_loc12_);
            _loc9_ = int(_loc11_ + li32(_loc4_ - 24));
            si32(_loc9_,_loc4_ - 24);
            _loc10_ = _loc13_ | 4;
            _loc12_ = li32(_loc12_ + 4);
            _loc3_ = int(_loc12_ + li32(_loc10_));
            si32(_loc3_,_loc10_);
            if(_loc3_ >= 1000000000)
            {
               _loc13_ = int(_loc9_ + 1);
               si32(_loc13_,_loc4_ - 24);
               _loc13_ = int(_loc3_ + -1000000000);
               si32(_loc13_,_loc10_);
            }
            si32(_loc11_,_loc4_ - 8);
            _loc11_ = 0;
            while(true)
            {
               var _loc5_:int = _loc12_ / 1000;
               _loc13_ = int(_loc4_ - 8);
               _loc1_ = _loc13_ | 4;
               si32(_loc5_,_loc1_);
               _loc2_ = int(_loc2_ - 16);
               si32(_loc13_,_loc2_);
               ESP = _loc2_;
               F_ktvtohz();
               _loc2_ = int(_loc2_ + 16);
               _loc12_ = int(eax);
               _loc9_ = li32(_loc8_ + 8);
               _loc13_ = li32(_loc8_ + 12);
               if(_loc13_ <= 1)
               {
                  _loc13_ = int(_umtxq_chains + int(_loc9_ * 44));
                  _loc9_ = int(_loc13_ + 5632);
               }
               else
               {
                  _loc9_ = int(_umtxq_chains + int(_loc9_ * 44));
               }
               _loc13_ = li8(_loc8_ + 28);
               _loc13_ = _loc13_ & 1;
               if(_loc13_ != 0)
               {
                  _loc2_ = int(_loc2_ - 32);
                  si32(_loc12_,_loc2_ + 16);
                  si32(L__2E_str6,_loc2_ + 12);
                  si32(256,_loc2_ + 8);
                  si32(_loc9_,_loc2_ + 4);
                  si32(_loc8_,_loc2_);
                  ESP = _loc2_;
                  F_kmsleep();
                  _loc9_ = 60;
                  _loc2_ = int(_loc2_ + 32);
                  _loc12_ = int(eax);
                  if(_loc12_ != 35)
                  {
                     _loc9_ = _loc12_;
                  }
                  if(_loc9_ == 60)
                  {
                     _loc2_ = int(_loc2_ - 16);
                     _loc6_ = int(_loc4_ - 16);
                     si32(_loc6_,_loc2_);
                     ESP = _loc2_;
                     F_kgetnanouptime();
                     _loc2_ = int(_loc2_ + 16);
                     _loc3_ = li32(_loc4_ - 24);
                     _loc12_ = li32(_loc4_ - 16);
                     if(_loc12_ == _loc3_)
                     {
                        _loc7_ = li32(_loc10_);
                        _loc13_ = _loc6_ | 4;
                        _loc6_ = li32(_loc13_);
                        _loc9_ = 60;
                        if(_loc6_ < _loc7_)
                        {
                           addr1172:
                           _loc13_ = int(_loc3_ - _loc12_);
                           _loc9_ = int(_loc7_ - _loc6_);
                           _loc1_ = _loc9_ >> 31;
                           _loc13_ = int(_loc13_ + _loc1_);
                           si32(_loc13_,_loc4_ - 8);
                           _loc12_ = int(_loc9_ + 1000000000);
                           if(_loc9_ >= _loc11_)
                           {
                              _loc12_ = _loc9_;
                              continue;
                           }
                           continue;
                        }
                     }
                     else
                     {
                        _loc9_ = 60;
                        if(_loc12_ < _loc3_)
                        {
                           _loc13_ = _loc6_ | 4;
                           _loc6_ = li32(_loc13_);
                           _loc7_ = li32(_loc10_);
                           §§goto(addr1172);
                        }
                     }
                  }
                  else
                  {
                     §§goto(addr1209);
                  }
               }
               break;
            }
         }
         §§goto(addr1448);
      }
      _loc13_ = li8(_loc8_ + 28);
      _loc13_ = _loc13_ & 1;
      if(_loc13_ == 0)
      {
         _loc10_ = li32(_loc8_ + 12);
         _loc12_ = li32(_loc8_ + 8);
         if(_loc10_ <= 1)
         {
            _loc13_ = int(_umtxq_chains + int(_loc12_ * 44));
            _loc12_ = int(_loc13_ + 5632);
         }
         else
         {
            _loc12_ = int(_umtxq_chains + int(_loc12_ * 44));
         }
         _loc11_ = li32(_loc12_ + 20);
         while(true)
         {
            _loc12_ = _loc11_;
            _loc11_ = 0;
            if(_loc12_ != 0)
            {
               _loc3_ = li32(_loc12_ + 12);
               _loc11_ = li32(_loc12_);
               if(_loc3_ == _loc10_)
               {
                  _loc13_ = li32(_loc12_ + 20);
                  if(_loc13_ == li32(_loc8_ + 20))
                  {
                     _loc13_ = li32(_loc12_ + 24);
                     if(_loc13_ != li32(_loc8_ + 24))
                     {
                        continue;
                     }
                     _loc10_ = li32(_loc12_ + 8);
                     if(_loc3_ <= 1)
                     {
                        _loc13_ = int(_umtxq_chains + int(_loc10_ * 44));
                        _loc3_ = int(_loc13_ + 5632);
                     }
                     else
                     {
                        _loc3_ = int(_umtxq_chains + int(_loc10_ * 44));
                     }
                     _loc13_ = li8(_loc12_ + 28);
                     _loc13_ = _loc13_ & 1;
                     if(_loc13_ != 0)
                     {
                        _loc10_ = li32(_loc12_ + 4);
                        if(_loc11_ != 0)
                        {
                           si32(_loc10_,_loc11_ + 4);
                        }
                        else
                        {
                           si32(_loc10_,_loc3_ + 24);
                        }
                        _loc1_ = li32(_loc12_);
                        _loc13_ = li32(_loc12_ + 4);
                        si32(_loc1_,_loc13_);
                        _loc13_ = li32(_loc12_ + 28);
                        _loc13_ = _loc13_ & -2;
                        si32(_loc13_,_loc12_ + 28);
                     }
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc12_,_loc2_);
                     ESP = _loc2_;
                     F_kwakeup();
                     _loc2_ = int(_loc2_ + 16);
                  }
                  else
                  {
                     continue;
                  }
               }
               else
               {
                  continue;
               }
            }
            §§goto(addr1448);
         }
      }
      _loc11_ = _loc9_;
      if(_loc9_ == -1)
      {
         _loc11_ = 4;
      }
      §§goto(addr1448);
   }
}
