package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   import sample.xx_etrunelocale_2E_o_3A_3E514901_2D_6299_2D_4420_2D_A649_2D_C576F01E9942.*;
   import avm2.intrinsics.memory.si16;
   
   public function F___wrap_setrunelocale() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc11_:* = 0;
      var _loc9_:* = 0;
      var _loc8_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 1024);
      _loc2_ = int(_loc2_ - 16);
      si32(L__2E_str,_loc2_ + 4);
      _loc1_ = li32(_loc3_);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F_strcmp();
      _loc2_ = int(_loc2_ + 16);
      var _loc12_:* = int(eax);
      if(_loc12_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(L__2E_str1,_loc2_ + 4);
         si32(_loc1_,_loc2_);
         ESP = _loc2_;
         F_strcmp();
         _loc2_ = int(_loc2_ + 16);
         _loc12_ = int(eax);
         if(_loc12_ != 0)
         {
            _loc11_ = li32(_CachedRuneLocale_2E_3128);
            if(_loc11_ != 0)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_ctype_encoding_2E_3127,_loc2_ + 4);
               si32(_loc1_,_loc2_);
               ESP = _loc2_;
               F_strcmp();
               _loc2_ = int(_loc2_ + 16);
               _loc12_ = int(eax);
               if(_loc12_ == 0)
               {
                  si32(_loc11_,__CurrentRuneLocale);
                  _loc12_ = li32(_Cached__mb_cur_max_2E_3129);
                  si32(_loc12_,___mb_cur_max);
                  _loc12_ = li32(_Cached__mb_sb_limit_2E_3130);
                  si32(_loc12_,___mb_sb_limit);
                  _loc12_ = li32(_Cached__mbrtowc_2E_3135);
                  si32(_loc12_,___mbrtowc);
                  _loc12_ = li32(_Cached__mbsinit_2E_3141);
                  si32(_loc12_,___mbsinit);
                  _loc12_ = li32(_Cached__mbsnrtowcs_2E_3147);
                  si32(_loc12_,___mbsnrtowcs);
                  _loc12_ = li32(_Cached__wcrtomb_2E_3139);
                  si32(_loc12_,___wcrtomb);
                  _loc12_ = li32(_Cached__wcsnrtombs_2E_3153);
                  si32(_loc12_,___wcsnrtombs);
                  _loc1_ = 0;
               }
            }
            _loc12_ = li32(__PathLocale);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc12_,_loc2_ + 4);
            _loc12_ = int(_loc3_ - 1024);
            si32(_loc12_,_loc2_);
            ESP = _loc2_;
            F_strcpy();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc12_,_loc2_);
            ESP = _loc2_;
            F_strlen();
            _loc2_ = int(_loc2_ + 16);
            var _loc10_:int = eax;
            _loc10_ = _loc12_ + _loc10_;
            si16(47,_loc10_);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc1_,_loc2_ + 4);
            si32(_loc12_,_loc2_);
            ESP = _loc2_;
            F_strcat();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc12_,_loc2_);
            ESP = _loc2_;
            F_strlen();
            _loc2_ = int(_loc2_ + 16);
            _loc10_ = eax;
            _loc10_ = _loc12_ + _loc10_;
            si16(69,_loc10_ + 8);
            si32(1348031555,_loc10_ + 4);
            si32(1598245935,_loc10_);
            _loc2_ = int(_loc2_ - 16);
            si32(L__2E_str4,_loc2_ + 4);
            si32(_loc12_,_loc2_);
            ESP = _loc2_;
            F_fopen();
            _loc2_ = int(_loc2_ + 16);
            _loc9_ = int(eax);
            if(_loc9_ == 0)
            {
               ESP = _loc2_;
               F___error();
               _loc12_ = int(eax);
               _loc11_ = 2;
               if(li32(_loc12_) != 0)
               {
                  ESP = _loc2_;
                  F___error();
                  _loc12_ = int(eax);
                  _loc11_ = li32(_loc12_);
                  addr1232:
                  _loc1_ = 0;
                  if(_loc11_ != 0)
                  {
                  }
               }
            }
            else
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_loc9_,_loc2_);
               ESP = _loc2_;
               F__Read_RuneMagi();
               _loc2_ = int(_loc2_ + 16);
               _loc8_ = int(eax);
               if(_loc8_ == 0)
               {
                  ESP = _loc2_;
                  F___error();
                  _loc12_ = int(eax);
                  _loc11_ = 79;
                  if(li32(_loc12_) != 0)
                  {
                     ESP = _loc2_;
                     F___error();
                     _loc12_ = int(eax);
                     _loc11_ = li32(_loc12_);
                  }
                  _loc2_ = int(_loc2_ - 16);
                  si32(_loc9_,_loc2_);
                  ESP = _loc2_;
                  F_fclose();
                  _loc2_ = int(_loc2_ + 16);
                  §§goto(addr1232);
               }
               else
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(_loc9_,_loc2_);
                  ESP = _loc2_;
                  F_fclose();
                  _loc2_ = int(_loc2_ + 16);
                  _loc7_ = li32(___wcsnrtombs);
                  _loc6_ = li32(___wcrtomb);
                  _loc5_ = li32(___mbsnrtowcs);
                  _loc4_ = li32(___mbsinit);
                  _loc9_ = li32(___mbrtowc);
                  si32(0,___mbrtowc);
                  si32(0,___mbsinit);
                  si32(___mbsnrtowcs_std,___mbsnrtowcs);
                  si32(0,___wcrtomb);
                  si32(___wcsnrtombs_std,___wcsnrtombs);
                  si32(0,_loc8_ + 44);
                  si32(0,_loc8_ + 40);
                  _loc2_ = int(_loc2_ - 16);
                  si32(L__2E_str5,_loc2_ + 4);
                  _loc11_ = int(_loc8_ + 8);
                  si32(_loc11_,_loc2_);
                  ESP = _loc2_;
                  F_strcmp();
                  _loc2_ = int(_loc2_ + 16);
                  _loc12_ = int(eax);
                  if(_loc12_ == 0)
                  {
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc8_,_loc2_);
                     ESP = _loc2_;
                     F__none_init();
                     _loc2_ = int(_loc2_ + 16);
                     _loc11_ = int(eax);
                     addr1029:
                     if(_loc11_ == 0)
                     {
                        _loc8_ = li32(_CachedRuneLocale_2E_3128);
                        if(_loc8_ != 0)
                        {
                           _loc2_ = int(_loc2_ - 16);
                           si32(L__2E_str8,_loc2_ + 4);
                           _loc12_ = int(_loc8_ + 8);
                           si32(_loc12_,_loc2_);
                           ESP = _loc2_;
                           F_strcmp();
                           _loc2_ = int(_loc2_ + 16);
                           _loc12_ = int(eax);
                           if(_loc12_ == 0)
                           {
                              _loc2_ = int(_loc2_ - 16);
                              si32(li32(_loc8_ + 3148),_loc2_);
                              ESP = _loc2_;
                              F_free();
                              _loc2_ = int(_loc2_ + 16);
                              _loc8_ = li32(_CachedRuneLocale_2E_3128);
                           }
                           _loc2_ = int(_loc2_ - 16);
                           si32(_loc8_,_loc2_);
                           ESP = _loc2_;
                           F_free();
                           _loc2_ = int(_loc2_ + 16);
                        }
                        _loc12_ = li32(__CurrentRuneLocale);
                        si32(_loc12_,_CachedRuneLocale_2E_3128);
                        _loc12_ = li32(___mb_cur_max);
                        si32(_loc12_,_Cached__mb_cur_max_2E_3129);
                        _loc12_ = li32(___mb_sb_limit);
                        si32(_loc12_,_Cached__mb_sb_limit_2E_3130);
                        _loc12_ = li32(___mbrtowc);
                        si32(_loc12_,_Cached__mbrtowc_2E_3135);
                        _loc12_ = li32(___mbsinit);
                        si32(_loc12_,_Cached__mbsinit_2E_3141);
                        _loc12_ = li32(___mbsnrtowcs);
                        si32(_loc12_,_Cached__mbsnrtowcs_2E_3147);
                        _loc12_ = li32(___wcrtomb);
                        si32(_loc12_,_Cached__wcrtomb_2E_3139);
                        _loc12_ = li32(___wcsnrtombs);
                        si32(_loc12_,_Cached__wcsnrtombs_2E_3153);
                        _loc2_ = int(_loc2_ - 16);
                        si32(_loc1_,_loc2_ + 4);
                        si32(_ctype_encoding_2E_3127,_loc2_);
                        ESP = _loc2_;
                        F_strcpy();
                        _loc2_ = int(_loc2_ + 16);
                        §§goto(addr1232);
                     }
                  }
                  else
                  {
                     _loc2_ = int(_loc2_ - 16);
                     si32(L__2E_str6,_loc2_ + 4);
                     si32(_loc11_,_loc2_);
                     ESP = _loc2_;
                     F_strcmp();
                     _loc2_ = int(_loc2_ + 16);
                     _loc12_ = int(eax);
                     if(_loc12_ == 0)
                     {
                        _loc2_ = int(_loc2_ - 16);
                        si32(_loc8_,_loc2_);
                        ESP = _loc2_;
                        F__ascii_init();
                        _loc2_ = int(_loc2_ + 16);
                        _loc11_ = int(eax);
                        §§goto(addr1029);
                     }
                     else
                     {
                        _loc2_ = int(_loc2_ - 16);
                        si32(L__2E_str7,_loc2_ + 4);
                        si32(_loc11_,_loc2_);
                        ESP = _loc2_;
                        F_strcmp();
                        _loc2_ = int(_loc2_ + 16);
                        _loc12_ = int(eax);
                        if(_loc12_ == 0)
                        {
                           _loc2_ = int(_loc2_ - 16);
                           si32(_loc8_,_loc2_);
                           ESP = _loc2_;
                           F__UTF8_init();
                           _loc2_ = int(_loc2_ + 16);
                           _loc11_ = int(eax);
                           §§goto(addr1029);
                        }
                        else
                        {
                           _loc2_ = int(_loc2_ - 16);
                           si32(L__2E_str8,_loc2_ + 4);
                           si32(_loc11_,_loc2_);
                           ESP = _loc2_;
                           F_strcmp();
                           _loc2_ = int(_loc2_ + 16);
                           _loc12_ = int(eax);
                           if(_loc12_ == 0)
                           {
                              _loc2_ = int(_loc2_ - 16);
                              si32(_loc8_,_loc2_);
                              ESP = _loc2_;
                              F__EUC_init();
                              _loc2_ = int(_loc2_ + 16);
                              _loc11_ = int(eax);
                              §§goto(addr1029);
                           }
                           else
                           {
                              _loc2_ = int(_loc2_ - 16);
                              si32(L__2E_str9,_loc2_ + 4);
                              si32(_loc11_,_loc2_);
                              ESP = _loc2_;
                              F_strcmp();
                              _loc2_ = int(_loc2_ + 16);
                              _loc12_ = int(eax);
                              if(_loc12_ == 0)
                              {
                                 _loc2_ = int(_loc2_ - 16);
                                 si32(_loc8_,_loc2_);
                                 ESP = _loc2_;
                                 F__GB18030_init();
                                 _loc2_ = int(_loc2_ + 16);
                                 _loc11_ = int(eax);
                                 §§goto(addr1029);
                              }
                              else
                              {
                                 _loc2_ = int(_loc2_ - 16);
                                 si32(L__2E_str10,_loc2_ + 4);
                                 si32(_loc11_,_loc2_);
                                 ESP = _loc2_;
                                 F_strcmp();
                                 _loc2_ = int(_loc2_ + 16);
                                 _loc12_ = int(eax);
                                 if(_loc12_ == 0)
                                 {
                                    _loc2_ = int(_loc2_ - 16);
                                    si32(_loc8_,_loc2_);
                                    ESP = _loc2_;
                                    F__GB2312_init();
                                    _loc2_ = int(_loc2_ + 16);
                                    _loc11_ = int(eax);
                                    §§goto(addr1029);
                                 }
                                 else
                                 {
                                    _loc2_ = int(_loc2_ - 16);
                                    si32(L__2E_str11,_loc2_ + 4);
                                    si32(_loc11_,_loc2_);
                                    ESP = _loc2_;
                                    F_strcmp();
                                    _loc2_ = int(_loc2_ + 16);
                                    _loc12_ = int(eax);
                                    if(_loc12_ == 0)
                                    {
                                       _loc2_ = int(_loc2_ - 16);
                                       si32(_loc8_,_loc2_);
                                       ESP = _loc2_;
                                       F__GBK_init();
                                       _loc2_ = int(_loc2_ + 16);
                                       _loc11_ = int(eax);
                                       §§goto(addr1029);
                                    }
                                    else
                                    {
                                       _loc2_ = int(_loc2_ - 16);
                                       si32(L__2E_str12,_loc2_ + 4);
                                       si32(_loc11_,_loc2_);
                                       ESP = _loc2_;
                                       F_strcmp();
                                       _loc2_ = int(_loc2_ + 16);
                                       _loc12_ = int(eax);
                                       if(_loc12_ == 0)
                                       {
                                          _loc2_ = int(_loc2_ - 16);
                                          si32(_loc8_,_loc2_);
                                          ESP = _loc2_;
                                          F__BIG5_init();
                                          _loc2_ = int(_loc2_ + 16);
                                          _loc11_ = int(eax);
                                          §§goto(addr1029);
                                       }
                                       else
                                       {
                                          _loc2_ = int(_loc2_ - 16);
                                          si32(L__2E_str13,_loc2_ + 4);
                                          si32(_loc11_,_loc2_);
                                          ESP = _loc2_;
                                          F_strcmp();
                                          _loc11_ = 79;
                                          _loc2_ = int(_loc2_ + 16);
                                          _loc12_ = int(eax);
                                          if(_loc12_ == 0)
                                          {
                                             _loc2_ = int(_loc2_ - 16);
                                             si32(_loc8_,_loc2_);
                                             ESP = _loc2_;
                                             F__MSKanji_init();
                                             _loc2_ = int(_loc2_ + 16);
                                             _loc11_ = int(eax);
                                             §§goto(addr1029);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  si32(_loc9_,___mbrtowc);
                  si32(_loc4_,___mbsinit);
                  si32(_loc5_,___mbsnrtowcs);
                  si32(_loc6_,___wcrtomb);
                  si32(_loc7_,___wcsnrtombs);
                  _loc2_ = int(_loc2_ - 16);
                  si32(_loc8_,_loc2_);
                  ESP = _loc2_;
                  F_free();
                  _loc2_ = int(_loc2_ + 16);
               }
            }
            ESP = _loc2_;
            F___error();
            _loc12_ = int(eax);
            si32(_loc11_,_loc12_);
            _loc1_ = -1;
         }
         addr1253:
         eax = _loc1_;
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      _loc2_ = int(_loc2_ - 16);
      si32(__DefaultRuneLocale,_loc2_);
      ESP = _loc2_;
      F__none_init();
      _loc2_ = int(_loc2_ + 16);
      _loc1_ = 0;
      §§goto(addr1253);
   }
}
