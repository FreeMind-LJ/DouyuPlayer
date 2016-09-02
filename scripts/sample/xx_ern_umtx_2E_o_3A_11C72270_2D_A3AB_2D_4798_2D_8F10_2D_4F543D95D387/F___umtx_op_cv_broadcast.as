package sample.xx_ern_umtx_2E_o_3A_11C72270_2D_A3AB_2D_4798_2D_8F10_2D_4F543D95D387
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx.*;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si8;
   
   public function F___umtx_op_cv_broadcast() : void
   {
      var _loc3_:* = 0;
      var _loc12_:* = 0;
      var _loc10_:int = 0;
      var _loc7_:* = 0;
      var _loc6_:* = 0;
      var _loc5_:* = 0;
      var _loc11_:* = 0;
      var _loc1_:* = 0;
      var _loc9_:* = 0;
      var _loc8_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc12_ = li32(_loc1_);
      _loc11_ = li32(_loc12_ + 4);
      _loc1_ = int(_loc12_ * -1640562687);
      _loc1_ = int(_loc1_ >>> 25);
      _loc1_ = int(_loc1_ * 44);
      _loc11_ = int(_umtxq_chains + _loc1_);
      _loc10_ = _loc11_ + 5632;
      _loc2_ = int(_loc2_ - 16);
      si32(_loc10_,_loc2_);
      ESP = _loc2_;
      F_kmtx_lock();
      _loc2_ = int(_loc2_ + 16);
      _loc1_ = li8(_loc11_ + 5668);
      if(_loc1_ != 0)
      {
         _loc9_ = li32(_loc11_ + 5672);
         do
         {
            _loc1_ = int(_loc9_ + 1);
            si32(_loc1_,_loc11_ + 5672);
            _loc2_ = int(_loc2_ - 32);
            si32(0,_loc2_ + 16);
            si32(L__2E_str,_loc2_ + 12);
            si32(0,_loc2_ + 8);
            si32(_loc10_,_loc2_ + 4);
            si32(_loc10_,_loc2_);
            ESP = _loc2_;
            F_kmsleep();
            _loc2_ = int(_loc2_ + 32);
            _loc1_ = li32(_loc11_ + 5672);
            _loc9_ = int(_loc1_ + -1);
            si32(_loc9_,_loc11_ + 5672);
            _loc1_ = li8(_loc11_ + 5668);
         }
         while(_loc1_ != 0);
         
      }
      si8(1,_loc11_ + 5668);
      _loc9_ = li32(_loc11_ + 5652);
      _loc8_ = 2147483647;
      loop1:
      while(true)
      {
         while(true)
         {
            _loc6_ = _loc9_;
            if(_loc6_ != 0)
            {
               _loc5_ = li32(_loc6_ + 12);
               _loc9_ = li32(_loc6_);
               if(_loc5_ == 1)
               {
                  if(li32(_loc6_ + 20) == _loc12_)
                  {
                     if(li32(_loc6_ + 24) != 0)
                     {
                        continue;
                     }
                     _loc7_ = li32(_loc6_ + 8);
                     if(_loc5_ <= 1)
                     {
                        _loc5_ = int(int(_umtxq_chains + int(_loc7_ * 44)) + 5632);
                     }
                     else
                     {
                        _loc5_ = int(_umtxq_chains + int(_loc7_ * 44));
                     }
                     _loc1_ = li8(_loc6_ + 28);
                     _loc1_ = _loc1_ & 1;
                     if(_loc1_ != 0)
                     {
                        _loc7_ = li32(_loc6_ + 4);
                        if(_loc9_ != 0)
                        {
                           si32(_loc7_,_loc9_ + 4);
                        }
                        else
                        {
                           si32(_loc7_,_loc5_ + 24);
                        }
                        _loc1_ = li32(_loc6_);
                        var _loc4_:* = li32(_loc6_ + 4);
                        si32(_loc1_,_loc4_);
                        _loc1_ = li32(_loc6_ + 28);
                        _loc1_ = _loc1_ & -2;
                        si32(_loc1_,_loc6_ + 28);
                     }
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc6_,_loc2_);
                     ESP = _loc2_;
                     F_kwakeup();
                     _loc2_ = int(_loc2_ + 16);
                     _loc8_ = _loc8_ + -1;
                     if(_loc8_ != 0)
                     {
                        continue loop1;
                     }
                     break;
                  }
               }
               continue;
            }
            break;
         }
         _loc2_ = int(_loc2_ - 16);
         si32(_loc10_,_loc2_);
         ESP = _loc2_;
         F_kmtx_unlock();
         _loc2_ = int(_loc2_ + 16);
         si32(0,_loc12_);
         _loc2_ = int(_loc2_ - 16);
         si32(_loc10_,_loc2_);
         ESP = _loc2_;
         F_kmtx_lock();
         _loc2_ = int(_loc2_ + 16);
         si8(0,_loc11_ + 5668);
         _loc1_ = li32(_loc11_ + 5672);
         if(_loc1_ != 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_loc10_,_loc2_);
            ESP = _loc2_;
            F_kwakeup_one();
            _loc2_ = int(_loc2_ + 16);
         }
         _loc2_ = int(_loc2_ - 16);
         si32(_loc10_,_loc2_);
         ESP = _loc2_;
         F_kmtx_unlock();
         _loc2_ = int(_loc2_ + 16);
         eax = 0;
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
   }
}
