package sample.xx_alloc_2E_o_3A_53BAED73_2D_6B0B_2D_4F4B_2D_A650_2D_BFA4BB2C93E2
{
   import sample.xx.ESP;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li8;
   
   public function F_extent_tree_szad_remove() : void
   {
      var _loc4_:* = 0;
      var _loc9_:* = 0;
      var _loc3_:* = 0;
      var _loc14_:* = 0;
      var _loc13_:* = 0;
      var _loc1_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:* = 0;
      var _loc12_:* = 0;
      var _loc10_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc2_ = int(_loc2_ - 24);
      _loc3_ = li32(_dss_chunks_szad);
      si32(_loc3_,_loc4_ - 24);
      _loc14_ = int(_loc4_ - 24);
      _loc13_ = _loc14_ | 4;
      _loc12_ = int(_dss_chunks_szad + 4);
      var _loc11_:* = _loc12_ & -2;
      si32(_loc11_,_loc13_);
      _loc10_ = li32(_loc3_ + 20);
      _loc9_ = li32(_loc4_);
      _loc8_ = li32(_loc9_ + 20);
      _loc7_ = 1;
      _loc1_ = _loc7_;
      if(uint(_loc8_) >= uint(_loc10_))
      {
         _loc1_ = 0;
      }
      if(uint(_loc8_) <= uint(_loc10_))
      {
         _loc7_ = 0;
      }
      _loc13_ = _loc1_ & 1;
      _loc11_ = _loc7_ & 1;
      _loc7_ = int(_loc11_ - _loc13_);
      if(_loc8_ == _loc10_)
      {
         _loc1_ = li32(_loc3_ + 16);
         _loc10_ = li32(_loc9_ + 16);
         _loc7_ = 1;
         _loc8_ = _loc7_;
         if(uint(_loc10_) >= uint(_loc1_))
         {
            _loc8_ = 0;
         }
         if(uint(_loc10_) <= uint(_loc1_))
         {
            _loc7_ = 0;
         }
         _loc13_ = _loc8_ & 1;
         _loc11_ = _loc7_ & 1;
         _loc7_ = int(_loc11_ - _loc13_);
      }
      if(_loc7_ <= -1)
      {
         _loc12_ = int(_dss_chunks_szad + 4);
         _loc8_ = li32(_loc3_);
         _loc10_ = li32(_loc8_ + 4);
         _loc14_ = _loc3_;
         if((_loc10_ & 1) == 0)
         {
            _loc13_ = li32(_loc8_);
            _loc13_ = li8(_loc13_ + 4);
            _loc14_ = _loc3_;
            if((_loc13_ & 1) == 0)
            {
               _loc13_ = _loc10_ | 1;
               si32(_loc13_,_loc8_ + 4);
               _loc12_ = li32(_loc3_ + 4);
               _loc8_ = _loc12_ & -2;
               _loc14_ = li32(_loc8_);
               _loc10_ = li32(_loc14_ + 4);
               _loc13_ = _loc10_ & 1;
               if(_loc13_ != 0)
               {
                  _loc13_ = _loc10_ & -2;
                  si32(_loc13_,_loc8_);
                  _loc13_ = li32(_loc14_ + 4);
                  _loc13_ = _loc13_ & 1;
                  _loc13_ = _loc13_ | _loc8_;
                  si32(_loc13_,_loc14_ + 4);
                  _loc13_ = li32(_loc3_ + 4);
                  _loc13_ = _loc13_ & 1;
                  _loc13_ = _loc13_ | _loc14_;
                  si32(_loc13_,_loc3_ + 4);
                  _loc8_ = _loc14_ & -2;
                  _loc13_ = _loc13_ & 1 | li32(_loc8_);
                  si32(_loc13_,_loc3_ + 4);
                  si32(_loc3_,_loc8_);
                  _loc13_ = li32(_loc3_ + 4);
                  _loc12_ = _loc13_ & -2;
                  _loc14_ = li32(_loc12_ + 4);
                  _loc13_ = _loc14_ & 1;
                  if(_loc13_ != 0)
                  {
                     _loc13_ = _loc14_ & -2;
                     si32(_loc13_,_loc12_ + 4);
                     _loc13_ = li32(_loc3_ + 4);
                     _loc11_ = _loc13_ | 1;
                     si32(_loc11_,_loc3_ + 4);
                     _loc13_ = _loc13_ & -2;
                     _loc11_ = li32(_loc13_);
                     _loc11_ = _loc11_ | 1;
                     si32(_loc11_,_loc3_ + 4);
                     si32(_loc3_,_loc13_);
                     si32(_loc13_,_loc8_);
                  }
                  else
                  {
                     si32(_loc12_,_loc3_ + 4);
                  }
               }
               else
               {
                  _loc13_ = _loc12_ | 1;
                  si32(_loc13_,_loc3_ + 4);
                  _loc13_ = li32(_loc8_);
                  _loc13_ = _loc13_ | 1;
                  si32(_loc13_,_loc3_ + 4);
                  si32(_loc3_,_loc8_);
               }
               _loc13_ = li32(_loc8_ + 4);
               _loc13_ = _loc13_ & -2;
               si32(_loc13_,_loc8_ + 4);
               si32(_loc8_,_loc4_ - 24);
               _loc14_ = int(_loc4_ - 24);
            }
            addr1052:
            _loc12_ = int(_dss_chunks_szad + 4);
            addr2203:
            if(_loc7_ != 0)
            {
            }
            _loc13_ = li32(_loc4_ - 24);
            si32(_loc13_,_dss_chunks_szad);
            _loc2_ = _loc4_;
            ESP = _loc2_;
            return;
         }
      }
      else
      {
         if(_loc7_ != 0)
         {
            _loc8_ = _loc3_;
            if(_loc7_ == 1)
            {
               _loc10_ = int(_loc3_ + 4);
            }
            else
            {
               §§goto(addr1052);
            }
            §§goto(addr2203);
         }
         else
         {
            _loc10_ = int(_loc3_ + 4);
            _loc8_ = int(_dss_chunks_szad + 4);
            _loc13_ = li32(_loc3_ + 4);
            _loc12_ = int(_loc4_ - 24);
            if((_loc13_ & -2) == _loc8_)
            {
               _loc14_ = li32(_loc3_);
               _loc12_ = _loc8_;
               if(_loc14_ != _loc8_)
               {
                  _loc13_ = li32(_loc14_ + 4);
                  _loc13_ = _loc13_ & -2;
                  si32(_loc13_,_loc3_);
                  _loc13_ = li32(_loc14_ + 4);
                  _loc13_ = _loc13_ & 1;
                  _loc13_ = _loc13_ | _loc3_;
                  si32(_loc13_,_loc14_ + 4);
                  _loc11_ = li32(_loc3_ + 4);
                  _loc11_ = _loc11_ & 1;
                  _loc13_ = _loc11_ | _loc3_ & -2;
                  si32(_loc13_,_loc14_ + 4);
                  _loc13_ = li32(_loc3_ + 4);
                  _loc13_ = _loc13_ | 1;
                  si32(_loc13_,_loc3_ + 4);
                  _loc11_ = li32(_loc14_ + 4);
                  _loc11_ = _loc11_ & 1;
                  _loc13_ = _loc11_ | int(_dss_chunks_szad + 4);
                  si32(_loc13_,_loc14_ + 4);
                  _loc12_ = _loc14_;
               }
               si32(_loc12_,_loc4_ - 24);
               _loc14_ = int(_loc4_ - 24);
               _loc12_ = _loc8_;
               _loc8_ = _loc3_;
               if(_loc7_ != 1)
               {
                  §§goto(addr1052);
               }
               §§goto(addr2203);
            }
         }
         _loc7_ = li32(_loc10_);
         _loc8_ = _loc7_ & -2;
         _loc13_ = li32(_loc8_);
         _loc13_ = li8(_loc13_ + 4);
         _loc13_ = _loc13_ & 1;
         _loc14_ = _loc3_;
         if(_loc13_ == 0)
         {
            _loc14_ = li32(_loc3_);
            _loc8_ = li32(_loc14_ + 4);
            _loc13_ = _loc8_ & 1;
            if(_loc13_ != 0)
            {
               _loc1_ = _loc8_ & -2;
               _loc8_ = li32(_loc1_);
               _loc13_ = li8(_loc8_ + 4);
               _loc13_ = _loc13_ & 1;
               if(_loc13_ != 0)
               {
                  _loc11_ = li32(_loc1_ + 4);
                  _loc11_ = _loc11_ & -2;
                  _loc13_ = _loc11_ | _loc7_ & 1;
                  si32(_loc13_,_loc1_ + 4);
                  _loc13_ = li32(_loc8_ + 4);
                  _loc13_ = _loc13_ & -2;
                  si32(_loc13_,_loc8_ + 4);
                  _loc11_ = li32(_loc14_ + 4);
                  _loc8_ = _loc11_ & -2;
                  _loc11_ = li32(_loc8_);
                  _loc13_ = _loc11_ | _loc11_ & 1;
                  si32(_loc13_,_loc14_ + 4);
                  si32(_loc14_,_loc8_);
                  si32(_loc8_,_loc3_);
                  _loc13_ = li32(_loc8_ + 4);
                  _loc13_ = _loc13_ & -2;
                  si32(_loc13_,_loc3_);
                  _loc13_ = li32(_loc8_ + 4);
                  _loc13_ = _loc13_ & 1;
                  _loc13_ = _loc13_ | _loc3_;
                  si32(_loc13_,_loc8_ + 4);
                  _loc13_ = li32(_loc10_);
                  _loc13_ = _loc13_ & -2;
                  var _loc5_:* = li32(_loc13_);
                  _loc11_ = _loc5_ | _loc13_ & 1;
                  si32(_loc11_,_loc10_);
                  si32(_loc3_,_loc13_);
                  _loc11_ = li32(_loc8_ + 4);
                  _loc11_ = _loc11_ & 1;
                  _loc13_ = _loc11_ | _loc13_;
                  si32(_loc13_,_loc8_ + 4);
               }
               else
               {
                  _loc13_ = _loc1_ | _loc7_ & 1;
                  si32(_loc13_,_loc14_ + 4);
                  _loc13_ = li32(_loc1_ + 4);
                  _loc13_ = _loc13_ | 1;
                  si32(_loc13_,_loc1_ + 4);
                  _loc8_ = li32(_loc3_);
                  _loc13_ = li32(_loc8_ + 4);
                  _loc13_ = _loc13_ & -2;
                  si32(_loc13_,_loc3_);
                  _loc13_ = li32(_loc8_ + 4);
                  _loc13_ = _loc13_ & 1;
                  _loc13_ = _loc13_ | _loc3_;
                  si32(_loc13_,_loc8_ + 4);
                  _loc13_ = li32(_loc10_);
                  _loc13_ = _loc13_ & -2;
                  _loc5_ = li32(_loc13_);
                  _loc11_ = _loc5_ | _loc13_ & 1;
                  si32(_loc11_,_loc10_);
                  si32(_loc3_,_loc13_);
                  _loc11_ = li32(_loc8_ + 4);
                  _loc11_ = _loc11_ & 1;
                  _loc13_ = _loc11_ | _loc13_;
                  si32(_loc13_,_loc8_ + 4);
               }
               _loc13_ = li32(_loc10_);
               _loc13_ = _loc13_ | 1;
               si32(_loc13_,_loc10_);
            }
            else
            {
               _loc13_ = _loc7_ | 1;
               si32(_loc13_,_loc10_);
               _loc8_ = li32(_loc14_);
               _loc7_ = li32(_loc8_ + 4);
               _loc13_ = _loc7_ & 1;
               if(_loc13_ != 0)
               {
                  _loc13_ = _loc7_ & -2;
                  si32(_loc13_,_loc8_ + 4);
                  _loc8_ = li32(_loc3_);
                  _loc13_ = li32(_loc8_ + 4);
                  _loc13_ = _loc13_ & -2;
                  si32(_loc13_,_loc3_);
                  _loc13_ = li32(_loc8_ + 4);
                  _loc13_ = _loc13_ & 1;
                  _loc13_ = _loc13_ | _loc3_;
                  si32(_loc13_,_loc8_ + 4);
                  _loc13_ = li32(_loc10_);
                  _loc13_ = _loc13_ & -2;
                  _loc5_ = li32(_loc13_);
                  _loc11_ = _loc5_ | _loc13_ & 1;
                  si32(_loc11_,_loc10_);
                  si32(_loc3_,_loc13_);
                  _loc11_ = li32(_loc8_ + 4);
                  _loc11_ = _loc11_ & 1;
                  _loc13_ = _loc11_ | _loc13_;
                  si32(_loc13_,_loc8_ + 4);
               }
               else
               {
                  _loc13_ = li32(_loc14_ + 4);
                  _loc13_ = _loc13_ | 1;
                  si32(_loc13_,_loc14_ + 4);
                  _loc11_ = li32(_loc10_);
                  _loc8_ = _loc11_ & -2;
                  _loc11_ = li32(_loc8_);
                  _loc13_ = _loc11_ | _loc11_ & 1;
                  si32(_loc13_,_loc10_);
                  si32(_loc3_,_loc8_);
               }
            }
            si32(_loc8_,_loc4_ - 24);
            _loc14_ = int(_loc4_ - 24);
         }
      }
      _loc7_ = int(_dss_chunks_szad + 4);
      loop0:
      while(true)
      {
         while(true)
         {
            _loc3_ = _loc14_;
            _loc14_ = _loc8_;
            while(true)
            {
               _loc10_ = li32(_loc14_ + 20);
               _loc8_ = li32(_loc9_ + 20);
               _loc6_ = 1;
               _loc1_ = _loc6_;
               if(uint(_loc8_) >= uint(_loc10_))
               {
                  _loc1_ = 0;
               }
               if(uint(_loc8_) <= uint(_loc10_))
               {
                  _loc6_ = 0;
               }
               _loc13_ = _loc1_ & 1;
               _loc11_ = _loc6_ & 1;
               _loc1_ = int(_loc11_ - _loc13_);
               if(_loc8_ == _loc10_)
               {
                  _loc8_ = li32(_loc14_ + 16);
                  _loc10_ = li32(_loc9_ + 16);
                  _loc1_ = 1;
                  _loc6_ = _loc1_;
                  if(uint(_loc10_) >= uint(_loc8_))
                  {
                     _loc6_ = 0;
                  }
                  if(uint(_loc10_) <= uint(_loc8_))
                  {
                     _loc1_ = 0;
                  }
                  _loc13_ = _loc6_ & 1;
                  _loc11_ = _loc1_ & 1;
                  _loc1_ = int(_loc11_ - _loc13_);
               }
               if(_loc1_ <= -1)
               {
                  _loc8_ = li32(_loc14_);
                  if(_loc8_ == _loc7_)
                  {
                     _loc13_ = li32(_loc12_);
                     if(_loc13_ == _loc9_)
                     {
                        si32(_loc14_,_loc12_);
                     }
                     else
                     {
                        _loc13_ = li32(_loc12_ + 4);
                        _loc13_ = _loc13_ & 1;
                        _loc13_ = _loc13_ | _loc14_;
                        si32(_loc13_,_loc12_ + 4);
                     }
                     _loc13_ = li32(_loc9_);
                     si32(_loc13_,_loc14_);
                     _loc13_ = li32(_loc9_ + 4);
                     _loc13_ = _loc13_ & -2;
                     _loc11_ = li32(_loc14_ + 4);
                     _loc11_ = _loc11_ & 1;
                     _loc11_ = _loc11_ | _loc13_;
                     si32(_loc11_,_loc14_ + 4);
                     _loc11_ = li32(_loc9_ + 4);
                     _loc11_ = _loc11_ & 1;
                     _loc13_ = _loc11_ | _loc13_;
                     si32(_loc13_,_loc14_ + 4);
                     _loc13_ = li32(_loc3_);
                     if(_loc13_ == _loc14_)
                     {
                        _loc13_ = int(_dss_chunks_szad + 4);
                        si32(_loc13_,_loc3_);
                     }
                     else
                     {
                        _loc11_ = li32(_loc3_ + 4);
                        _loc11_ = _loc11_ & 1;
                        _loc13_ = _loc11_ | int(_dss_chunks_szad + 4);
                        si32(_loc13_,_loc3_ + 4);
                     }
                  }
                  else
                  {
                     _loc10_ = li32(_loc8_ + 4);
                     _loc13_ = _loc10_ & 1;
                     if(_loc13_ == 0)
                     {
                        _loc13_ = li32(_loc8_);
                        _loc13_ = li8(_loc13_ + 4);
                        _loc13_ = _loc13_ & 1;
                        if(_loc13_ == 0)
                        {
                           _loc13_ = _loc10_ | 1;
                           si32(_loc13_,_loc8_ + 4);
                           _loc10_ = li32(_loc14_ + 4);
                           _loc8_ = _loc10_ & -2;
                           _loc1_ = li32(_loc8_);
                           _loc6_ = li32(_loc1_ + 4);
                           _loc13_ = _loc6_ & 1;
                           if(_loc13_ != 0)
                           {
                              _loc13_ = _loc6_ & -2;
                              si32(_loc13_,_loc8_);
                              _loc13_ = li32(_loc1_ + 4);
                              _loc13_ = _loc13_ & 1;
                              _loc13_ = _loc13_ | _loc8_;
                              si32(_loc13_,_loc1_ + 4);
                              _loc13_ = li32(_loc14_ + 4);
                              _loc13_ = _loc13_ & 1;
                              _loc13_ = _loc13_ | _loc1_;
                              si32(_loc13_,_loc14_ + 4);
                              _loc8_ = _loc1_ & -2;
                              _loc13_ = _loc13_ & 1 | li32(_loc8_);
                              si32(_loc13_,_loc14_ + 4);
                              si32(_loc14_,_loc8_);
                              _loc13_ = li32(_loc14_ + 4);
                              _loc1_ = _loc13_ & -2;
                              _loc10_ = li32(_loc1_ + 4);
                              _loc13_ = _loc10_ & 1;
                              if(_loc13_ != 0)
                              {
                                 _loc13_ = _loc10_ & -2;
                                 si32(_loc13_,_loc1_ + 4);
                                 _loc13_ = li32(_loc14_ + 4);
                                 _loc11_ = _loc13_ | 1;
                                 si32(_loc11_,_loc14_ + 4);
                                 _loc13_ = _loc13_ & -2;
                                 _loc11_ = li32(_loc13_);
                                 _loc11_ = _loc11_ | 1;
                                 si32(_loc11_,_loc14_ + 4);
                                 si32(_loc14_,_loc13_);
                                 si32(_loc13_,_loc8_);
                              }
                              else
                              {
                                 si32(_loc1_,_loc14_ + 4);
                              }
                           }
                           else
                           {
                              _loc13_ = _loc10_ | 1;
                              si32(_loc13_,_loc14_ + 4);
                              _loc13_ = li32(_loc8_);
                              _loc13_ = _loc13_ | 1;
                              si32(_loc13_,_loc14_ + 4);
                              si32(_loc14_,_loc8_);
                           }
                           _loc13_ = li32(_loc3_);
                           if(_loc13_ == _loc14_)
                           {
                              si32(_loc8_,_loc3_);
                              _loc14_ = _loc8_;
                           }
                           else
                           {
                              _loc13_ = li32(_loc3_ + 4);
                              _loc13_ = _loc13_ & 1;
                              _loc13_ = _loc13_ | _loc8_;
                              si32(_loc13_,_loc3_ + 4);
                              _loc14_ = _loc8_;
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
                  _loc10_ = li32(_loc14_ + 4);
                  if(_loc1_ == 0)
                  {
                     _loc12_ = _loc3_;
                     if((_loc10_ & -2) == _loc7_)
                     {
                        _loc9_ = li32(_loc14_);
                        if(_loc9_ != _loc7_)
                        {
                           _loc13_ = li32(_loc9_ + 4);
                           _loc13_ = _loc13_ & -2;
                           si32(_loc13_,_loc14_);
                           _loc13_ = li32(_loc9_ + 4);
                           _loc13_ = _loc13_ & 1;
                           _loc13_ = _loc13_ | _loc14_;
                           si32(_loc13_,_loc9_ + 4);
                           _loc11_ = li32(_loc14_ + 4);
                           _loc11_ = _loc11_ & 1;
                           _loc13_ = _loc11_ | _loc14_ & -2;
                           si32(_loc13_,_loc9_ + 4);
                           _loc13_ = li32(_loc14_ + 4);
                           _loc13_ = _loc13_ | 1;
                           si32(_loc13_,_loc14_ + 4);
                           _loc11_ = li32(_loc9_ + 4);
                           _loc11_ = _loc11_ & 1;
                           _loc13_ = _loc11_ | int(_dss_chunks_szad + 4);
                           si32(_loc13_,_loc9_ + 4);
                           _loc7_ = _loc9_;
                        }
                        _loc13_ = li32(_loc3_);
                        if(_loc13_ == _loc14_)
                        {
                           si32(_loc7_,_loc3_);
                        }
                        else
                        {
                           _loc13_ = li32(_loc3_ + 4);
                           _loc13_ = _loc13_ & 1;
                           _loc13_ = _loc13_ | _loc7_;
                           si32(_loc13_,_loc3_ + 4);
                        }
                     }
                  }
                  _loc8_ = _loc10_ & -2;
                  _loc13_ = li32(_loc8_);
                  _loc13_ = li8(_loc13_ + 4);
                  _loc13_ = _loc13_ & 1;
                  if(_loc13_ == 0)
                  {
                     _loc1_ = li32(_loc14_);
                     _loc8_ = li32(_loc1_ + 4);
                     _loc13_ = _loc8_ & 1;
                     if(_loc13_ != 0)
                     {
                        _loc8_ = _loc8_ & -2;
                        _loc6_ = li32(_loc8_);
                        _loc13_ = li8(_loc6_ + 4);
                        _loc13_ = _loc13_ & 1;
                        if(_loc13_ != 0)
                        {
                           _loc11_ = li32(_loc8_ + 4);
                           _loc11_ = _loc11_ & -2;
                           _loc13_ = _loc11_ | _loc10_ & 1;
                           si32(_loc13_,_loc8_ + 4);
                           _loc13_ = li32(_loc6_ + 4);
                           _loc13_ = _loc13_ & -2;
                           si32(_loc13_,_loc6_ + 4);
                           _loc11_ = li32(_loc1_ + 4);
                           _loc8_ = _loc11_ & -2;
                           _loc11_ = li32(_loc8_);
                           _loc13_ = _loc11_ | _loc11_ & 1;
                           si32(_loc13_,_loc1_ + 4);
                           si32(_loc1_,_loc8_);
                           si32(_loc8_,_loc14_);
                           _loc13_ = li32(_loc8_ + 4);
                           _loc13_ = _loc13_ & -2;
                           si32(_loc13_,_loc14_);
                           _loc13_ = li32(_loc8_ + 4);
                           _loc13_ = _loc13_ & 1;
                           _loc13_ = _loc13_ | _loc14_;
                           si32(_loc13_,_loc8_ + 4);
                           _loc13_ = li32(_loc14_ + 4);
                           _loc13_ = _loc13_ & -2;
                           _loc5_ = li32(_loc13_);
                           _loc11_ = _loc5_ | _loc13_ & 1;
                           si32(_loc11_,_loc14_ + 4);
                           si32(_loc14_,_loc13_);
                           _loc11_ = li32(_loc8_ + 4);
                           _loc11_ = _loc11_ & 1;
                           _loc13_ = _loc11_ | _loc13_;
                           si32(_loc13_,_loc8_ + 4);
                        }
                        else
                        {
                           _loc13_ = _loc8_ | _loc10_ & 1;
                           si32(_loc13_,_loc1_ + 4);
                           _loc13_ = li32(_loc8_ + 4);
                           _loc13_ = _loc13_ | 1;
                           si32(_loc13_,_loc8_ + 4);
                           _loc8_ = li32(_loc14_);
                           _loc13_ = li32(_loc8_ + 4);
                           _loc13_ = _loc13_ & -2;
                           si32(_loc13_,_loc14_);
                           _loc13_ = li32(_loc8_ + 4);
                           _loc13_ = _loc13_ & 1;
                           _loc13_ = _loc13_ | _loc14_;
                           si32(_loc13_,_loc8_ + 4);
                           _loc13_ = li32(_loc14_ + 4);
                           _loc13_ = _loc13_ & -2;
                           _loc5_ = li32(_loc13_);
                           _loc11_ = _loc5_ | _loc13_ & 1;
                           si32(_loc11_,_loc14_ + 4);
                           si32(_loc14_,_loc13_);
                           _loc11_ = li32(_loc8_ + 4);
                           _loc11_ = _loc11_ & 1;
                           _loc13_ = _loc11_ | _loc13_;
                           si32(_loc13_,_loc8_ + 4);
                        }
                        _loc13_ = li32(_loc14_ + 4);
                        _loc13_ = _loc13_ | 1;
                        si32(_loc13_,_loc14_ + 4);
                     }
                     else
                     {
                        _loc13_ = _loc8_ | 1;
                        si32(_loc13_,_loc1_ + 4);
                        _loc10_ = li32(_loc1_);
                        _loc8_ = li32(_loc10_ + 4);
                        _loc13_ = _loc8_ & 1;
                        if(_loc13_ != 0)
                        {
                           _loc13_ = _loc8_ & -2;
                           si32(_loc13_,_loc10_ + 4);
                           _loc8_ = li32(_loc14_);
                           _loc13_ = li32(_loc8_ + 4);
                           _loc13_ = _loc13_ & -2;
                           si32(_loc13_,_loc14_);
                           _loc13_ = li32(_loc8_ + 4);
                           _loc13_ = _loc13_ & 1;
                           _loc13_ = _loc13_ | _loc14_;
                           si32(_loc13_,_loc8_ + 4);
                           _loc13_ = li32(_loc14_ + 4);
                           _loc13_ = _loc13_ & -2;
                           _loc5_ = li32(_loc13_);
                           _loc11_ = _loc5_ | _loc13_ & 1;
                           si32(_loc11_,_loc14_ + 4);
                           si32(_loc14_,_loc13_);
                           _loc11_ = li32(_loc8_ + 4);
                           _loc11_ = _loc11_ & 1;
                           _loc13_ = _loc11_ | _loc13_;
                           si32(_loc13_,_loc8_ + 4);
                        }
                        else
                        {
                           _loc11_ = li32(_loc14_ + 4);
                           _loc8_ = _loc11_ & -2;
                           _loc11_ = li32(_loc8_);
                           _loc13_ = _loc11_ | _loc11_ & 1;
                           si32(_loc13_,_loc14_ + 4);
                           si32(_loc14_,_loc8_);
                        }
                     }
                     _loc13_ = li32(_loc3_);
                     if(_loc13_ == _loc14_)
                     {
                        si32(_loc8_,_loc3_);
                        _loc14_ = _loc3_;
                     }
                     else
                     {
                        _loc13_ = li32(_loc3_ + 4);
                        _loc13_ = _loc13_ & 1;
                        _loc13_ = _loc13_ | _loc8_;
                        si32(_loc13_,_loc3_ + 4);
                        _loc14_ = _loc3_;
                     }
                  }
                  continue loop0;
               }
               §§goto(addr2203);
            }
         }
      }
   }
}
