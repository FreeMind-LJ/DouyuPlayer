package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import sample.xx_etlocale_2E_o_3A_DA3676CD_2D_76D7_2D_4C38_2D_BE1B_2D_97214930A33F.*;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si16;
   
   public function F_setlocale() : void
   {
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc13_:* = 0;
      var _loc5_:* = 0;
      var _loc12_:int = 0;
      var _loc10_:int = 0;
      var _loc9_:* = 0;
      var _loc8_:* = 0;
      var _loc7_:int = 0;
      var _loc1_:* = 0;
      var _loc11_:int = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc3_ = li32(_loc4_);
      if(uint(_loc3_) >= 7)
      {
         ESP = _loc2_;
         F___error();
         si32(22,int(eax));
         _loc3_ = 0;
      }
      else
      {
         _loc13_ = li32(_loc4_ + 4);
         if(_loc13_ != 0)
         {
            _loc2_ = int(_loc2_ - 16);
            _loc12_ = _current_categories + 32;
            si32(_loc12_,_loc2_ + 4);
            _loc11_ = _new_categories + 32;
            si32(_loc11_,_loc2_);
            ESP = _loc2_;
            F_strcpy();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = int(_loc2_ - 16);
            var _loc14_:* = int(_current_categories + 64);
            si32(_loc14_,_loc2_ + 4);
            _loc10_ = _new_categories + 64;
            si32(_loc10_,_loc2_);
            ESP = _loc2_;
            F_strcpy();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = int(_loc2_ - 16);
            _loc14_ = int(_current_categories + 96);
            si32(_loc14_,_loc2_ + 4);
            _loc9_ = int(_new_categories + 96);
            si32(_loc9_,_loc2_);
            ESP = _loc2_;
            F_strcpy();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = int(_loc2_ - 16);
            _loc14_ = int(_current_categories + 128);
            si32(_loc14_,_loc2_ + 4);
            _loc8_ = int(_new_categories + 128);
            si32(_loc8_,_loc2_);
            ESP = _loc2_;
            F_strcpy();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = int(_loc2_ - 16);
            _loc14_ = int(_current_categories + 160);
            si32(_loc14_,_loc2_ + 4);
            _loc7_ = _new_categories + 160;
            si32(_loc7_,_loc2_);
            ESP = _loc2_;
            F_strcpy();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = int(_loc2_ - 16);
            _loc14_ = int(_current_categories + 192);
            si32(_loc14_,_loc2_ + 4);
            _loc1_ = int(_new_categories + 192);
            si32(_loc1_,_loc2_);
            ESP = _loc2_;
            F_strcpy();
            _loc2_ = int(_loc2_ + 16);
            _loc14_ = li8(_loc13_);
            if(_loc14_ != 0)
            {
               if(_loc3_ != 0)
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(_loc13_,_loc2_);
                  ESP = _loc2_;
                  F_strlen();
                  _loc2_ = int(_loc2_ + 16);
                  _loc14_ = int(eax);
                  if(uint(_loc14_) >= 32)
                  {
                     ESP = _loc2_;
                     F___error();
                     si32(22,int(eax));
                     _loc3_ = 0;
                  }
                  else
                  {
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc13_,_loc2_ + 4);
                     _loc14_ = int(_new_categories + (_loc3_ << 5));
                     si32(_loc14_,_loc2_);
                     ESP = _loc2_;
                     F_strcpy();
                     _loc2_ = int(_loc2_ + 16);
                     addr1226:
                     _loc13_ = int(_saved_categories + 32);
                     _loc11_ = 1;
                     if(_loc3_ != 0)
                     {
                        _loc2_ = int(_loc2_ - 16);
                        si32(_loc3_,_loc2_);
                        ESP = _loc2_;
                        F_loadlocale();
                        _loc2_ = int(_loc2_ + 16);
                        _loc3_ = int(eax);
                     }
                     else
                     {
                        while(true)
                        {
                           if(_loc11_ >= 7)
                           {
                              ESP = _loc2_;
                              F_currentlocale();
                              _loc3_ = int(_current_locale_string);
                           }
                           else
                           {
                              _loc2_ = int(_loc2_ - 16);
                              si32(_loc13_,_loc2_);
                              si32(_loc12_,_loc2_ + 4);
                              ESP = _loc2_;
                              F_strcpy();
                              _loc2_ = int(_loc2_ + 16);
                              _loc2_ = int(_loc2_ - 16);
                              si32(_loc11_,_loc2_);
                              ESP = _loc2_;
                              F_loadlocale();
                              _loc12_ = _loc12_ + 32;
                              _loc13_ = int(_loc13_ + 32);
                              _loc11_ = _loc11_ + 1;
                              _loc2_ = int(_loc2_ + 16);
                              _loc14_ = int(eax);
                              if(_loc14_ == 0)
                              {
                                 ESP = _loc2_;
                                 F___error();
                                 _loc14_ = int(eax);
                                 _loc5_ = li32(_loc14_);
                                 _loc13_ = 1;
                                 _loc12_ = 32;
                                 _loc3_ = 0;
                                 if(int(_loc11_ + -1) >= 2)
                                 {
                                    do
                                    {
                                       _loc14_ = int(_saved_categories + _loc12_);
                                       _loc2_ = int(_loc2_ - 16);
                                       si32(_loc14_,_loc2_ + 4);
                                       _loc14_ = int(_new_categories + _loc12_);
                                       si32(_loc14_,_loc2_);
                                       ESP = _loc2_;
                                       F_strcpy();
                                       _loc2_ = int(_loc2_ + 16);
                                       _loc2_ = int(_loc2_ - 16);
                                       si32(_loc13_,_loc2_);
                                       ESP = _loc2_;
                                       F_loadlocale();
                                       _loc2_ = int(_loc2_ + 16);
                                       _loc14_ = int(eax);
                                       if(_loc14_ == 0)
                                       {
                                          si16(67,int(_new_categories + (_loc13_ << 5)));
                                          _loc2_ = int(_loc2_ - 16);
                                          si32(_loc13_,_loc2_);
                                          ESP = _loc2_;
                                          F_loadlocale();
                                          _loc2_ = int(_loc2_ + 16);
                                       }
                                       _loc14_ = int(_loc11_ + _loc3_);
                                       _loc3_ = int(_loc3_ + -1);
                                       _loc12_ = _loc12_ + 32;
                                       _loc13_ = int(_loc13_ + 1);
                                    }
                                    while(_loc14_ != 3);
                                    
                                 }
                                 ESP = _loc2_;
                                 F___error();
                                 _loc14_ = int(eax);
                                 si32(_loc5_,_loc14_);
                                 _loc3_ = 0;
                              }
                              else
                              {
                                 continue;
                              }
                           }
                        }
                     }
                  }
               }
               else
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(47,_loc2_ + 4);
                  si32(_loc13_,_loc2_);
                  ESP = _loc2_;
                  F_strchr();
                  _loc2_ = int(_loc2_ + 16);
                  _loc5_ = int(eax);
                  if(_loc5_ != 0)
                  {
                     _loc1_ = int(_loc5_ + -1);
                     do
                     {
                        _loc9_ = li8(_loc1_ + 2);
                        _loc1_ = int(_loc1_ + 1);
                        _loc5_ = 6;
                     }
                     while(_loc9_ == 47);
                     
                     if(_loc9_ == 0)
                     {
                        ESP = _loc2_;
                        F___error();
                        si32(22,int(eax));
                        _loc3_ = 0;
                     }
                     else
                     {
                        loop4:
                        while(_loc5_ != 0)
                        {
                           _loc9_ = int(_loc1_ - _loc13_);
                           if(_loc9_ >= 32)
                           {
                              ESP = _loc2_;
                              F___error();
                              si32(22,int(eax));
                              _loc3_ = 0;
                           }
                           else
                           {
                              _loc2_ = int(_loc2_ - 16);
                              si32(_loc13_,_loc2_ + 4);
                              si32(_loc11_,_loc2_);
                              _loc14_ = int(_loc9_ + 1);
                              si32(_loc14_,_loc2_ + 8);
                              ESP = _loc2_;
                              F_strlcpy();
                              _loc2_ = int(_loc2_ + 16);
                              _loc9_ = li8(_loc1_);
                              if(_loc9_ == 47)
                              {
                                 do
                                 {
                                    _loc14_ = int(_loc1_ + 1);
                                    _loc9_ = li8(_loc1_ + 1);
                                    _loc1_ = _loc14_;
                                 }
                                 while(_loc9_ == 47);
                                 
                              }
                              _loc13_ = _loc1_;
                              _loc8_ = _loc9_;
                              while(true)
                              {
                                 _loc8_ = _loc8_ & 255;
                                 if(_loc8_ != 0)
                                 {
                                    if(_loc8_ == 47)
                                    {
                                       break;
                                    }
                                    _loc8_ = li8(_loc1_ + 1);
                                    _loc1_ = int(_loc1_ + 1);
                                    continue;
                                 }
                                 break;
                              }
                              _loc5_ = int(_loc5_ + -1);
                              _loc11_ = _loc11_ + 32;
                              if(_loc9_ == 0)
                              {
                                 _loc11_ = _loc11_ + -32;
                                 _loc14_ = int(7 - _loc5_);
                                 if(_loc14_ <= 6)
                                 {
                                    while(true)
                                    {
                                       _loc2_ = int(_loc2_ - 16);
                                       si32(_loc11_,_loc2_ + 4);
                                       _loc11_ = _loc11_ + 32;
                                       si32(_loc11_,_loc2_);
                                       ESP = _loc2_;
                                       F_strcpy();
                                       _loc2_ = int(_loc2_ + 16);
                                       _loc5_ = int(_loc5_ + -1);
                                       if(_loc5_ == 0)
                                       {
                                          break loop4;
                                       }
                                    }
                                 }
                                 break;
                              }
                              continue;
                           }
                        }
                        §§goto(addr1226);
                     }
                  }
                  else
                  {
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc13_,_loc2_);
                     ESP = _loc2_;
                     F_strlen();
                     _loc2_ = int(_loc2_ + 16);
                     _loc14_ = int(eax);
                     if(uint(_loc14_) <= 31)
                     {
                        _loc2_ = int(_loc2_ - 16);
                        si32(_loc13_,_loc2_ + 4);
                        _loc14_ = int(_new_categories + 32);
                        si32(_loc14_,_loc2_);
                        ESP = _loc2_;
                        F_strcpy();
                        _loc2_ = int(_loc2_ + 16);
                        _loc2_ = int(_loc2_ - 16);
                        si32(_loc13_,_loc2_ + 4);
                        si32(_loc10_,_loc2_);
                        ESP = _loc2_;
                        F_strcpy();
                        _loc2_ = int(_loc2_ + 16);
                        _loc2_ = int(_loc2_ - 16);
                        si32(_loc13_,_loc2_ + 4);
                        si32(_loc9_,_loc2_);
                        ESP = _loc2_;
                        F_strcpy();
                        _loc2_ = int(_loc2_ + 16);
                        _loc2_ = int(_loc2_ - 16);
                        si32(_loc13_,_loc2_ + 4);
                        si32(_loc8_,_loc2_);
                        ESP = _loc2_;
                        F_strcpy();
                        _loc2_ = int(_loc2_ + 16);
                        _loc2_ = int(_loc2_ - 16);
                        si32(_loc13_,_loc2_ + 4);
                        si32(_loc7_,_loc2_);
                        ESP = _loc2_;
                        F_strcpy();
                        _loc2_ = int(_loc2_ + 16);
                        _loc2_ = int(_loc2_ - 16);
                        si32(_loc13_,_loc2_ + 4);
                        si32(_loc1_,_loc2_);
                        ESP = _loc2_;
                        F_strcpy();
                        _loc2_ = int(_loc2_ + 16);
                        §§goto(addr1226);
                     }
                     else
                     {
                        ESP = _loc2_;
                        F___error();
                        si32(22,int(eax));
                        _loc3_ = 0;
                     }
                  }
               }
            }
            else
            {
               _loc13_ = int(_new_categories + 32);
               _loc11_ = 1;
               if(_loc3_ != 0)
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(L__2E_str,_loc2_);
                  ESP = _loc2_;
                  F_getenv();
                  _loc2_ = int(_loc2_ + 16);
                  _loc11_ = eax;
                  if(_loc11_ != 0)
                  {
                     _loc14_ = li8(_loc11_);
                     if(_loc14_ == 0)
                     {
                     }
                     addr623:
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc11_,_loc2_);
                     ESP = _loc2_;
                     F_strlen();
                     _loc2_ = int(_loc2_ + 16);
                     _loc14_ = int(eax);
                     if(uint(_loc14_) >= 32)
                     {
                        ESP = _loc2_;
                        F___error();
                        si32(22,int(eax));
                        _loc3_ = 0;
                     }
                     else
                     {
                        _loc2_ = int(_loc2_ - 16);
                        si32(_loc11_,_loc2_ + 4);
                        _loc14_ = int(_new_categories + (_loc3_ << 5));
                        si32(_loc14_,_loc2_);
                        ESP = _loc2_;
                        F_strcpy();
                        _loc2_ = int(_loc2_ + 16);
                        §§goto(addr1226);
                     }
                  }
                  _loc14_ = _loc3_ << 2;
                  _loc14_ = int(_categories + _loc14_);
                  _loc14_ = li32(_loc14_);
                  _loc2_ = int(_loc2_ - 16);
                  si32(_loc14_,_loc2_);
                  ESP = _loc2_;
                  F_getenv();
                  _loc2_ = int(_loc2_ + 16);
                  _loc11_ = eax;
                  if(_loc11_ != 0)
                  {
                     _loc14_ = li8(_loc11_);
                     if(_loc14_ == 0)
                     {
                     }
                     §§goto(addr623);
                  }
                  _loc2_ = int(_loc2_ - 16);
                  si32(L__2E_str7,_loc2_);
                  ESP = _loc2_;
                  F_getenv();
                  _loc2_ = int(_loc2_ + 16);
                  _loc11_ = eax;
                  if(_loc11_ != 0)
                  {
                     _loc14_ = li8(_loc11_);
                     if(_loc14_ == 0)
                     {
                     }
                     §§goto(addr623);
                  }
                  _loc11_ = L__2E_str8;
                  §§goto(addr623);
               }
               else
               {
                  while(true)
                  {
                     if(_loc11_ >= 7)
                     {
                        §§goto(addr1226);
                     }
                     else
                     {
                        _loc2_ = int(_loc2_ - 16);
                        si32(L__2E_str,_loc2_);
                        ESP = _loc2_;
                        F_getenv();
                        _loc2_ = int(_loc2_ + 16);
                        _loc5_ = int(eax);
                        if(_loc5_ != 0)
                        {
                           _loc14_ = li8(_loc5_);
                           if(_loc14_ == 0)
                           {
                           }
                           addr426:
                           _loc2_ = int(_loc2_ - 16);
                           si32(_loc5_,_loc2_);
                           ESP = _loc2_;
                           F_strlen();
                           _loc2_ = int(_loc2_ + 16);
                           _loc14_ = int(eax);
                           if(uint(_loc14_) >= 32)
                           {
                              ESP = _loc2_;
                              F___error();
                              si32(22,int(eax));
                              _loc3_ = 0;
                              break;
                           }
                           _loc2_ = int(_loc2_ - 16);
                           si32(_loc5_,_loc2_ + 4);
                           si32(_loc13_,_loc2_);
                           ESP = _loc2_;
                           F_strcpy();
                           _loc2_ = int(_loc2_ + 16);
                           _loc11_ = _loc11_ + 1;
                           _loc13_ = int(_loc13_ + 32);
                           continue;
                        }
                        _loc14_ = _loc11_ << 2;
                        _loc14_ = int(_categories + _loc14_);
                        _loc14_ = li32(_loc14_);
                        _loc2_ = int(_loc2_ - 16);
                        si32(_loc14_,_loc2_);
                        ESP = _loc2_;
                        F_getenv();
                        _loc2_ = int(_loc2_ + 16);
                        _loc5_ = int(eax);
                        if(_loc5_ != 0)
                        {
                           _loc14_ = li8(_loc5_);
                           if(_loc14_ == 0)
                           {
                           }
                           §§goto(addr426);
                        }
                        _loc2_ = int(_loc2_ - 16);
                        si32(L__2E_str7,_loc2_);
                        ESP = _loc2_;
                        F_getenv();
                        _loc2_ = int(_loc2_ + 16);
                        _loc5_ = int(eax);
                        if(_loc5_ != 0)
                        {
                           _loc14_ = li8(_loc5_);
                           if(_loc14_ == 0)
                           {
                           }
                           §§goto(addr426);
                        }
                        _loc5_ = int(L__2E_str8);
                        §§goto(addr426);
                     }
                  }
               }
            }
         }
         else if(_loc3_ != 0)
         {
            _loc3_ = int(_current_categories + (_loc3_ << 5));
         }
         else
         {
            ESP = _loc2_;
            F_currentlocale();
            _loc3_ = int(_current_locale_string);
         }
      }
      eax = _loc3_;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
