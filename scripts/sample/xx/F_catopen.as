package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import sample.xx_sgcat_2E_o_3A_F0068227_2D_D04A_2D_4BF4_2D_8735_2D_ECF05396B5D8.*;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import avm2.intrinsics.memory.sxi8;
   
   public function F_catopen() : void
   {
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc14_:int = 0;
      var _loc11_:int = 0;
      var _loc9_:* = 0;
      var _loc10_:* = 0;
      var _loc5_:int = 0;
      var _loc12_:* = 0;
      var _loc7_:* = 0;
      var _loc6_:* = 0;
      var _loc13_:int = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc2_ = int(_loc2_ - 1136);
      _loc3_ = li32(_loc4_);
      if(_loc3_ != 0)
      {
         var _loc15_:* = li8(_loc3_);
         if(_loc15_ != 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(47,_loc2_ + 4);
            si32(_loc3_,_loc2_);
            ESP = _loc2_;
            F_strchr();
            _loc2_ = int(_loc2_ + 16);
            _loc15_ = int(eax);
            if(_loc15_ != 0)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_loc3_,_loc2_);
               ESP = _loc2_;
               F_load_msgcat();
               _loc2_ = int(_loc2_ + 16);
               _loc14_ = eax;
            }
            else
            {
               _loc15_ = li32(_loc4_ + 4);
               if(_loc15_ == 1)
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(0,_loc2_ + 4);
                  si32(6,_loc2_);
                  ESP = _loc2_;
                  F_setlocale();
                  _loc2_ = int(_loc2_ + 16);
                  _loc13_ = eax;
               }
               else
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(L__2E_str,_loc2_);
                  ESP = _loc2_;
                  F_getenv();
                  _loc2_ = int(_loc2_ + 16);
                  _loc13_ = eax;
               }
               if(_loc13_ != 0)
               {
                  _loc12_ = li8(_loc13_);
                  if(_loc12_ != 0)
                  {
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc13_,_loc2_);
                     ESP = _loc2_;
                     F_strlen();
                     _loc2_ = int(_loc2_ + 16);
                     _loc15_ = int(eax);
                     if(uint(_loc15_) <= 31)
                     {
                        if(_loc12_ == 46)
                        {
                           _loc12_ = li8(_loc13_ + 1);
                           if(_loc12_ != 0)
                           {
                              if(_loc12_ == 46)
                              {
                                 _loc15_ = li8(_loc13_ + 2);
                                 if(_loc15_ != 0)
                                 {
                                 }
                              }
                           }
                        }
                        _loc2_ = int(_loc2_ - 16);
                        si32(47,_loc2_ + 4);
                        si32(_loc13_,_loc2_);
                        ESP = _loc2_;
                        F_strchr();
                        _loc2_ = int(_loc2_ + 16);
                        _loc15_ = int(eax);
                        if(_loc15_ != 0)
                        {
                        }
                        addr282:
                        _loc2_ = int(_loc2_ - 16);
                        si32(_loc13_,_loc2_);
                        ESP = _loc2_;
                        F_strdup();
                        _loc14_ = -1;
                        _loc2_ = int(_loc2_ + 16);
                        _loc12_ = int(eax);
                        if(_loc12_ != 0)
                        {
                           _loc2_ = int(_loc2_ - 16);
                           si32(64,_loc2_ + 4);
                           si32(_loc12_,_loc2_);
                           ESP = _loc2_;
                           F_strchr();
                           _loc2_ = int(_loc2_ + 16);
                           _loc14_ = eax;
                           si32(_loc14_,_loc4_ - 1028);
                           if(_loc14_ != 0)
                           {
                              si8(0,_loc14_);
                           }
                           _loc2_ = int(_loc2_ - 16);
                           si32(95,_loc2_ + 4);
                           si32(_loc12_,_loc2_);
                           ESP = _loc2_;
                           F_strchr();
                           _loc2_ = int(_loc2_ + 16);
                           _loc11_ = eax;
                           si32(_loc11_,_loc4_ - 1028);
                           _loc14_ = L__2E_str2;
                           _loc10_ = _loc12_;
                           _loc9_ = _loc14_;
                           if(_loc11_ != 0)
                           {
                              si8(0,_loc11_);
                              _loc10_ = int(_loc11_ + 1);
                              si32(_loc10_,_loc4_ - 1028);
                              _loc9_ = _loc10_;
                           }
                           _loc2_ = int(_loc2_ - 16);
                           si32(46,_loc2_ + 4);
                           si32(_loc10_,_loc2_);
                           ESP = _loc2_;
                           F_strchr();
                           _loc2_ = int(_loc2_ + 16);
                           _loc11_ = eax;
                           si32(_loc11_,_loc4_ - 1028);
                           if(_loc11_ != 0)
                           {
                              si8(0,_loc11_);
                              _loc14_ = _loc11_ + 1;
                              si32(_loc14_,_loc4_ - 1028);
                           }
                           _loc2_ = int(_loc2_ - 16);
                           si32(L__2E_str3,_loc2_);
                           ESP = _loc2_;
                           F_getenv();
                           _loc2_ = int(_loc2_ + 16);
                           _loc11_ = eax;
                           if(_loc11_ != 0)
                           {
                              ESP = _loc2_;
                              F_issetugid();
                              _loc15_ = int(eax);
                              if(_loc15_ != 0)
                              {
                              }
                              addr502:
                              _loc2_ = int(_loc2_ - 16);
                              si32(_loc11_,_loc2_);
                              ESP = _loc2_;
                              F_strdup();
                              _loc2_ = int(_loc2_ + 16);
                              _loc11_ = eax;
                              si32(_loc11_,_loc4_ - 1028);
                              if(_loc11_ != 0)
                              {
                                 loop0:
                                 while(true)
                                 {
                                    _loc2_ = int(_loc2_ - 16);
                                    si32(L__2E_str5,_loc2_ + 4);
                                    _loc15_ = int(_loc4_ - 1028);
                                    si32(_loc15_,_loc2_);
                                    ESP = _loc2_;
                                    F_strsep();
                                    _loc2_ = int(_loc2_ + 16);
                                    _loc10_ = int(eax);
                                    if(_loc10_ == 0)
                                    {
                                       _loc2_ = int(_loc2_ - 16);
                                       si32(_loc12_,_loc2_);
                                       ESP = _loc2_;
                                       F_free();
                                       _loc2_ = int(_loc2_ + 16);
                                       _loc2_ = int(_loc2_ - 16);
                                       si32(_loc11_,_loc2_);
                                       ESP = _loc2_;
                                       F_free();
                                       _loc2_ = int(_loc2_ + 16);
                                       ESP = _loc2_;
                                       F___error();
                                       si32(2,int(eax));
                                       _loc14_ = -1;
                                       break;
                                    }
                                    _loc1_ = li8(_loc10_);
                                    _loc5_ = _loc4_ - 1024;
                                    if(_loc1_ != 0)
                                    {
                                       loop1:
                                       while(true)
                                       {
                                          _loc7_ = _loc1_ & 255;
                                          if(_loc7_ != 37)
                                          {
                                             if(_loc7_ == 0)
                                             {
                                                si8(0,_loc5_);
                                                _loc2_ = int(_loc2_ - 16);
                                                _loc15_ = int(_loc4_ - 1128);
                                                si32(_loc15_,_loc2_ + 4);
                                                _loc10_ = int(_loc4_ - 1024);
                                                si32(_loc10_,_loc2_);
                                                ESP = _loc2_;
                                                F_stat();
                                                _loc2_ = int(_loc2_ + 16);
                                                _loc15_ = int(eax);
                                                if(_loc15_ == 0)
                                                {
                                                   _loc2_ = int(_loc2_ - 16);
                                                   si32(_loc12_,_loc2_);
                                                   ESP = _loc2_;
                                                   F_free();
                                                   _loc2_ = int(_loc2_ + 16);
                                                   _loc2_ = int(_loc2_ - 16);
                                                   si32(_loc11_,_loc2_);
                                                   ESP = _loc2_;
                                                   F_free();
                                                   _loc2_ = int(_loc2_ + 16);
                                                   _loc2_ = int(_loc2_ - 16);
                                                   si32(_loc10_,_loc2_);
                                                   ESP = _loc2_;
                                                   F_load_msgcat();
                                                   _loc2_ = int(_loc2_ + 16);
                                                   _loc14_ = eax;
                                                   break loop0;
                                                }
                                                continue loop0;
                                             }
                                             _loc15_ = int(_loc5_ - (int(_loc4_ - 1024)));
                                             if(uint(_loc15_) <= 1022)
                                             {
                                                si8(_loc1_,_loc5_);
                                                _loc5_ = _loc5_ + 1;
                                             }
                                             else
                                             {
                                                break;
                                             }
                                          }
                                          else
                                          {
                                             _loc6_ = si8(li8(_loc10_ + 1));
                                             _loc7_ = int(_loc10_ + 1);
                                             if(_loc6_ <= 98)
                                             {
                                                if(_loc6_ != 37)
                                                {
                                                   if(_loc6_ != 76)
                                                   {
                                                      if(_loc6_ == 78)
                                                      {
                                                         _loc1_ = _loc3_;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      _loc1_ = _loc13_;
                                                   }
                                                }
                                                else
                                                {
                                                   _loc10_ = _loc7_;
                                                }
                                                addr652:
                                                _loc15_ = int(_loc4_ - 1024);
                                                _loc15_ = int(_loc5_ - _loc15_);
                                                if(uint(_loc15_) <= 1022)
                                                {
                                                   _loc15_ = li8(_loc10_);
                                                   si8(_loc15_,_loc5_);
                                                   _loc5_ = _loc5_ + 1;
                                                }
                                                else
                                                {
                                                   break;
                                                }
                                             }
                                             else if(_loc6_ != 99)
                                             {
                                                _loc1_ = _loc12_;
                                                if(_loc6_ != 108)
                                                {
                                                   if(_loc6_ == 116)
                                                   {
                                                      _loc1_ = _loc9_;
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr652);
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                _loc1_ = _loc14_;
                                             }
                                          }
                                          addr840:
                                          while(true)
                                          {
                                             _loc1_ = li8(_loc10_ + 1);
                                             _loc10_ = int(_loc10_ + 1);
                                             continue loop1;
                                          }
                                       }
                                       _loc2_ = int(_loc2_ - 16);
                                       si32(_loc12_,_loc2_);
                                       ESP = _loc2_;
                                       F_free();
                                       _loc2_ = int(_loc2_ + 16);
                                       _loc2_ = int(_loc2_ - 16);
                                       si32(_loc11_,_loc2_);
                                       ESP = _loc2_;
                                       F_free();
                                       _loc2_ = int(_loc2_ + 16);
                                       ESP = _loc2_;
                                       F___error();
                                       _loc15_ = int(eax);
                                       si32(63,_loc15_);
                                       _loc14_ = -1;
                                       break;
                                    }
                                    _loc7_ = int(_loc10_ + -1);
                                    _loc5_ = _loc4_ - 1024;
                                    _loc1_ = _loc3_;
                                    while(true)
                                    {
                                       _loc2_ = int(_loc2_ - 16);
                                       si32(_loc1_,_loc2_ + 4);
                                       si32(_loc5_,_loc2_);
                                       _loc15_ = int(_loc4_ - 1024);
                                       _loc15_ = int(_loc15_ - _loc5_);
                                       _loc15_ = int(_loc15_ + 1023);
                                       si32(_loc15_,_loc2_ + 8);
                                       ESP = _loc2_;
                                       F_strlcpy();
                                       _loc2_ = int(_loc2_ + 16);
                                       var _loc8_:int = eax;
                                       if(uint(_loc8_) < uint(_loc15_))
                                       {
                                          _loc2_ = int(_loc2_ - 16);
                                          si32(_loc1_,_loc2_);
                                          ESP = _loc2_;
                                          F_strlen();
                                          _loc2_ = int(_loc2_ + 16);
                                          _loc5_ = _loc5_ + int(eax);
                                          _loc10_ = _loc7_;
                                          §§goto(addr840);
                                       }
                                       §§goto(addr733);
                                    }
                                 }
                              }
                              else
                              {
                                 ESP = _loc2_;
                                 F___error();
                                 _loc15_ = int(eax);
                                 _loc2_ = int(_loc2_ - 16);
                                 si32(_loc12_,_loc2_);
                                 ESP = _loc2_;
                                 F_free();
                                 _loc2_ = int(_loc2_ + 16);
                                 ESP = _loc2_;
                                 F___error();
                                 si32(li32(_loc15_),int(eax));
                                 _loc14_ = -1;
                              }
                           }
                           _loc11_ = L__2E_str4;
                           §§goto(addr502);
                        }
                     }
                  }
               }
               _loc13_ = L__2E_str1;
               §§goto(addr282);
            }
         }
         addr1071:
         eax = _loc14_;
         _loc2_ = _loc4_;
         ESP = _loc2_;
         return;
      }
      ESP = _loc2_;
      F___error();
      _loc15_ = int(eax);
      si32(22,_loc15_);
      _loc14_ = -1;
      §§goto(addr1071);
   }
}
