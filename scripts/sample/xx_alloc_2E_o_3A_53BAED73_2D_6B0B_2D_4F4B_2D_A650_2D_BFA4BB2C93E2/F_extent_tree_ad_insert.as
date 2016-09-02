package sample.xx_alloc_2E_o_3A_53BAED73_2D_6B0B_2D_4F4B_2D_A650_2D_BFA4BB2C93E2
{
   import sample.xx.ESP;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li8;
   
   public function F_extent_tree_ad_insert() : void
   {
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc8_:* = 0;
      var _loc12_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc10_:* = 0;
      var _loc9_:* = 0;
      var _loc13_:* = 0;
      var _loc7_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc2_ = int(_loc2_ - 24);
      _loc3_ = li32(_loc4_);
      _loc13_ = li32(_loc3_);
      si32(_loc13_,_loc4_ - 16);
      _loc12_ = int(_loc3_ + 4);
      var _loc11_:* = _loc12_ & -2;
      si32(_loc11_,_loc4_ - 12);
      _loc10_ = 0;
      _loc9_ = int(_loc4_ - 24);
      _loc8_ = li32(_loc4_ + 4);
      _loc7_ = _loc12_;
      while(true)
      {
         _loc6_ = _loc13_;
         _loc5_ = _loc9_;
         while(true)
         {
            if(_loc12_ == _loc6_)
            {
               si32(_loc12_,_loc8_ + 8);
               _loc11_ = _loc12_ | 1;
               si32(_loc11_,_loc8_ + 12);
               if(_loc10_ >= 1)
               {
                  _loc11_ = li32(_loc5_ + 12);
                  _loc11_ = _loc11_ & 1;
                  _loc11_ = _loc11_ | _loc8_;
                  si32(_loc11_,_loc5_ + 12);
                  _loc12_ = _loc8_ & -2;
                  _loc11_ = _loc11_ & 1 | li32(_loc12_ + 8);
                  si32(_loc11_,_loc5_ + 12);
                  si32(_loc5_,_loc12_ + 8);
                  _loc11_ = li32(_loc5_ + 12);
                  _loc11_ = li32(_loc12_ + 12) & -2 | _loc11_ & 1;
                  si32(_loc11_,_loc12_ + 12);
                  _loc11_ = li32(_loc5_ + 12);
                  _loc11_ = _loc11_ | 1;
                  si32(_loc11_,_loc5_ + 12);
                  _loc11_ = li32(_loc7_ + 8);
                  if(_loc11_ == _loc5_)
                  {
                     si32(_loc12_,_loc7_ + 8);
                  }
                  else
                  {
                     _loc8_ = li32(_loc7_ + 12);
                     _loc11_ = _loc8_ & -2;
                     if(_loc11_ == _loc5_)
                     {
                        _loc11_ = _loc8_ & 1;
                        _loc11_ = _loc11_ | _loc12_;
                        si32(_loc11_,_loc7_ + 12);
                     }
                  }
               }
               else
               {
                  si32(_loc8_,_loc5_ + 8);
               }
               _loc11_ = li32(_loc4_ - 16);
               si32(_loc11_,_loc3_);
               var _loc1_:* = li32(_loc11_ + 12);
               _loc1_ = _loc1_ & -2;
               si32(_loc1_,_loc11_ + 12);
               _loc2_ = _loc4_;
               ESP = _loc2_;
               return;
            }
            _loc10_ = li32(_loc6_ + 8);
            _loc13_ = li32(_loc10_ + 12);
            _loc11_ = _loc13_ & 1;
            if(_loc11_ != 0)
            {
               _loc11_ = li32(_loc10_ + 8);
               _loc11_ = li8(_loc11_ + 12);
               _loc11_ = _loc11_ & 1;
               if(_loc11_ != 0)
               {
                  _loc11_ = _loc13_ & -2;
                  si32(_loc11_,_loc6_ + 8);
                  _loc11_ = li32(_loc10_ + 12);
                  _loc11_ = _loc11_ & 1;
                  _loc11_ = _loc11_ | _loc6_;
                  si32(_loc11_,_loc10_ + 12);
                  _loc11_ = li32(_loc10_ + 8);
                  si32(li32(_loc11_ + 12) & -2,_loc11_ + 12);
                  _loc11_ = li32(_loc5_ + 8);
                  if(_loc11_ == _loc6_)
                  {
                     si32(_loc10_,_loc5_ + 8);
                     _loc6_ = _loc10_;
                     break;
                  }
                  _loc11_ = li32(_loc5_ + 12);
                  _loc11_ = _loc11_ & 1;
                  _loc11_ = _loc11_ | _loc10_;
                  si32(_loc11_,_loc5_ + 12);
                  _loc13_ = _loc10_ & -2;
                  _loc11_ = _loc11_ & 1 | li32(_loc13_ + 8);
                  si32(_loc11_,_loc5_ + 12);
                  si32(_loc5_,_loc13_ + 8);
                  _loc11_ = li32(_loc5_ + 12);
                  _loc11_ = li32(_loc13_ + 12) & -2 | _loc11_ & 1;
                  si32(_loc11_,_loc13_ + 12);
                  _loc11_ = li32(_loc5_ + 12);
                  _loc11_ = _loc11_ | 1;
                  si32(_loc11_,_loc5_ + 12);
                  _loc11_ = li32(_loc7_ + 8);
                  if(_loc11_ == _loc5_)
                  {
                     si32(_loc13_,_loc7_ + 8);
                  }
                  else
                  {
                     _loc11_ = li32(_loc7_ + 12);
                     _loc11_ = _loc11_ & 1;
                     _loc11_ = _loc11_ | _loc13_;
                     si32(_loc11_,_loc7_ + 12);
                  }
                  _loc5_ = li32(_loc13_ + 16);
                  _loc6_ = li32(_loc8_ + 16);
                  _loc10_ = 1;
                  _loc9_ = _loc10_;
                  if(uint(_loc6_) >= uint(_loc5_))
                  {
                     _loc9_ = 0;
                  }
                  if(uint(_loc6_) <= uint(_loc5_))
                  {
                     _loc10_ = 0;
                  }
                  _loc1_ = _loc9_ & 1;
                  _loc11_ = _loc10_ & 1;
                  _loc10_ = int(_loc11_ - _loc1_);
                  if(_loc10_ <= -1)
                  {
                     _loc6_ = li32(_loc13_ + 8);
                     _loc5_ = _loc13_;
                  }
                  else
                  {
                     _loc11_ = li32(_loc13_ + 12);
                     _loc6_ = _loc11_ & -2;
                     _loc5_ = _loc13_;
                  }
                  continue;
               }
               break;
            }
            break;
         }
         _loc10_ = li32(_loc6_ + 16);
         _loc9_ = li32(_loc8_ + 16);
         _loc7_ = 1;
         _loc13_ = _loc7_;
         if(uint(_loc9_) >= uint(_loc10_))
         {
            _loc13_ = 0;
         }
         if(uint(_loc9_) <= uint(_loc10_))
         {
            _loc7_ = 0;
         }
         _loc1_ = _loc13_ & 1;
         _loc11_ = _loc7_ & 1;
         _loc10_ = int(_loc11_ - _loc1_);
         if(_loc10_ <= -1)
         {
            _loc13_ = li32(_loc6_ + 8);
            _loc9_ = _loc6_;
            _loc7_ = _loc5_;
         }
         else
         {
            _loc11_ = li32(_loc6_ + 12);
            _loc13_ = _loc11_ & -2;
            _loc9_ = _loc6_;
            _loc7_ = _loc5_;
         }
      }
   }
}
