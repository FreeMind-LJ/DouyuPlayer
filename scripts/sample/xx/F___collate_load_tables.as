package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   import sample.xx_ollate_2E_o_3A_3327D5DA_2D_F857_2D_46DE_2D_A662_2D_F85F52217D45.*;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.li8;
   
   public function F___collate_load_tables() : void
   {
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc9_:* = 0;
      var _loc7_:int = 0;
      var _loc1_:* = 0;
      var _loc10_:* = 0;
      var _loc11_:* = 0;
      var _loc13_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc2_ = int(_loc2_ - 1040);
      _loc2_ = int(_loc2_ - 16);
      si32(L__2E_str3,_loc2_ + 4);
      _loc3_ = li32(_loc4_);
      si32(_loc3_,_loc2_);
      ESP = _loc2_;
      F_strcmp();
      _loc2_ = int(_loc2_ + 16);
      var _loc14_:* = int(eax);
      if(_loc14_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(L__2E_str4,_loc2_ + 4);
         si32(_loc3_,_loc2_);
         ESP = _loc2_;
         F_strcmp();
         _loc2_ = int(_loc2_ + 16);
         _loc14_ = int(eax);
         if(_loc14_ != 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_collate_encoding_2E_2929,_loc2_ + 4);
            si32(_loc3_,_loc2_);
            ESP = _loc2_;
            F_strcmp();
            _loc2_ = int(_loc2_ + 16);
            _loc14_ = int(eax);
            if(_loc14_ == 0)
            {
               si32(0,___collate_load_error);
               _loc13_ = 1;
            }
            else
            {
               _loc2_ = int(_loc2_ - 16);
               si32(li32(__PathLocale),_loc2_ + 4);
               _loc14_ = int(_loc4_ - 1038);
               si32(_loc14_,_loc2_);
               ESP = _loc2_;
               F_strcpy();
               _loc2_ = int(_loc2_ + 16);
               _loc2_ = int(_loc2_ - 16);
               si32(_loc14_,_loc2_);
               ESP = _loc2_;
               F_strlen();
               _loc2_ = int(_loc2_ + 16);
               si16(47,int(_loc14_ + int(eax)));
               _loc2_ = int(_loc2_ - 16);
               si32(_loc3_,_loc2_ + 4);
               si32(_loc14_,_loc2_);
               ESP = _loc2_;
               F_strcat();
               _loc2_ = int(_loc2_ + 16);
               _loc2_ = int(_loc2_ - 16);
               si32(_loc14_,_loc2_);
               ESP = _loc2_;
               F_strlen();
               _loc2_ = int(_loc2_ + 16);
               var _loc12_:* = int(_loc14_ + int(eax));
               si32(4543553,_loc12_ + 8);
               si32(1280069443,_loc12_ + 4);
               si32(1598245935,_loc12_);
               _loc2_ = int(_loc2_ - 16);
               si32(L__2E_str7,_loc2_ + 4);
               si32(_loc14_,_loc2_);
               ESP = _loc2_;
               F_fopen();
               _loc13_ = -1;
               _loc2_ = int(_loc2_ + 16);
               _loc11_ = int(eax);
               if(_loc11_ != 0)
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(_loc11_,_loc2_ + 12);
                  _loc13_ = 1;
                  si32(_loc13_,_loc2_ + 8);
                  si32(10,_loc2_ + 4);
                  _loc10_ = int(_loc4_ - 14);
                  si32(_loc10_,_loc2_);
                  ESP = _loc2_;
                  F_fread();
                  _loc2_ = int(_loc2_ + 16);
                  _loc14_ = int(eax);
                  if(_loc14_ != 1)
                  {
                     ESP = _loc2_;
                     F___error();
                     _loc14_ = int(eax);
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc11_,_loc2_);
                     ESP = _loc2_;
                     F_fclose();
                     _loc2_ = int(_loc2_ + 16);
                     ESP = _loc2_;
                     F___error();
                     si32(li32(_loc14_),int(eax));
                     _loc13_ = -1;
                  }
                  else
                  {
                     _loc2_ = int(_loc2_ - 16);
                     si32(L__2E_str8,_loc2_ + 4);
                     si32(_loc10_,_loc2_);
                     ESP = _loc2_;
                     F_strcmp();
                     _loc9_ = 100;
                     _loc2_ = int(_loc2_ + 16);
                     _loc14_ = int(eax);
                     if(_loc14_ != 0)
                     {
                        _loc2_ = int(_loc2_ - 16);
                        si32(L__2E_str9,_loc2_ + 4);
                        si32(_loc10_,_loc2_);
                        ESP = _loc2_;
                        F_strcmp();
                        _loc2_ = int(_loc2_ + 16);
                        _loc14_ = int(eax);
                        if(_loc14_ != 0)
                        {
                           _loc2_ = int(_loc2_ - 16);
                           si32(_loc11_,_loc2_);
                           ESP = _loc2_;
                           F_fclose();
                           _loc2_ = int(_loc2_ + 16);
                           ESP = _loc2_;
                           F___error();
                           si32(79,int(eax));
                           _loc13_ = -1;
                        }
                        else
                        {
                           _loc2_ = int(_loc2_ - 16);
                           si32(_loc11_,_loc2_ + 12);
                           si32(_loc13_,_loc2_ + 8);
                           si32(4,_loc2_ + 4);
                           _loc14_ = int(_loc4_ - 4);
                           si32(_loc14_,_loc2_);
                           ESP = _loc2_;
                           F_fread();
                           _loc2_ = int(_loc2_ + 16);
                           _loc14_ = int(eax);
                           if(_loc14_ != 1)
                           {
                              ESP = _loc2_;
                              F___error();
                              _loc14_ = int(eax);
                              _loc2_ = int(_loc2_ - 16);
                              si32(_loc11_,_loc2_);
                              ESP = _loc2_;
                              F_fclose();
                              _loc2_ = int(_loc2_ + 16);
                              ESP = _loc2_;
                              F___error();
                              si32(li32(_loc14_),int(eax));
                              _loc13_ = -1;
                           }
                           else
                           {
                              _loc12_ = li32(_loc4_ - 4);
                              var _loc8_:* = int(_loc12_ >>> 8);
                              _loc8_ = _loc8_ & 65280;
                              _loc12_ = _loc12_ << 8;
                              _loc12_ = _loc12_ << 24 | _loc12_ & 16711680;
                              _loc9_ = _loc12_ | (_loc8_ | int(_loc12_ >>> 24));
                              if(_loc9_ <= 0)
                              {
                                 _loc2_ = int(_loc2_ - 16);
                                 si32(_loc11_,_loc2_);
                                 ESP = _loc2_;
                                 F_fclose();
                                 _loc2_ = int(_loc2_ + 16);
                                 ESP = _loc2_;
                                 F___error();
                                 si32(79,int(eax));
                                 _loc13_ = -1;
                              }
                           }
                        }
                     }
                     _loc2_ = int(_loc2_ - 16);
                     si32(2560,_loc2_);
                     ESP = _loc2_;
                     F_malloc();
                     _loc2_ = int(_loc2_ + 16);
                     _loc7_ = eax;
                     if(_loc7_ == 0)
                     {
                        ESP = _loc2_;
                        F___error();
                        _loc14_ = int(eax);
                        _loc2_ = int(_loc2_ - 16);
                        si32(_loc11_,_loc2_);
                        ESP = _loc2_;
                        F_fclose();
                        _loc2_ = int(_loc2_ + 16);
                        ESP = _loc2_;
                        F___error();
                        si32(li32(_loc14_),int(eax));
                        _loc13_ = -1;
                     }
                     else
                     {
                        _loc2_ = int(_loc2_ - 16);
                        si32(2048,_loc2_);
                        ESP = _loc2_;
                        F_malloc();
                        _loc2_ = int(_loc2_ + 16);
                        _loc1_ = int(eax);
                        if(_loc1_ == 0)
                        {
                           ESP = _loc2_;
                           F___error();
                           _loc14_ = int(eax);
                           _loc2_ = int(_loc2_ - 16);
                           si32(_loc7_,_loc2_);
                           ESP = _loc2_;
                           F_free();
                           _loc2_ = int(_loc2_ + 16);
                           _loc2_ = int(_loc2_ - 16);
                           si32(_loc11_,_loc2_);
                           ESP = _loc2_;
                           F_fclose();
                           _loc2_ = int(_loc2_ + 16);
                           ESP = _loc2_;
                           F___error();
                           si32(li32(_loc14_),int(eax));
                           _loc13_ = -1;
                        }
                        else
                        {
                           _loc2_ = int(_loc2_ - 16);
                           _loc14_ = int(_loc9_ * 20);
                           si32(_loc14_,_loc2_);
                           ESP = _loc2_;
                           F_malloc();
                           _loc2_ = int(_loc2_ + 16);
                           _loc10_ = int(eax);
                           if(_loc10_ == 0)
                           {
                              ESP = _loc2_;
                              F___error();
                              _loc14_ = int(eax);
                              _loc2_ = int(_loc2_ - 16);
                              si32(_loc7_,_loc2_);
                              ESP = _loc2_;
                              F_free();
                              _loc2_ = int(_loc2_ + 16);
                              _loc2_ = int(_loc2_ - 16);
                              si32(_loc1_,_loc2_);
                              ESP = _loc2_;
                              F_free();
                              _loc2_ = int(_loc2_ + 16);
                              _loc2_ = int(_loc2_ - 16);
                              si32(_loc11_,_loc2_);
                              ESP = _loc2_;
                              F_fclose();
                              _loc2_ = int(_loc2_ + 16);
                              ESP = _loc2_;
                              F___error();
                              si32(li32(_loc14_),int(eax));
                              _loc13_ = -1;
                           }
                           else
                           {
                              _loc2_ = int(_loc2_ - 16);
                              si32(_loc11_,_loc2_ + 12);
                              si32(_loc13_,_loc2_ + 8);
                              si32(2560,_loc2_ + 4);
                              si32(_loc7_,_loc2_);
                              ESP = _loc2_;
                              F_fread();
                              _loc2_ = int(_loc2_ + 16);
                              _loc14_ = int(eax);
                              if(_loc14_ != 1)
                              {
                                 ESP = _loc2_;
                                 F___error();
                                 _loc14_ = int(eax);
                                 _loc2_ = int(_loc2_ - 16);
                                 si32(_loc7_,_loc2_);
                                 ESP = _loc2_;
                                 F_free();
                                 _loc2_ = int(_loc2_ + 16);
                                 _loc2_ = int(_loc2_ - 16);
                                 si32(_loc1_,_loc2_);
                                 ESP = _loc2_;
                                 F_free();
                                 _loc2_ = int(_loc2_ + 16);
                                 _loc2_ = int(_loc2_ - 16);
                                 si32(_loc10_,_loc2_);
                                 ESP = _loc2_;
                                 F_free();
                                 _loc2_ = int(_loc2_ + 16);
                                 _loc2_ = int(_loc2_ - 16);
                                 si32(_loc11_,_loc2_);
                                 ESP = _loc2_;
                                 F_fclose();
                                 _loc2_ = int(_loc2_ + 16);
                                 ESP = _loc2_;
                                 F___error();
                                 si32(li32(_loc14_),int(eax));
                                 _loc13_ = -1;
                              }
                              else
                              {
                                 _loc2_ = int(_loc2_ - 16);
                                 si32(_loc11_,_loc2_ + 12);
                                 si32(_loc13_,_loc2_ + 8);
                                 si32(2048,_loc2_ + 4);
                                 si32(_loc1_,_loc2_);
                                 ESP = _loc2_;
                                 F_fread();
                                 _loc2_ = int(_loc2_ + 16);
                                 _loc14_ = int(eax);
                                 if(_loc14_ != 1)
                                 {
                                    ESP = _loc2_;
                                    F___error();
                                    _loc14_ = int(eax);
                                    _loc2_ = int(_loc2_ - 16);
                                    si32(_loc7_,_loc2_);
                                    ESP = _loc2_;
                                    F_free();
                                    _loc2_ = int(_loc2_ + 16);
                                    _loc2_ = int(_loc2_ - 16);
                                    si32(_loc1_,_loc2_);
                                    ESP = _loc2_;
                                    F_free();
                                    _loc2_ = int(_loc2_ + 16);
                                    _loc2_ = int(_loc2_ - 16);
                                    si32(_loc10_,_loc2_);
                                    ESP = _loc2_;
                                    F_free();
                                    _loc2_ = int(_loc2_ + 16);
                                    _loc2_ = int(_loc2_ - 16);
                                    si32(_loc11_,_loc2_);
                                    ESP = _loc2_;
                                    F_fclose();
                                    _loc2_ = int(_loc2_ + 16);
                                    ESP = _loc2_;
                                    F___error();
                                    si32(li32(_loc14_),int(eax));
                                    _loc13_ = -1;
                                 }
                                 else
                                 {
                                    _loc2_ = int(_loc2_ - 16);
                                    si32(_loc11_,_loc2_ + 12);
                                    si32(_loc9_,_loc2_ + 8);
                                    si32(20,_loc2_ + 4);
                                    si32(_loc10_,_loc2_);
                                    ESP = _loc2_;
                                    F_fread();
                                    _loc2_ = int(_loc2_ + 16);
                                    _loc14_ = int(eax);
                                    if(_loc14_ != _loc9_)
                                    {
                                       ESP = _loc2_;
                                       F___error();
                                       _loc14_ = int(eax);
                                       _loc2_ = int(_loc2_ - 16);
                                       si32(_loc7_,_loc2_);
                                       ESP = _loc2_;
                                       F_free();
                                       _loc2_ = int(_loc2_ + 16);
                                       _loc2_ = int(_loc2_ - 16);
                                       si32(_loc1_,_loc2_);
                                       ESP = _loc2_;
                                       F_free();
                                       _loc2_ = int(_loc2_ + 16);
                                       _loc2_ = int(_loc2_ - 16);
                                       si32(_loc10_,_loc2_);
                                       ESP = _loc2_;
                                       F_free();
                                       _loc2_ = int(_loc2_ + 16);
                                       _loc2_ = int(_loc2_ - 16);
                                       si32(_loc11_,_loc2_);
                                       ESP = _loc2_;
                                       F_fclose();
                                       _loc2_ = int(_loc2_ + 16);
                                       ESP = _loc2_;
                                       F___error();
                                       si32(li32(_loc14_),int(eax));
                                       _loc13_ = -1;
                                    }
                                    else
                                    {
                                       _loc2_ = int(_loc2_ - 16);
                                       si32(_loc11_,_loc2_);
                                       ESP = _loc2_;
                                       F_fclose();
                                       _loc2_ = int(_loc2_ + 16);
                                       _loc2_ = int(_loc2_ - 16);
                                       si32(_loc3_,_loc2_ + 4);
                                       si32(_collate_encoding_2E_2929,_loc2_);
                                       ESP = _loc2_;
                                       F_strcpy();
                                       _loc2_ = int(_loc2_ + 16);
                                       _loc11_ = li32(___collate_substitute_table_ptr);
                                       if(_loc11_ != 0)
                                       {
                                          _loc2_ = int(_loc2_ - 16);
                                          si32(_loc11_,_loc2_);
                                          ESP = _loc2_;
                                          F_free();
                                          _loc2_ = int(_loc2_ + 16);
                                       }
                                       si32(_loc7_,___collate_substitute_table_ptr);
                                       _loc11_ = li32(___collate_char_pri_table_ptr);
                                       if(_loc11_ != 0)
                                       {
                                          _loc2_ = int(_loc2_ - 16);
                                          si32(_loc11_,_loc2_);
                                          ESP = _loc2_;
                                          F_free();
                                          _loc2_ = int(_loc2_ + 16);
                                       }
                                       si32(_loc1_,___collate_char_pri_table_ptr);
                                       _loc11_ = 0;
                                       while(true)
                                       {
                                          _loc14_ = _loc11_ << 1;
                                          _loc14_ = _loc14_ << 2;
                                          _loc12_ = int(_loc1_ - _loc14_);
                                          var _loc5_:* = li32(_loc12_);
                                          _loc8_ = int(_loc5_ >>> 24);
                                          var _loc6_:* = int(_loc5_ >>> 8);
                                          _loc6_ = _loc6_ & 65280;
                                          _loc8_ = _loc6_ | _loc8_;
                                          _loc6_ = _loc5_ << 24;
                                          _loc5_ = _loc5_ << 8;
                                          _loc5_ = _loc5_ & 16711680;
                                          _loc5_ = _loc6_ | _loc5_;
                                          _loc8_ = _loc5_ | _loc8_;
                                          si32(_loc8_,_loc12_);
                                          _loc12_ = li32(___collate_char_pri_table_ptr);
                                          _loc14_ = int(_loc12_ - _loc14_);
                                          _loc8_ = li32(_loc14_ + 4);
                                          _loc12_ = int(_loc8_ >>> 24);
                                          _loc5_ = int(_loc8_ >>> 8);
                                          _loc5_ = _loc5_ & 65280;
                                          _loc12_ = _loc5_ | _loc12_;
                                          _loc5_ = _loc8_ << 24;
                                          _loc8_ = _loc8_ << 8;
                                          _loc8_ = _loc8_ & 16711680;
                                          _loc8_ = _loc5_ | _loc8_;
                                          _loc12_ = _loc8_ | _loc12_;
                                          si32(_loc12_,_loc14_ + 4);
                                          if(_loc11_ != -255)
                                          {
                                             _loc11_ = int(_loc11_ + -1);
                                             _loc1_ = li32(___collate_char_pri_table_ptr);
                                             continue;
                                          }
                                          break;
                                       }
                                       _loc1_ = li32(___collate_chain_pri_table);
                                       if(_loc1_ != 0)
                                       {
                                          _loc2_ = int(_loc2_ - 16);
                                          si32(_loc1_,_loc2_);
                                          ESP = _loc2_;
                                          F_free();
                                          _loc2_ = int(_loc2_ + 16);
                                       }
                                       si32(_loc10_,___collate_chain_pri_table);
                                       if(_loc9_ >= 1)
                                       {
                                          while(true)
                                          {
                                             _loc14_ = int(_loc13_ * 5);
                                             _loc14_ = _loc14_ << 2;
                                             _loc12_ = int(_loc10_ + _loc14_);
                                             _loc8_ = li32(_loc12_ - 8);
                                             _loc5_ = int(_loc8_ >>> 24);
                                             _loc6_ = int(_loc8_ >>> 8);
                                             _loc6_ = _loc6_ & 65280;
                                             _loc5_ = _loc6_ | _loc5_;
                                             _loc6_ = _loc8_ << 24;
                                             _loc8_ = _loc8_ << 8;
                                             _loc8_ = _loc8_ & 16711680;
                                             _loc8_ = _loc6_ | _loc8_;
                                             _loc8_ = _loc8_ | _loc5_;
                                             si32(_loc8_,_loc12_ - 8);
                                             _loc12_ = li32(___collate_chain_pri_table);
                                             _loc14_ = int(_loc12_ + _loc14_);
                                             _loc12_ = li32(_loc14_ - 4);
                                             _loc8_ = int(_loc12_ >>> 24);
                                             _loc5_ = int(_loc12_ >>> 8);
                                             _loc5_ = _loc5_ & 65280;
                                             _loc8_ = _loc5_ | _loc8_;
                                             _loc5_ = _loc12_ << 24;
                                             _loc12_ = _loc12_ << 8;
                                             _loc12_ = _loc12_ & 16711680;
                                             _loc12_ = _loc5_ | _loc12_;
                                             _loc12_ = _loc12_ | _loc8_;
                                             si32(_loc12_,_loc14_ - 4);
                                             if(_loc9_ != _loc13_)
                                             {
                                                _loc13_ = int(_loc13_ + 1);
                                                _loc10_ = li32(___collate_chain_pri_table);
                                                continue;
                                             }
                                             break;
                                          }
                                       }
                                       _loc9_ = 0;
                                       si32(_loc9_,___collate_substitute_nontrivial);
                                       _loc13_ = li32(___collate_substitute_table_ptr);
                                       while(_loc9_ < 256)
                                       {
                                          _loc10_ = int(_loc13_ + int(_loc9_ * 10));
                                          if(_loc9_ == li8(_loc10_))
                                          {
                                             _loc14_ = li8(_loc10_ + 1);
                                             if(_loc14_ == 0)
                                             {
                                                _loc9_ = int(_loc9_ + 1);
                                                continue;
                                             }
                                          }
                                          si32(1,___collate_substitute_nontrivial);
                                          break;
                                       }
                                       _loc13_ = 0;
                                       si32(_loc13_,___collate_load_error);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         addr1792:
         eax = _loc13_;
         _loc2_ = _loc4_;
         ESP = _loc2_;
         return;
      }
      _loc13_ = 1;
      si32(_loc13_,___collate_load_error);
      §§goto(addr1792);
   }
}
