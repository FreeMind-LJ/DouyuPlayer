package sample.xx_ern_umtx_2E_o_3A_11C72270_2D_A3AB_2D_4798_2D_8F10_2D_4F543D95D387
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx.*;
   import avm2.intrinsics.memory.li8;
   
   public function F_do_wait() : void
   {
      var _loc3_:* = 0;
      var _loc12_:* = 0;
      var _loc11_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:* = 0;
      var _loc1_:* = 0;
      var _loc10_:* = 0;
      var _loc9_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 32);
      _loc1_ = 0;
      _loc12_ = li32(_loc3_);
      si32(_loc1_,_loc12_ + 12);
      si32(_loc1_,_loc12_ + 16);
      _loc11_ = li32(_loc3_ + 4);
      si32(_loc11_,_loc12_ + 20);
      si32(_loc1_,_loc12_ + 24);
      _loc10_ = int(_loc11_ * -1640562687);
      _loc10_ = int(_loc10_ >>> 25);
      si32(_loc10_,_loc12_ + 8);
      _loc10_ = int(_loc10_ * 44);
      _loc10_ = int(_umtxq_chains + _loc10_);
      _loc10_ = int(_loc10_ + 5632);
      _loc2_ = int(_loc2_ - 16);
      si32(_loc10_,_loc2_);
      ESP = _loc2_;
      F_kmtx_lock();
      _loc2_ = int(_loc2_ + 16);
      _loc9_ = li32(_loc12_ + 8);
      _loc10_ = li32(_loc12_ + 12);
      _loc8_ = li32(_loc3_ + 12);
      _loc7_ = li32(_loc3_ + 8);
      if(_loc10_ <= 1)
      {
         _loc10_ = int(_umtxq_chains + int(_loc9_ * 44));
         _loc9_ = int(_loc10_ + 5632);
      }
      else
      {
         _loc9_ = int(_umtxq_chains + int(_loc9_ * 44));
      }
      si32(_loc1_,_loc12_);
      _loc10_ = li32(_loc9_ + 24);
      si32(_loc10_,_loc12_ + 4);
      _loc10_ = li32(_loc9_ + 24);
      si32(_loc12_,_loc10_);
      si32(_loc12_,_loc9_ + 24);
      _loc10_ = li32(_loc12_ + 28);
      _loc10_ = _loc10_ | 1;
      si32(_loc10_,_loc12_ + 28);
      _loc9_ = li32(_loc12_ + 8);
      _loc10_ = li32(_loc12_ + 12);
      if(_loc10_ <= 1)
      {
         _loc10_ = int(_umtxq_chains + int(_loc9_ * 44));
         _loc9_ = int(_loc10_ + 5632);
      }
      else
      {
         _loc9_ = int(_umtxq_chains + int(_loc9_ * 44));
      }
      _loc2_ = int(_loc2_ - 16);
      si32(_loc9_,_loc2_);
      ESP = _loc2_;
      F_kmtx_unlock();
      _loc2_ = int(_loc2_ + 16);
      _loc10_ = li32(_loc11_);
      if(_loc10_ != _loc7_)
      {
         _loc7_ = li32(_loc12_ + 8);
         _loc10_ = li32(_loc12_ + 12);
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
         _loc8_ = li32(_loc12_ + 12);
         _loc11_ = li32(_loc12_ + 8);
         if(_loc8_ <= 1)
         {
            _loc10_ = int(_umtxq_chains + int(_loc11_ * 44));
            _loc7_ = int(_loc10_ + 5632);
         }
         else
         {
            _loc7_ = int(_umtxq_chains + int(_loc11_ * 44));
         }
         _loc10_ = li8(_loc12_ + 28);
         _loc10_ = _loc10_ & 1;
         if(_loc10_ != 0)
         {
            _loc8_ = li32(_loc12_ + 4);
            _loc11_ = li32(_loc12_);
            if(_loc11_ != 0)
            {
               si32(_loc8_,_loc11_ + 4);
            }
            else
            {
               si32(_loc8_,_loc7_ + 24);
            }
            _loc10_ = li32(_loc12_);
            var _loc6_:* = li32(_loc12_ + 4);
            si32(_loc10_,_loc6_);
            _loc10_ = li32(_loc12_ + 28);
            _loc10_ = _loc10_ & -2;
            si32(_loc10_,_loc12_ + 28);
            _loc8_ = li32(_loc12_ + 12);
            _loc11_ = li32(_loc12_ + 8);
         }
         if(_loc8_ <= 1)
         {
            _loc10_ = int(_umtxq_chains + int(_loc11_ * 44));
            _loc12_ = int(_loc10_ + 5632);
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
      else if(_loc8_ == 0)
      {
         _loc1_ = li32(_loc12_ + 8);
         _loc10_ = li32(_loc12_ + 12);
         if(_loc10_ <= 1)
         {
            _loc10_ = int(_umtxq_chains + int(_loc1_ * 44));
            _loc1_ = int(_loc10_ + 5632);
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
         _loc11_ = li32(_loc12_ + 12);
         _loc8_ = li32(_loc12_ + 8);
         if(_loc11_ <= 1)
         {
            _loc10_ = int(_umtxq_chains + int(_loc8_ * 44));
            _loc7_ = int(_loc10_ + 5632);
         }
         else
         {
            _loc7_ = int(_umtxq_chains + int(_loc8_ * 44));
         }
         _loc10_ = li8(_loc12_ + 28);
         _loc10_ = _loc10_ & 1;
         _loc1_ = 0;
         if(_loc10_ != 0)
         {
            _loc2_ = int(_loc2_ - 32);
            si32(0,_loc2_ + 16);
            si32(L__2E_str5,_loc2_ + 12);
            si32(256,_loc2_ + 8);
            si32(_loc7_,_loc2_ + 4);
            si32(_loc12_,_loc2_);
            ESP = _loc2_;
            F_kmsleep();
            _loc1_ = 60;
            _loc2_ = int(_loc2_ + 32);
            _loc7_ = int(eax);
            if(_loc7_ != 35)
            {
               _loc1_ = _loc7_;
            }
            _loc11_ = li32(_loc12_ + 12);
            _loc8_ = li32(_loc12_ + 8);
         }
         if(_loc11_ <= 1)
         {
            _loc10_ = int(_umtxq_chains + int(_loc8_ * 44));
            _loc7_ = int(_loc10_ + 5632);
         }
         else
         {
            _loc7_ = int(_umtxq_chains + int(_loc8_ * 44));
         }
         _loc10_ = li8(_loc12_ + 28);
         _loc10_ = _loc10_ & 1;
         if(_loc10_ != 0)
         {
            _loc11_ = li32(_loc12_ + 4);
            _loc8_ = li32(_loc12_);
            if(_loc8_ != 0)
            {
               si32(_loc11_,_loc8_ + 4);
            }
            else
            {
               si32(_loc11_,_loc7_ + 24);
            }
            _loc10_ = li32(_loc12_);
            _loc6_ = li32(_loc12_ + 4);
            si32(_loc10_,_loc6_);
            _loc10_ = li32(_loc12_ + 28);
            _loc10_ = _loc10_ & -2;
            si32(_loc10_,_loc12_ + 28);
            _loc11_ = li32(_loc12_ + 12);
            _loc8_ = li32(_loc12_ + 8);
         }
         if(_loc11_ <= 1)
         {
            _loc10_ = int(_umtxq_chains + int(_loc8_ * 44));
            _loc12_ = int(_loc10_ + 5632);
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
      }
      else
      {
         _loc2_ = int(_loc2_ - 16);
         _loc6_ = int(_loc3_ - 8);
         si32(_loc6_,_loc2_);
         ESP = _loc2_;
         F_kgetnanouptime();
         _loc2_ = int(_loc2_ + 16);
         _loc1_ = li32(_loc8_);
         _loc11_ = int(_loc1_ + li32(_loc3_ - 8));
         si32(_loc11_,_loc3_ - 8);
         _loc7_ = _loc6_ | 4;
         _loc9_ = li32(_loc8_ + 4);
         _loc8_ = int(_loc9_ + li32(_loc7_));
         si32(_loc8_,_loc7_);
         if(_loc8_ >= 1000000000)
         {
            _loc10_ = int(_loc11_ + 1);
            si32(_loc10_,_loc3_ - 8);
            _loc10_ = int(_loc8_ + -1000000000);
            si32(_loc10_,_loc7_);
         }
         si32(_loc1_,_loc3_ - 24);
         _loc10_ = int(_loc9_ / 1000);
         _loc11_ = int(_loc3_ - 24);
         _loc8_ = _loc11_ | 4;
         si32(_loc10_,_loc8_);
         _loc1_ = li32(_loc12_ + 8);
         _loc10_ = li32(_loc12_ + 12);
         if(_loc10_ <= 1)
         {
            _loc10_ = int(_umtxq_chains + int(_loc1_ * 44));
            _loc1_ = int(_loc10_ + 5632);
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
         while(true)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_loc11_,_loc2_);
            ESP = _loc2_;
            F_ktvtohz();
            _loc2_ = int(_loc2_ + 16);
            _loc9_ = int(eax);
            _loc1_ = li32(_loc12_ + 8);
            _loc10_ = li32(_loc12_ + 12);
            if(_loc10_ <= 1)
            {
               _loc10_ = int(_umtxq_chains + int(_loc1_ * 44));
               _loc5_ = int(_loc10_ + 5632);
            }
            else
            {
               _loc5_ = int(_umtxq_chains + int(_loc1_ * 44));
            }
            _loc10_ = li8(_loc12_ + 28);
            _loc10_ = _loc10_ & 1;
            _loc1_ = 0;
            if(_loc10_ != 0)
            {
               _loc2_ = int(_loc2_ - 32);
               si32(_loc9_,_loc2_ + 16);
               si32(L__2E_str5,_loc2_ + 12);
               si32(256,_loc2_ + 8);
               si32(_loc5_,_loc2_ + 4);
               si32(_loc12_,_loc2_);
               ESP = _loc2_;
               F_kmsleep();
               _loc1_ = 60;
               _loc2_ = int(_loc2_ + 32);
               _loc9_ = int(eax);
               if(_loc9_ != 35)
               {
                  _loc1_ = _loc9_;
               }
               _loc10_ = li32(_loc12_ + 28);
               _loc10_ = _loc10_ & 1;
               if(_loc10_ != 0)
               {
                  if(_loc1_ == 60)
                  {
                     _loc1_ = li32(_loc12_ + 8);
                     _loc10_ = li32(_loc12_ + 12);
                     if(_loc10_ <= 1)
                     {
                        _loc10_ = int(_umtxq_chains + int(_loc1_ * 44));
                        _loc1_ = int(_loc10_ + 5632);
                     }
                     else
                     {
                        _loc1_ = int(_umtxq_chains + int(_loc1_ * 44));
                     }
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc1_,_loc2_);
                     ESP = _loc2_;
                     F_kmtx_unlock();
                     _loc2_ = int(_loc2_ + 16);
                     _loc2_ = int(_loc2_ - 16);
                     _loc4_ = int(_loc3_ - 16);
                     si32(_loc4_,_loc2_);
                     ESP = _loc2_;
                     F_kgetnanouptime();
                     _loc2_ = int(_loc2_ + 16);
                     _loc9_ = li32(_loc3_ - 8);
                     _loc1_ = li32(_loc3_ - 16);
                     if(_loc1_ == _loc9_)
                     {
                        _loc5_ = li32(_loc7_);
                        _loc10_ = _loc4_ | 4;
                        _loc4_ = li32(_loc10_);
                        if(_loc4_ < _loc5_)
                        {
                           addr1326:
                           _loc10_ = int(_loc9_ - _loc1_);
                           _loc9_ = int(_loc5_ - _loc4_);
                           _loc6_ = _loc9_ >> 31;
                           _loc10_ = int(_loc10_ + _loc6_);
                           si32(_loc10_,_loc3_ - 24);
                           _loc1_ = int(_loc9_ + 1000000000);
                           if(_loc9_ >= 0)
                           {
                              _loc1_ = _loc9_;
                           }
                           _loc10_ = int(_loc1_ / 1000);
                           si32(_loc10_,_loc8_);
                           _loc1_ = li32(_loc12_ + 8);
                           _loc10_ = li32(_loc12_ + 12);
                           if(_loc10_ <= 1)
                           {
                              _loc10_ = int(_umtxq_chains + int(_loc1_ * 44));
                              _loc1_ = int(_loc10_ + 5632);
                           }
                           else
                           {
                              _loc1_ = int(_umtxq_chains + int(_loc1_ * 44));
                           }
                           continue;
                        }
                     }
                     else if(_loc1_ < _loc9_)
                     {
                        _loc10_ = _loc4_ | 4;
                        _loc4_ = li32(_loc10_);
                        _loc5_ = li32(_loc7_);
                        §§goto(addr1326);
                     }
                     _loc1_ = li32(_loc12_ + 8);
                     _loc10_ = li32(_loc12_ + 12);
                     if(_loc10_ <= 1)
                     {
                        _loc10_ = int(_umtxq_chains + int(_loc1_ * 44));
                        _loc1_ = int(_loc10_ + 5632);
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
                     _loc1_ = 60;
                     break;
                  }
                  break;
               }
               break;
            }
            break;
         }
         _loc11_ = li32(_loc12_ + 12);
         _loc8_ = li32(_loc12_ + 8);
         if(_loc11_ <= 1)
         {
            _loc10_ = int(_umtxq_chains + int(_loc8_ * 44));
            _loc7_ = int(_loc10_ + 5632);
         }
         else
         {
            _loc7_ = int(_umtxq_chains + int(_loc8_ * 44));
         }
         _loc10_ = li8(_loc12_ + 28);
         _loc10_ = _loc10_ & 1;
         if(_loc10_ != 0)
         {
            _loc11_ = li32(_loc12_ + 4);
            _loc8_ = li32(_loc12_);
            if(_loc8_ != 0)
            {
               si32(_loc11_,_loc8_ + 4);
            }
            else
            {
               si32(_loc11_,_loc7_ + 24);
            }
            _loc10_ = li32(_loc12_);
            _loc6_ = li32(_loc12_ + 4);
            si32(_loc10_,_loc6_);
            _loc10_ = li32(_loc12_ + 28);
            _loc10_ = _loc10_ & -2;
            si32(_loc10_,_loc12_ + 28);
            _loc11_ = li32(_loc12_ + 12);
            _loc8_ = li32(_loc12_ + 8);
         }
         if(_loc11_ <= 1)
         {
            _loc10_ = int(_umtxq_chains + int(_loc8_ * 44));
            _loc12_ = int(_loc10_ + 5632);
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
      }
      _loc12_ = 4;
      if(_loc1_ != -1)
      {
         _loc12_ = _loc1_;
      }
      eax = _loc12_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
