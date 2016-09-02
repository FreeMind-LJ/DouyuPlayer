package sample.xx_ern_umtx_2E_o_3A_11C72270_2D_A3AB_2D_4798_2D_8F10_2D_4F543D95D387
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx.*;
   
   public function F___umtx_op_rw_wrlock() : void
   {
      var _loc3_:* = 0;
      var _loc11_:* = 0;
      var _loc1_:* = 0;
      var _loc12_:* = 0;
      var _loc5_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:int = 0;
      var _loc4_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 32);
      _loc1_ = li32(_loc3_ + 4);
      _loc12_ = li32(_loc1_ + 16);
      _loc11_ = li32(_loc3_);
      if(_loc12_ == 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(0,_loc2_ + 8);
         si32(li32(_loc1_),_loc2_ + 4);
         si32(li32(_loc11_ + 4),_loc2_);
         ESP = _loc2_;
         F_do_rw_wrlock();
         _loc2_ = int(_loc2_ + 16);
         _loc11_ = int(eax);
      }
      else
      {
         si32(0,_loc12_ + 4);
         si32(0,_loc12_);
         _loc1_ = li32(_loc1_);
         _loc2_ = int(_loc2_ - 16);
         _loc12_ = int(_loc3_ - 8);
         si32(_loc12_,_loc2_);
         ESP = _loc2_;
         F_kgetnanouptime();
         _loc2_ = int(_loc2_ + 16);
         _loc8_ = 0;
         while(true)
         {
            var _loc9_:int = _loc3_ - 24;
            var _loc10_:* = _loc9_ | 4;
            si32(_loc8_,_loc10_);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc9_,_loc2_);
            ESP = _loc2_;
            F_ktvtohz();
            _loc2_ = int(_loc2_ + 16);
            _loc9_ = eax;
            _loc10_ = li32(_loc11_ + 4);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc9_,_loc2_ + 8);
            si32(_loc1_,_loc2_ + 4);
            si32(_loc10_,_loc2_);
            ESP = _loc2_;
            F_do_rw_wrlock();
            _loc2_ = int(_loc2_ + 16);
            _loc8_ = eax;
            if(_loc8_ == 60)
            {
               _loc2_ = int(_loc2_ - 16);
               _loc7_ = int(_loc3_ - 16);
               si32(_loc7_,_loc2_);
               ESP = _loc2_;
               F_kgetnanouptime();
               _loc2_ = int(_loc2_ + 16);
               _loc6_ = li32(_loc3_ - 8);
               _loc5_ = li32(_loc3_ - 16);
               if(_loc5_ == _loc6_)
               {
                  _loc10_ = _loc12_ | 4;
                  _loc4_ = li32(_loc10_);
                  _loc10_ = _loc7_ | 4;
                  _loc7_ = li32(_loc10_);
                  _loc8_ = 60;
                  if(_loc7_ >= _loc4_)
                  {
                     break;
                  }
               }
               else
               {
                  _loc8_ = 60;
                  if(_loc5_ < _loc6_)
                  {
                     _loc10_ = _loc7_ | 4;
                     _loc7_ = li32(_loc10_);
                     _loc10_ = _loc12_ | 4;
                     _loc4_ = li32(_loc10_);
                  }
                  else
                  {
                     break;
                  }
               }
               _loc9_ = _loc6_ - _loc5_;
               _loc8_ = _loc4_ - _loc7_;
               _loc10_ = _loc8_ >> 31;
               _loc10_ = int(_loc9_ + _loc10_);
               si32(_loc10_,_loc3_ - 24);
               _loc6_ = int(_loc8_ + 1000000000);
               if(_loc8_ >= 0)
               {
                  _loc6_ = _loc8_;
               }
               _loc8_ = _loc6_ / 1000;
               continue;
            }
            break;
         }
         _loc11_ = 4;
         if(_loc8_ != -1)
         {
            _loc11_ = _loc8_;
         }
      }
      eax = _loc11_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
