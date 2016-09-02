package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc11_:* = 0;
      var _loc10_:* = 0;
      var _loc9_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc11_ = li32(_loc1_ + 12);
      _loc10_ = li32(_loc1_ + 8);
      _loc9_ = li32(_loc3_ + 4);
      _loc8_ = _loc1_;
      if(_loc10_ != 0)
      {
         if(_loc11_ == 0)
         {
            _loc7_ = li32(_loc1_ + 4);
            _loc8_ = _loc1_;
            _loc11_ = _loc10_;
            addr245:
            si32(_loc7_,_loc11_ + 4);
            _loc6_ = _loc11_;
         }
         else
         {
            do
            {
               _loc8_ = _loc11_;
               _loc11_ = li32(_loc8_ + 8);
            }
            while(_loc11_ != 0);
            
            _loc6_ = li32(_loc8_ + 12);
            _loc11_ = _loc6_;
            if(_loc8_ != _loc1_)
            {
               si32(_loc8_,_loc10_ + 4);
               var _loc5_:* = li32(_loc1_ + 8);
               si32(_loc5_,_loc8_ + 8);
               _loc7_ = _loc8_;
               if(li32(_loc1_ + 12) != _loc8_)
               {
                  _loc7_ = li32(_loc8_ + 4);
                  _loc11_ = _loc7_;
                  if(_loc6_ != 0)
                  {
                     si32(_loc7_,_loc6_ + 4);
                     _loc11_ = li32(_loc8_ + 4);
                  }
                  si32(_loc6_,_loc11_ + 8);
                  _loc5_ = li32(_loc1_ + 12);
                  si32(_loc5_,_loc8_ + 12);
                  _loc5_ = li32(_loc1_ + 12);
                  si32(_loc8_,_loc5_ + 4);
               }
               _loc5_ = li32(_loc9_ + 4);
               if(_loc5_ == _loc1_)
               {
                  si32(_loc8_,_loc9_ + 4);
                  _loc11_ = int(_loc1_ + 4);
               }
               else
               {
                  _loc11_ = int(_loc1_ + 4);
                  _loc10_ = li32(_loc1_ + 4);
                  _loc5_ = li32(_loc10_ + 8);
                  if(_loc5_ == _loc1_)
                  {
                     si32(_loc8_,_loc10_ + 8);
                  }
                  else
                  {
                     si32(_loc8_,_loc10_ + 12);
                  }
               }
               _loc5_ = li32(_loc11_);
               si32(_loc5_,_loc8_ + 4);
               _loc5_ = li32(_loc8_);
               var _loc4_:* = li32(_loc1_);
               si32(_loc4_,_loc8_);
               si32(_loc5_,_loc1_);
               _loc8_ = _loc1_;
            }
            _loc5_ = li32(_loc8_);
            if(_loc5_ != 0)
            {
               while(true)
               {
                  _loc5_ = li32(_loc9_ + 4);
                  if(_loc5_ != _loc6_)
                  {
                     if(_loc6_ != 0)
                     {
                        _loc5_ = li32(_loc6_);
                        if(_loc5_ != 1)
                        {
                        }
                        addr1229:
                        si32(1,_loc6_);
                        break;
                     }
                     _loc1_ = li32(_loc7_ + 8);
                     if(_loc1_ == _loc6_)
                     {
                        _loc1_ = li32(_loc7_ + 12);
                        _loc5_ = li32(_loc1_);
                        if(_loc5_ == 0)
                        {
                           si32(1,_loc1_);
                           si32(0,_loc7_);
                           _loc1_ = li32(_loc7_ + 12);
                           _loc5_ = li32(_loc1_ + 8);
                           si32(_loc5_,_loc7_ + 12);
                           _loc11_ = li32(_loc1_ + 8);
                           if(_loc11_ != 0)
                           {
                              si32(_loc7_,_loc11_ + 4);
                           }
                           _loc5_ = li32(_loc7_ + 4);
                           si32(_loc5_,_loc1_ + 4);
                           _loc5_ = li32(_loc9_ + 4);
                           if(_loc5_ == _loc7_)
                           {
                              si32(_loc1_,_loc9_ + 4);
                           }
                           else
                           {
                              _loc11_ = li32(_loc7_ + 4);
                              _loc5_ = li32(_loc11_ + 8);
                              if(_loc5_ == _loc7_)
                              {
                                 si32(_loc1_,_loc11_ + 8);
                              }
                              else
                              {
                                 si32(_loc1_,_loc11_ + 12);
                              }
                           }
                           si32(_loc7_,_loc1_ + 8);
                           si32(_loc1_,_loc7_ + 4);
                           _loc1_ = li32(_loc7_ + 12);
                        }
                        _loc10_ = li32(_loc1_ + 8);
                        if(_loc10_ != 0)
                        {
                           _loc5_ = li32(_loc10_);
                           if(_loc5_ != 1)
                           {
                              _loc11_ = li32(_loc1_ + 12);
                              if(_loc11_ != 0)
                              {
                                 addr580:
                                 _loc5_ = li32(_loc11_);
                                 if(_loc5_ == 1)
                                 {
                                 }
                                 addr692:
                                 _loc5_ = li32(_loc7_);
                                 si32(_loc5_,_loc1_);
                                 si32(1,_loc7_);
                                 _loc1_ = li32(_loc1_ + 12);
                                 if(_loc1_ != 0)
                                 {
                                    si32(1,_loc1_);
                                 }
                                 _loc1_ = li32(_loc7_ + 12);
                                 _loc5_ = li32(_loc1_ + 8);
                                 si32(_loc5_,_loc7_ + 12);
                                 _loc11_ = li32(_loc1_ + 8);
                                 if(_loc11_ != 0)
                                 {
                                    si32(_loc7_,_loc11_ + 4);
                                 }
                                 _loc5_ = li32(_loc7_ + 4);
                                 si32(_loc5_,_loc1_ + 4);
                                 _loc5_ = li32(_loc9_ + 4);
                                 if(_loc5_ == _loc7_)
                                 {
                                    si32(_loc1_,_loc9_ + 4);
                                 }
                                 else
                                 {
                                    _loc9_ = li32(_loc7_ + 4);
                                    _loc5_ = li32(_loc9_ + 8);
                                    if(_loc5_ == _loc7_)
                                    {
                                       si32(_loc1_,_loc9_ + 8);
                                    }
                                    else
                                    {
                                       si32(_loc1_,_loc9_ + 12);
                                    }
                                 }
                                 si32(_loc7_,_loc1_ + 8);
                                 si32(_loc1_,_loc7_ + 4);
                                 if(_loc6_ != 0)
                                 {
                                 }
                                 break;
                              }
                           }
                           si32(1,_loc10_);
                           si32(0,_loc1_);
                           _loc11_ = li32(_loc1_ + 8);
                           _loc5_ = li32(_loc11_ + 12);
                           si32(_loc5_,_loc1_ + 8);
                           _loc10_ = li32(_loc11_ + 12);
                           if(_loc10_ != 0)
                           {
                              si32(_loc1_,_loc10_ + 4);
                           }
                           _loc5_ = li32(_loc1_ + 4);
                           si32(_loc5_,_loc11_ + 4);
                           _loc5_ = li32(_loc9_ + 4);
                           if(_loc5_ == _loc1_)
                           {
                              si32(_loc11_,_loc9_ + 4);
                           }
                           else
                           {
                              _loc10_ = li32(_loc1_ + 4);
                              _loc5_ = li32(_loc10_ + 12);
                              if(_loc5_ == _loc1_)
                              {
                                 si32(_loc11_,_loc10_ + 12);
                              }
                              else
                              {
                                 si32(_loc11_,_loc10_ + 8);
                              }
                           }
                           si32(_loc1_,_loc11_ + 12);
                           si32(_loc11_,_loc1_ + 4);
                           _loc1_ = li32(_loc7_ + 12);
                           §§goto(addr692);
                        }
                        _loc11_ = li32(_loc1_ + 12);
                        if(_loc11_ != 0)
                        {
                           _loc5_ = li32(_loc11_);
                           if(_loc5_ != 1)
                           {
                              §§goto(addr580);
                           }
                        }
                        si32(0,_loc1_);
                     }
                     else
                     {
                        _loc5_ = li32(_loc1_);
                        if(_loc5_ == 0)
                        {
                           si32(1,_loc1_);
                           si32(0,_loc7_);
                           _loc1_ = li32(_loc7_ + 8);
                           _loc5_ = li32(_loc1_ + 12);
                           si32(_loc5_,_loc7_ + 8);
                           _loc11_ = li32(_loc1_ + 12);
                           if(_loc11_ != 0)
                           {
                              si32(_loc7_,_loc11_ + 4);
                           }
                           _loc5_ = li32(_loc7_ + 4);
                           si32(_loc5_,_loc1_ + 4);
                           _loc5_ = li32(_loc9_ + 4);
                           if(_loc5_ == _loc7_)
                           {
                              si32(_loc1_,_loc9_ + 4);
                           }
                           else
                           {
                              _loc11_ = li32(_loc7_ + 4);
                              _loc5_ = li32(_loc11_ + 12);
                              if(_loc5_ == _loc7_)
                              {
                                 si32(_loc1_,_loc11_ + 12);
                              }
                              else
                              {
                                 si32(_loc1_,_loc11_ + 8);
                              }
                           }
                           si32(_loc7_,_loc1_ + 12);
                           si32(_loc1_,_loc7_ + 4);
                           _loc1_ = li32(_loc7_ + 8);
                        }
                        _loc11_ = li32(_loc1_ + 12);
                        if(_loc11_ != 0)
                        {
                           _loc5_ = li32(_loc11_);
                           if(_loc5_ != 1)
                           {
                              _loc10_ = li32(_loc1_ + 8);
                              if(_loc10_ != 0)
                              {
                                 addr956:
                                 _loc5_ = li32(_loc10_);
                                 if(_loc5_ == 1)
                                 {
                                 }
                                 addr1068:
                                 _loc5_ = li32(_loc7_);
                                 si32(_loc5_,_loc1_);
                                 si32(1,_loc7_);
                                 _loc1_ = li32(_loc1_ + 8);
                                 if(_loc1_ != 0)
                                 {
                                    si32(1,_loc1_);
                                 }
                                 _loc1_ = li32(_loc7_ + 8);
                                 _loc5_ = li32(_loc1_ + 12);
                                 si32(_loc5_,_loc7_ + 8);
                                 _loc11_ = li32(_loc1_ + 12);
                                 if(_loc11_ != 0)
                                 {
                                    si32(_loc7_,_loc11_ + 4);
                                 }
                                 _loc5_ = li32(_loc7_ + 4);
                                 si32(_loc5_,_loc1_ + 4);
                                 _loc5_ = li32(_loc9_ + 4);
                                 if(_loc5_ == _loc7_)
                                 {
                                    si32(_loc1_,_loc9_ + 4);
                                 }
                                 else
                                 {
                                    _loc9_ = li32(_loc7_ + 4);
                                    _loc5_ = li32(_loc9_ + 12);
                                    if(_loc5_ == _loc7_)
                                    {
                                       si32(_loc1_,_loc9_ + 12);
                                    }
                                    else
                                    {
                                       si32(_loc1_,_loc9_ + 8);
                                    }
                                 }
                                 si32(_loc7_,_loc1_ + 12);
                                 si32(_loc1_,_loc7_ + 4);
                                 if(_loc6_ != 0)
                                 {
                                 }
                                 break;
                              }
                           }
                           si32(1,_loc11_);
                           si32(0,_loc1_);
                           _loc11_ = li32(_loc1_ + 12);
                           _loc5_ = li32(_loc11_ + 8);
                           si32(_loc5_,_loc1_ + 12);
                           _loc10_ = li32(_loc11_ + 8);
                           if(_loc10_ != 0)
                           {
                              si32(_loc1_,_loc10_ + 4);
                           }
                           _loc5_ = li32(_loc1_ + 4);
                           si32(_loc5_,_loc11_ + 4);
                           _loc5_ = li32(_loc9_ + 4);
                           if(_loc5_ == _loc1_)
                           {
                              si32(_loc11_,_loc9_ + 4);
                           }
                           else
                           {
                              _loc10_ = li32(_loc1_ + 4);
                              _loc5_ = li32(_loc10_ + 8);
                              if(_loc5_ == _loc1_)
                              {
                                 si32(_loc11_,_loc10_ + 8);
                              }
                              else
                              {
                                 si32(_loc11_,_loc10_ + 12);
                              }
                           }
                           si32(_loc1_,_loc11_ + 8);
                           si32(_loc11_,_loc1_ + 4);
                           _loc1_ = li32(_loc7_ + 8);
                           §§goto(addr1068);
                        }
                        _loc10_ = li32(_loc1_ + 8);
                        if(_loc10_ != 0)
                        {
                           _loc5_ = li32(_loc10_);
                           if(_loc5_ != 1)
                           {
                              §§goto(addr956);
                           }
                        }
                        si32(0,_loc1_);
                     }
                     continue;
                  }
                  if(_loc6_ != 0)
                  {
                  }
                  break;
                  §§goto(addr1229);
               }
            }
            eax = _loc8_;
            _loc2_ = _loc3_;
            ESP = _loc2_;
            return;
         }
         addr253:
         _loc5_ = li32(_loc9_ + 4);
         if(_loc5_ == _loc1_)
         {
            si32(_loc6_,_loc9_ + 4);
         }
         else
         {
            _loc11_ = li32(_loc1_ + 4);
            _loc5_ = li32(_loc11_ + 8);
            if(_loc5_ == _loc1_)
            {
               si32(_loc6_,_loc11_ + 8);
            }
            else
            {
               si32(_loc6_,_loc11_ + 12);
            }
         }
         _loc5_ = li32(_loc9_ + 8);
         if(_loc5_ == _loc1_)
         {
            _loc11_ = _loc6_;
            if(li32(_loc1_ + 12) == 0)
            {
               _loc5_ = li32(_loc1_ + 4);
               si32(_loc5_,_loc9_ + 8);
            }
            else
            {
               do
               {
                  _loc10_ = _loc11_;
                  _loc11_ = li32(_loc10_ + 8);
               }
               while(_loc11_ != 0);
               
               si32(_loc10_,_loc9_ + 8);
            }
         }
         _loc5_ = li32(_loc9_ + 12);
         if(_loc5_ == _loc1_)
         {
            _loc11_ = _loc6_;
            if(li32(_loc1_ + 8) == 0)
            {
               _loc5_ = li32(_loc1_ + 4);
               si32(_loc5_,_loc9_ + 12);
            }
            else
            {
               do
               {
                  _loc1_ = _loc11_;
                  _loc11_ = li32(_loc1_ + 12);
               }
               while(_loc11_ != 0);
               
               si32(_loc1_,_loc9_ + 12);
            }
         }
         §§goto(addr390);
      }
      _loc7_ = li32(_loc8_ + 4);
      _loc6_ = 0;
      if(_loc11_ != 0)
      {
         §§goto(addr245);
      }
      §§goto(addr253);
   }
}
