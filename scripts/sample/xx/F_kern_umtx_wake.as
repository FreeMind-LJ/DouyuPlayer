package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_ern_umtx_2E_o_3A_11C72270_2D_A3AB_2D_4798_2D_8F10_2D_4F543D95D387.*;
   import avm2.intrinsics.memory.li8;
   
   public function F_kern_umtx_wake() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc11_:int = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc12_:* = 0;
      var _loc7_:* = 0;
      var _loc9_:int = 0;
      var _loc10_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc12_ = int(_loc1_ * -1640562687);
      _loc12_ = int(_loc12_ >>> 25);
      _loc12_ = int(_loc12_ * 44);
      _loc12_ = int(_umtxq_chains + _loc12_);
      _loc11_ = _loc12_ + 5632;
      _loc2_ = int(_loc2_ - 16);
      si32(_loc11_,_loc2_);
      ESP = _loc2_;
      F_kmtx_lock();
      _loc2_ = int(_loc2_ + 16);
      _loc10_ = li32(_loc12_ + 5652);
      _loc9_ = 0;
      _loc8_ = li32(_loc3_ + 8);
      loop0:
      while(true)
      {
         _loc9_ = _loc9_ + 1;
         while(true)
         {
            _loc6_ = _loc10_;
            if(_loc6_ != 0)
            {
               _loc5_ = li32(_loc6_ + 12);
               _loc10_ = li32(_loc6_);
               if(_loc5_ == 0)
               {
                  _loc12_ = li32(_loc6_ + 20);
                  if(_loc12_ == _loc1_)
                  {
                     _loc12_ = li32(_loc6_ + 24);
                     if(_loc12_ != 0)
                     {
                        continue;
                     }
                     _loc7_ = li32(_loc6_ + 8);
                     if(_loc5_ <= 1)
                     {
                        _loc12_ = int(_umtxq_chains + int(_loc7_ * 44));
                        _loc7_ = int(_loc12_ + 5632);
                     }
                     else
                     {
                        _loc7_ = int(_umtxq_chains + int(_loc7_ * 44));
                     }
                     _loc12_ = li8(_loc6_ + 28);
                     _loc12_ = _loc12_ & 1;
                     if(_loc12_ != 0)
                     {
                        _loc5_ = li32(_loc6_ + 4);
                        if(_loc10_ != 0)
                        {
                           si32(_loc5_,_loc10_ + 4);
                        }
                        else
                        {
                           si32(_loc5_,_loc7_ + 24);
                        }
                        var _loc4_:* = li32(_loc6_);
                        _loc12_ = li32(_loc6_ + 4);
                        si32(_loc4_,_loc12_);
                        _loc12_ = li32(_loc6_ + 28);
                        _loc12_ = _loc12_ & -2;
                        si32(_loc12_,_loc6_ + 28);
                     }
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc6_,_loc2_);
                     ESP = _loc2_;
                     F_kwakeup();
                     _loc2_ = int(_loc2_ + 16);
                     if(_loc9_ < _loc8_)
                     {
                        continue loop0;
                     }
                     break;
                  }
               }
               continue;
            }
            break;
         }
         _loc2_ = int(_loc2_ - 16);
         si32(_loc11_,_loc2_);
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
