package sample.xx_alloc_2E_o_3A_53BAED73_2D_6B0B_2D_4F4B_2D_A650_2D_BFA4BB2C93E2
{
   import sample.xx.ESP;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li8;
   
   public function F_arena_chunk_tree_dirty_remove() : void
   {
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc10_:* = 0;
      var _loc15_:* = 0;
      var _loc1_:* = 0;
      var _loc14_:* = 0;
      var _loc6_:* = 0;
      var _loc13_:* = 0;
      var _loc9_:* = 0;
      var _loc11_:* = 0;
      var _loc5_:* = 0;
      var _loc12_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc2_ = int(_loc2_ - 32);
      _loc3_ = li32(_loc4_);
      _loc15_ = li32(_loc3_);
      _loc14_ = int(_loc4_ - 32);
      _loc13_ = _loc14_ | 4;
      si32(_loc15_,_loc13_);
      _loc12_ = int(_loc3_ + 4);
      _loc13_ = _loc12_ & -2;
      si32(_loc13_,_loc4_ - 24);
      _loc11_ = 1;
      _loc10_ = li32(_loc4_ + 4);
      _loc9_ = _loc11_;
      if(uint(_loc15_) <= uint(_loc10_))
      {
         _loc9_ = 0;
      }
      if(uint(_loc15_) >= uint(_loc10_))
      {
         _loc11_ = 0;
      }
      var _loc8_:* = _loc9_ & 1;
      _loc13_ = _loc11_ & 1;
      _loc1_ = int(_loc13_ - _loc8_);
      if(_loc1_ <= -1)
      {
         _loc9_ = li32(_loc15_ + 4);
         _loc5_ = li32(_loc9_ + 8);
         _loc11_ = _loc12_;
         _loc14_ = _loc15_;
         if((_loc5_ & 1) == 0)
         {
            _loc13_ = li32(_loc9_ + 4);
            _loc13_ = li8(_loc13_ + 8);
            _loc14_ = _loc15_;
            if((_loc13_ & 1) == 0)
            {
               _loc13_ = _loc5_ | 1;
               si32(_loc13_,_loc9_ + 8);
               _loc14_ = li32(_loc15_ + 8);
               _loc9_ = _loc14_ & -2;
               _loc5_ = li32(_loc9_ + 4);
               _loc11_ = li32(_loc5_ + 8);
               _loc13_ = _loc11_ & 1;
               if(_loc13_ != 0)
               {
                  _loc13_ = _loc11_ & -2;
                  si32(_loc13_,_loc9_ + 4);
                  _loc13_ = li32(_loc5_ + 8);
                  _loc13_ = _loc13_ & 1;
                  _loc13_ = _loc13_ | _loc9_;
                  si32(_loc13_,_loc5_ + 8);
                  _loc13_ = li32(_loc15_ + 8);
                  _loc13_ = _loc13_ & 1;
                  _loc13_ = _loc13_ | _loc5_;
                  si32(_loc13_,_loc15_ + 8);
                  _loc9_ = _loc5_ & -2;
                  _loc13_ = _loc13_ & 1 | li32(_loc9_ + 4);
                  si32(_loc13_,_loc15_ + 8);
                  si32(_loc15_,_loc9_ + 4);
                  _loc13_ = li32(_loc15_ + 8);
                  _loc14_ = _loc13_ & -2;
                  _loc11_ = li32(_loc14_ + 8);
                  _loc13_ = _loc11_ & 1;
                  if(_loc13_ != 0)
                  {
                     _loc13_ = _loc11_ & -2;
                     si32(_loc13_,_loc14_ + 8);
                     _loc8_ = li32(_loc15_ + 8);
                     _loc13_ = _loc8_ | 1;
                     si32(_loc13_,_loc15_ + 8);
                     _loc13_ = _loc8_ & -2;
                     _loc8_ = li32(_loc13_ + 4);
                     _loc8_ = _loc8_ | 1;
                     si32(_loc8_,_loc15_ + 8);
                     si32(_loc15_,_loc13_ + 4);
                     si32(_loc13_,_loc9_ + 4);
                  }
                  else
                  {
                     si32(_loc14_,_loc15_ + 8);
                  }
               }
               else
               {
                  _loc13_ = _loc14_ | 1;
                  si32(_loc13_,_loc15_ + 8);
                  _loc13_ = li32(_loc9_ + 4);
                  _loc13_ = _loc13_ | 1;
                  si32(_loc13_,_loc15_ + 8);
                  si32(_loc15_,_loc9_ + 4);
               }
               _loc13_ = li32(_loc9_ + 8);
               _loc13_ = _loc13_ & -2;
               si32(_loc13_,_loc9_ + 8);
               _loc14_ = int(_loc4_ - 32);
               _loc13_ = _loc14_ | 4;
               si32(_loc9_,_loc13_);
            }
            addr1063:
            _loc11_ = _loc12_;
            addr2224:
            if(_loc1_ != 0)
            {
            }
            _loc13_ = int(_loc4_ - 32);
            _loc13_ = _loc13_ | 4;
            _loc13_ = li32(_loc13_);
            si32(_loc13_,_loc3_);
            _loc2_ = _loc4_;
            ESP = _loc2_;
            return;
         }
      }
      else
      {
         if(_loc1_ != 0)
         {
            _loc9_ = _loc15_;
            if(_loc1_ == 1)
            {
               _loc5_ = int(_loc15_ + 8);
               _loc11_ = _loc12_;
            }
            else
            {
               §§goto(addr1063);
            }
            §§goto(addr2224);
         }
         else
         {
            _loc5_ = int(_loc15_ + 8);
            _loc13_ = li32(_loc15_ + 8);
            _loc11_ = int(_loc4_ - 32);
            if((_loc13_ & -2) == _loc12_)
            {
               _loc14_ = li32(_loc15_ + 4);
               _loc11_ = _loc12_;
               if(_loc14_ != _loc12_)
               {
                  _loc13_ = li32(_loc14_ + 8);
                  _loc13_ = _loc13_ & -2;
                  si32(_loc13_,_loc15_ + 4);
                  _loc13_ = li32(_loc14_ + 8);
                  _loc13_ = _loc13_ & 1;
                  _loc13_ = _loc13_ | _loc15_;
                  si32(_loc13_,_loc14_ + 8);
                  _loc8_ = li32(_loc15_ + 8);
                  _loc8_ = _loc8_ & 1;
                  _loc13_ = _loc8_ | _loc15_ & -2;
                  si32(_loc13_,_loc14_ + 8);
                  _loc13_ = li32(_loc15_ + 8);
                  _loc13_ = _loc13_ | 1;
                  si32(_loc13_,_loc15_ + 8);
                  _loc13_ = li32(_loc14_ + 8);
                  _loc13_ = _loc13_ & 1;
                  _loc13_ = _loc13_ | _loc12_;
                  si32(_loc13_,_loc14_ + 8);
                  _loc11_ = _loc14_;
               }
               _loc14_ = int(_loc4_ - 32);
               _loc13_ = _loc14_ | 4;
               si32(_loc11_,_loc13_);
               _loc11_ = _loc12_;
               _loc9_ = _loc15_;
               if(_loc1_ != 1)
               {
                  §§goto(addr1063);
               }
               §§goto(addr2224);
            }
         }
         _loc1_ = li32(_loc5_);
         _loc9_ = _loc1_ & -2;
         _loc13_ = li32(_loc9_ + 4);
         _loc13_ = li8(_loc13_ + 8);
         _loc13_ = _loc13_ & 1;
         _loc14_ = _loc15_;
         if(_loc13_ == 0)
         {
            _loc14_ = li32(_loc15_ + 4);
            _loc9_ = li32(_loc14_ + 8);
            _loc13_ = _loc9_ & 1;
            if(_loc13_ != 0)
            {
               _loc9_ = _loc9_ & -2;
               _loc6_ = li32(_loc9_ + 4);
               _loc13_ = li8(_loc6_ + 8);
               _loc13_ = _loc13_ & 1;
               if(_loc13_ != 0)
               {
                  _loc8_ = li32(_loc9_ + 8);
                  _loc8_ = _loc8_ & -2;
                  _loc13_ = _loc8_ | _loc1_ & 1;
                  si32(_loc13_,_loc9_ + 8);
                  _loc13_ = li32(_loc6_ + 8);
                  _loc13_ = _loc13_ & -2;
                  si32(_loc13_,_loc6_ + 8);
                  _loc8_ = li32(_loc14_ + 8);
                  _loc9_ = _loc8_ & -2;
                  _loc8_ = li32(_loc9_ + 4);
                  _loc13_ = _loc8_ | _loc8_ & 1;
                  si32(_loc13_,_loc14_ + 8);
                  si32(_loc14_,_loc9_ + 4);
                  si32(_loc9_,_loc15_ + 4);
                  _loc13_ = li32(_loc9_ + 8);
                  _loc13_ = _loc13_ & -2;
                  si32(_loc13_,_loc15_ + 4);
                  _loc13_ = li32(_loc9_ + 8);
                  _loc13_ = _loc13_ & 1;
                  _loc13_ = _loc13_ | _loc15_;
                  si32(_loc13_,_loc9_ + 8);
                  _loc13_ = li32(_loc5_);
                  _loc13_ = _loc13_ & -2;
                  var _loc7_:* = li32(_loc13_ + 4);
                  _loc8_ = _loc7_ | _loc13_ & 1;
                  si32(_loc8_,_loc5_);
                  si32(_loc15_,_loc13_ + 4);
                  _loc8_ = li32(_loc9_ + 8);
                  _loc8_ = _loc8_ & 1;
                  _loc13_ = _loc8_ | _loc13_;
                  si32(_loc13_,_loc9_ + 8);
               }
               else
               {
                  _loc13_ = _loc9_ | _loc1_ & 1;
                  si32(_loc13_,_loc14_ + 8);
                  _loc13_ = li32(_loc9_ + 8);
                  _loc13_ = _loc13_ | 1;
                  si32(_loc13_,_loc9_ + 8);
                  _loc9_ = li32(_loc15_ + 4);
                  _loc13_ = li32(_loc9_ + 8);
                  _loc13_ = _loc13_ & -2;
                  si32(_loc13_,_loc15_ + 4);
                  _loc13_ = li32(_loc9_ + 8);
                  _loc13_ = _loc13_ & 1;
                  _loc13_ = _loc13_ | _loc15_;
                  si32(_loc13_,_loc9_ + 8);
                  _loc13_ = li32(_loc5_);
                  _loc13_ = _loc13_ & -2;
                  _loc7_ = li32(_loc13_ + 4);
                  _loc8_ = _loc7_ | _loc13_ & 1;
                  si32(_loc8_,_loc5_);
                  si32(_loc15_,_loc13_ + 4);
                  _loc8_ = li32(_loc9_ + 8);
                  _loc8_ = _loc8_ & 1;
                  _loc13_ = _loc8_ | _loc13_;
                  si32(_loc13_,_loc9_ + 8);
               }
               _loc13_ = li32(_loc5_);
               _loc13_ = _loc13_ | 1;
               si32(_loc13_,_loc5_);
            }
            else
            {
               _loc13_ = _loc1_ | 1;
               si32(_loc13_,_loc5_);
               _loc1_ = li32(_loc14_ + 4);
               _loc9_ = li32(_loc1_ + 8);
               _loc13_ = _loc9_ & 1;
               if(_loc13_ != 0)
               {
                  _loc13_ = _loc9_ & -2;
                  si32(_loc13_,_loc1_ + 8);
                  _loc9_ = li32(_loc15_ + 4);
                  _loc13_ = li32(_loc9_ + 8);
                  _loc13_ = _loc13_ & -2;
                  si32(_loc13_,_loc15_ + 4);
                  _loc13_ = li32(_loc9_ + 8);
                  _loc13_ = _loc13_ & 1;
                  _loc13_ = _loc13_ | _loc15_;
                  si32(_loc13_,_loc9_ + 8);
                  _loc13_ = li32(_loc5_);
                  _loc13_ = _loc13_ & -2;
                  _loc7_ = li32(_loc13_ + 4);
                  _loc8_ = _loc7_ | _loc13_ & 1;
                  si32(_loc8_,_loc5_);
                  si32(_loc15_,_loc13_ + 4);
                  _loc8_ = li32(_loc9_ + 8);
                  _loc8_ = _loc8_ & 1;
                  _loc13_ = _loc8_ | _loc13_;
                  si32(_loc13_,_loc9_ + 8);
               }
               else
               {
                  _loc13_ = li32(_loc14_ + 8);
                  _loc13_ = _loc13_ | 1;
                  si32(_loc13_,_loc14_ + 8);
                  _loc8_ = li32(_loc5_);
                  _loc9_ = _loc8_ & -2;
                  _loc8_ = li32(_loc9_ + 4);
                  _loc13_ = _loc8_ | _loc8_ & 1;
                  si32(_loc13_,_loc5_);
                  si32(_loc15_,_loc9_ + 4);
               }
            }
            _loc14_ = int(_loc4_ - 32);
            _loc13_ = _loc14_ | 4;
            si32(_loc9_,_loc13_);
         }
      }
      loop0:
      while(true)
      {
         while(true)
         {
            _loc15_ = _loc14_;
            _loc14_ = _loc9_;
            while(true)
            {
               _loc9_ = 1;
               _loc5_ = _loc9_;
               if(uint(_loc14_) <= uint(_loc10_))
               {
                  _loc5_ = 0;
               }
               if(uint(_loc14_) >= uint(_loc10_))
               {
                  _loc9_ = 0;
               }
               _loc8_ = _loc5_ & 1;
               _loc13_ = _loc9_ & 1;
               _loc13_ = int(_loc13_ - _loc8_);
               if(_loc13_ <= -1)
               {
                  _loc9_ = li32(_loc14_ + 4);
                  if(_loc12_ == _loc9_)
                  {
                     _loc13_ = li32(_loc11_ + 4);
                     if(_loc13_ == _loc10_)
                     {
                        si32(_loc14_,_loc11_ + 4);
                     }
                     else
                     {
                        _loc13_ = li32(_loc11_ + 8);
                        _loc13_ = _loc13_ & 1;
                        _loc13_ = _loc13_ | _loc14_;
                        si32(_loc13_,_loc11_ + 8);
                     }
                     _loc13_ = li32(_loc10_ + 4);
                     si32(_loc13_,_loc14_ + 4);
                     _loc13_ = li32(_loc10_ + 8);
                     _loc13_ = _loc13_ & -2;
                     _loc8_ = li32(_loc14_ + 8);
                     _loc8_ = _loc8_ & 1;
                     _loc8_ = _loc8_ | _loc13_;
                     si32(_loc8_,_loc14_ + 8);
                     _loc8_ = li32(_loc10_ + 8);
                     _loc8_ = _loc8_ & 1;
                     _loc13_ = _loc8_ | _loc13_;
                     si32(_loc13_,_loc14_ + 8);
                     _loc13_ = li32(_loc15_ + 4);
                     if(_loc13_ == _loc14_)
                     {
                        si32(_loc12_,_loc15_ + 4);
                     }
                     else
                     {
                        _loc13_ = li32(_loc15_ + 8);
                        _loc13_ = _loc13_ & 1;
                        _loc13_ = _loc13_ | _loc12_;
                        si32(_loc13_,_loc15_ + 8);
                     }
                  }
                  else
                  {
                     _loc5_ = li32(_loc9_ + 8);
                     _loc13_ = _loc5_ & 1;
                     if(_loc13_ == 0)
                     {
                        _loc13_ = li32(_loc9_ + 4);
                        _loc13_ = li8(_loc13_ + 8);
                        _loc13_ = _loc13_ & 1;
                        if(_loc13_ == 0)
                        {
                           _loc13_ = _loc5_ | 1;
                           si32(_loc13_,_loc9_ + 8);
                           _loc5_ = li32(_loc14_ + 8);
                           _loc9_ = _loc5_ & -2;
                           _loc1_ = li32(_loc9_ + 4);
                           _loc6_ = li32(_loc1_ + 8);
                           _loc13_ = _loc6_ & 1;
                           if(_loc13_ != 0)
                           {
                              _loc13_ = _loc6_ & -2;
                              si32(_loc13_,_loc9_ + 4);
                              _loc13_ = li32(_loc1_ + 8);
                              _loc13_ = _loc13_ & 1;
                              _loc13_ = _loc13_ | _loc9_;
                              si32(_loc13_,_loc1_ + 8);
                              _loc13_ = li32(_loc14_ + 8);
                              _loc13_ = _loc13_ & 1;
                              _loc13_ = _loc13_ | _loc1_;
                              si32(_loc13_,_loc14_ + 8);
                              _loc9_ = _loc1_ & -2;
                              _loc13_ = _loc13_ & 1 | li32(_loc9_ + 4);
                              si32(_loc13_,_loc14_ + 8);
                              si32(_loc14_,_loc9_ + 4);
                              _loc13_ = li32(_loc14_ + 8);
                              _loc1_ = _loc13_ & -2;
                              _loc5_ = li32(_loc1_ + 8);
                              _loc13_ = _loc5_ & 1;
                              if(_loc13_ != 0)
                              {
                                 _loc13_ = _loc5_ & -2;
                                 si32(_loc13_,_loc1_ + 8);
                                 _loc8_ = li32(_loc14_ + 8);
                                 _loc13_ = _loc8_ | 1;
                                 si32(_loc13_,_loc14_ + 8);
                                 _loc13_ = _loc8_ & -2;
                                 _loc8_ = li32(_loc13_ + 4);
                                 _loc8_ = _loc8_ | 1;
                                 si32(_loc8_,_loc14_ + 8);
                                 si32(_loc14_,_loc13_ + 4);
                                 si32(_loc13_,_loc9_ + 4);
                              }
                              else
                              {
                                 si32(_loc1_,_loc14_ + 8);
                              }
                           }
                           else
                           {
                              _loc13_ = _loc5_ | 1;
                              si32(_loc13_,_loc14_ + 8);
                              _loc13_ = li32(_loc9_ + 4);
                              _loc13_ = _loc13_ | 1;
                              si32(_loc13_,_loc14_ + 8);
                              si32(_loc14_,_loc9_ + 4);
                           }
                           _loc13_ = li32(_loc15_ + 4);
                           if(_loc13_ == _loc14_)
                           {
                              si32(_loc9_,_loc15_ + 4);
                              _loc14_ = _loc9_;
                           }
                           else
                           {
                              _loc13_ = li32(_loc15_ + 8);
                              _loc13_ = _loc13_ & 1;
                              _loc13_ = _loc13_ | _loc9_;
                              si32(_loc13_,_loc15_ + 8);
                              _loc14_ = _loc9_;
                           }
                           continue;
                        }
                        break;
                     }
                     break;
                  }
               }
               else
               {
                  _loc5_ = li32(_loc14_ + 8);
                  if(_loc14_ == _loc10_)
                  {
                     _loc11_ = _loc15_;
                     if((_loc5_ & -2) == _loc12_)
                     {
                        _loc10_ = li32(_loc14_ + 4);
                        if(_loc10_ != _loc12_)
                        {
                           _loc13_ = li32(_loc10_ + 8);
                           _loc13_ = _loc13_ & -2;
                           si32(_loc13_,_loc14_ + 4);
                           _loc13_ = li32(_loc10_ + 8);
                           _loc13_ = _loc13_ & 1;
                           _loc13_ = _loc13_ | _loc14_;
                           si32(_loc13_,_loc10_ + 8);
                           _loc8_ = li32(_loc14_ + 8);
                           _loc8_ = _loc8_ & 1;
                           _loc13_ = _loc8_ | _loc14_ & -2;
                           si32(_loc13_,_loc10_ + 8);
                           _loc13_ = li32(_loc14_ + 8);
                           _loc13_ = _loc13_ | 1;
                           si32(_loc13_,_loc14_ + 8);
                           _loc13_ = li32(_loc10_ + 8);
                           _loc13_ = _loc13_ & 1;
                           _loc13_ = _loc13_ | _loc12_;
                           si32(_loc13_,_loc10_ + 8);
                           _loc12_ = _loc10_;
                        }
                        _loc13_ = li32(_loc15_ + 4);
                        if(_loc13_ == _loc14_)
                        {
                           si32(_loc12_,_loc15_ + 4);
                        }
                        else
                        {
                           _loc13_ = li32(_loc15_ + 8);
                           _loc13_ = _loc13_ & 1;
                           _loc13_ = _loc13_ | _loc12_;
                           si32(_loc13_,_loc15_ + 8);
                        }
                     }
                  }
                  _loc9_ = _loc5_ & -2;
                  _loc13_ = li32(_loc9_ + 4);
                  _loc13_ = li8(_loc13_ + 8);
                  _loc13_ = _loc13_ & 1;
                  if(_loc13_ == 0)
                  {
                     _loc1_ = li32(_loc14_ + 4);
                     _loc9_ = li32(_loc1_ + 8);
                     _loc13_ = _loc9_ & 1;
                     if(_loc13_ != 0)
                     {
                        _loc9_ = _loc9_ & -2;
                        _loc6_ = li32(_loc9_ + 4);
                        _loc13_ = li8(_loc6_ + 8);
                        _loc13_ = _loc13_ & 1;
                        if(_loc13_ != 0)
                        {
                           _loc8_ = li32(_loc9_ + 8);
                           _loc8_ = _loc8_ & -2;
                           _loc13_ = _loc8_ | _loc5_ & 1;
                           si32(_loc13_,_loc9_ + 8);
                           _loc13_ = li32(_loc6_ + 8);
                           _loc13_ = _loc13_ & -2;
                           si32(_loc13_,_loc6_ + 8);
                           _loc8_ = li32(_loc1_ + 8);
                           _loc9_ = _loc8_ & -2;
                           _loc8_ = li32(_loc9_ + 4);
                           _loc13_ = _loc8_ | _loc8_ & 1;
                           si32(_loc13_,_loc1_ + 8);
                           si32(_loc1_,_loc9_ + 4);
                           si32(_loc9_,_loc14_ + 4);
                           _loc13_ = li32(_loc9_ + 8);
                           _loc13_ = _loc13_ & -2;
                           si32(_loc13_,_loc14_ + 4);
                           _loc13_ = li32(_loc9_ + 8);
                           _loc13_ = _loc13_ & 1;
                           _loc13_ = _loc13_ | _loc14_;
                           si32(_loc13_,_loc9_ + 8);
                           _loc13_ = li32(_loc14_ + 8);
                           _loc13_ = _loc13_ & -2;
                           _loc7_ = li32(_loc13_ + 4);
                           _loc8_ = _loc7_ | _loc13_ & 1;
                           si32(_loc8_,_loc14_ + 8);
                           si32(_loc14_,_loc13_ + 4);
                           _loc8_ = li32(_loc9_ + 8);
                           _loc8_ = _loc8_ & 1;
                           _loc13_ = _loc8_ | _loc13_;
                           si32(_loc13_,_loc9_ + 8);
                        }
                        else
                        {
                           _loc13_ = _loc9_ | _loc5_ & 1;
                           si32(_loc13_,_loc1_ + 8);
                           _loc13_ = li32(_loc9_ + 8);
                           _loc13_ = _loc13_ | 1;
                           si32(_loc13_,_loc9_ + 8);
                           _loc9_ = li32(_loc14_ + 4);
                           _loc13_ = li32(_loc9_ + 8);
                           _loc13_ = _loc13_ & -2;
                           si32(_loc13_,_loc14_ + 4);
                           _loc13_ = li32(_loc9_ + 8);
                           _loc13_ = _loc13_ & 1;
                           _loc13_ = _loc13_ | _loc14_;
                           si32(_loc13_,_loc9_ + 8);
                           _loc13_ = li32(_loc14_ + 8);
                           _loc13_ = _loc13_ & -2;
                           _loc7_ = li32(_loc13_ + 4);
                           _loc8_ = _loc7_ | _loc13_ & 1;
                           si32(_loc8_,_loc14_ + 8);
                           si32(_loc14_,_loc13_ + 4);
                           _loc8_ = li32(_loc9_ + 8);
                           _loc8_ = _loc8_ & 1;
                           _loc13_ = _loc8_ | _loc13_;
                           si32(_loc13_,_loc9_ + 8);
                        }
                        _loc13_ = li32(_loc14_ + 8);
                        _loc13_ = _loc13_ | 1;
                        si32(_loc13_,_loc14_ + 8);
                     }
                     else
                     {
                        _loc13_ = _loc9_ | 1;
                        si32(_loc13_,_loc1_ + 8);
                        _loc9_ = li32(_loc1_ + 4);
                        _loc5_ = li32(_loc9_ + 8);
                        _loc13_ = _loc5_ & 1;
                        if(_loc13_ != 0)
                        {
                           _loc13_ = _loc5_ & -2;
                           si32(_loc13_,_loc9_ + 8);
                           _loc9_ = li32(_loc14_ + 4);
                           _loc13_ = li32(_loc9_ + 8);
                           _loc13_ = _loc13_ & -2;
                           si32(_loc13_,_loc14_ + 4);
                           _loc13_ = li32(_loc9_ + 8);
                           _loc13_ = _loc13_ & 1;
                           _loc13_ = _loc13_ | _loc14_;
                           si32(_loc13_,_loc9_ + 8);
                           _loc13_ = li32(_loc14_ + 8);
                           _loc13_ = _loc13_ & -2;
                           _loc7_ = li32(_loc13_ + 4);
                           _loc8_ = _loc7_ | _loc13_ & 1;
                           si32(_loc8_,_loc14_ + 8);
                           si32(_loc14_,_loc13_ + 4);
                           _loc8_ = li32(_loc9_ + 8);
                           _loc8_ = _loc8_ & 1;
                           _loc13_ = _loc8_ | _loc13_;
                           si32(_loc13_,_loc9_ + 8);
                        }
                        else
                        {
                           _loc8_ = li32(_loc14_ + 8);
                           _loc9_ = _loc8_ & -2;
                           _loc8_ = li32(_loc9_ + 4);
                           _loc13_ = _loc8_ | _loc8_ & 1;
                           si32(_loc13_,_loc14_ + 8);
                           si32(_loc14_,_loc9_ + 4);
                        }
                     }
                     _loc13_ = li32(_loc15_ + 4);
                     if(_loc13_ == _loc14_)
                     {
                        si32(_loc9_,_loc15_ + 4);
                        _loc14_ = _loc15_;
                     }
                     else
                     {
                        _loc13_ = li32(_loc15_ + 8);
                        _loc13_ = _loc13_ & 1;
                        _loc13_ = _loc13_ | _loc9_;
                        si32(_loc13_,_loc15_ + 8);
                        _loc14_ = _loc15_;
                     }
                  }
                  continue loop0;
               }
               §§goto(addr2224);
            }
         }
      }
   }
}
