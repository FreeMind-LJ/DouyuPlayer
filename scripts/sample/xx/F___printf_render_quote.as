package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_printf_quote_2E_o_3A_1AE5FDB1_2D_E170_2D_4A5B_2D_8B15_2D_70E1E37D78F8.*;
   import avm2.intrinsics.memory.li8;
   
   public function F___printf_render_quote() : void
   {
      var _loc4_:* = 0;
      var _loc11_:* = 0;
      var _loc12_:* = 0;
      var _loc13_:* = 0;
      var _loc8_:int = 0;
      var _loc9_:* = 0;
      var _loc1_:* = 0;
      var _loc10_:* = 0;
      var _loc3_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc3_ = li32(_loc4_ + 8);
      _loc3_ = li32(_loc3_);
      _loc13_ = li32(_loc3_);
      _loc12_ = li32(_loc4_ + 4);
      _loc11_ = li32(_loc4_);
      if(_loc13_ == 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(8,_loc2_ + 12);
         si32(L__2E_str,_loc2_ + 8);
         si32(_loc12_,_loc2_ + 4);
         si32(_loc11_,_loc2_);
         ESP = _loc2_;
         F___printf_out();
         _loc2_ = int(_loc2_ + 16);
         _loc12_ = int(eax);
      }
      else
      {
         _loc10_ = li8(_loc13_);
         if(_loc10_ != 0)
         {
            _loc9_ = int(_loc13_ + 1);
            _loc8_ = 0;
            _loc7_ = li32(__CurrentRuneLocale);
            _loc6_ = li32(___mb_sb_limit);
            do
            {
               _loc3_ = _loc10_ << 24;
               _loc1_ = _loc3_ >> 24;
               if(_loc1_ >= 0)
               {
                  if(_loc6_ > _loc1_)
                  {
                     if((li8(int(_loc7_ + (_loc1_ << 2)) + 53) & 64) == 0)
                     {
                     }
                     addr201:
                     _loc8_ = _loc8_ + 1;
                     continue;
                  }
               }
               _loc10_ = _loc10_ & 255;
               if(_loc10_ != 34)
               {
                  if(_loc10_ == 92)
                  {
                  }
                  continue;
               }
               §§goto(addr201);
            }
            while(_loc3_ = int(_loc9_ + 1), _loc10_ = li8(_loc9_), _loc9_ = _loc3_, _loc10_ != 0);
            
            if(_loc8_ == 0)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_loc13_,_loc2_);
               ESP = _loc2_;
               F_strlen();
               _loc2_ = int(_loc2_ + 16);
               _loc2_ = int(_loc2_ - 16);
               si32(int(eax),_loc2_ + 12);
               si32(_loc13_,_loc2_ + 8);
               si32(_loc12_,_loc2_ + 4);
               si32(_loc11_,_loc2_);
               ESP = _loc2_;
               F___printf_out();
               _loc2_ = int(_loc2_ + 16);
               _loc12_ = int(eax);
            }
            else
            {
               _loc2_ = int(_loc2_ - 16);
               si32(1,_loc2_ + 12);
               si32(L__2E_str2,_loc2_ + 8);
               si32(_loc12_,_loc2_ + 4);
               si32(_loc11_,_loc2_);
               ESP = _loc2_;
               F___printf_out();
               _loc9_ = 0;
               _loc2_ = int(_loc2_ + 16);
               _loc6_ = int(eax);
               _loc7_ = _loc13_;
               while(true)
               {
                  _loc8_ = _loc13_ + _loc9_;
                  _loc9_ = _loc9_ ^ -1;
                  while(true)
                  {
                     _loc1_ = li8(_loc8_);
                     _loc10_ = int(L__2E_str3);
                     if(_loc1_ != 92)
                     {
                        if(_loc1_ == 0)
                        {
                           if(_loc7_ != _loc8_)
                           {
                              _loc2_ = int(_loc2_ - 16);
                              si32(_loc12_,_loc2_ + 4);
                              si32(_loc11_,_loc2_);
                              si32(_loc7_,_loc2_ + 8);
                              si32(int(_loc8_ - _loc7_),_loc2_ + 12);
                              ESP = _loc2_;
                              F___printf_out();
                              _loc2_ = int(_loc2_ + 16);
                              _loc6_ = int(int(eax) + _loc6_);
                           }
                           _loc2_ = int(_loc2_ - 16);
                           si32(1,_loc2_ + 12);
                           si32(L__2E_str2,_loc2_ + 8);
                           si32(_loc12_,_loc2_ + 4);
                           si32(_loc11_,_loc2_);
                           ESP = _loc2_;
                           F___printf_out();
                           _loc2_ = int(_loc2_ + 16);
                           _loc3_ = int(eax);
                           _loc2_ = int(_loc2_ - 16);
                           si32(_loc11_,_loc2_);
                           _loc12_ = int(_loc3_ + _loc6_);
                           ESP = _loc2_;
                           F___printf_flush();
                           _loc2_ = int(_loc2_ + 16);
                        }
                        else
                        {
                           _loc10_ = int(L__2E_str4);
                           if(_loc1_ != 10)
                           {
                              _loc10_ = int(L__2E_str5);
                              if(_loc1_ != 13)
                              {
                                 _loc10_ = int(L__2E_str6);
                                 if(_loc1_ != 9)
                                 {
                                    _loc10_ = int(L__2E_str7);
                                    if(_loc1_ != 32)
                                    {
                                       _loc10_ = int(L__2E_str8);
                                       if(_loc1_ != 34)
                                       {
                                          _loc10_ = _loc1_ << 24 >> 24;
                                          if(_loc10_ >= 0)
                                          {
                                             if(li32(___mb_sb_limit) > _loc10_)
                                             {
                                                var _loc5_:* = li32(__CurrentRuneLocale);
                                                if((li8(int(_loc5_ + (_loc10_ << 2)) + 53) & 64) != 0)
                                                {
                                                   _loc2_ = int(_loc2_ - 16);
                                                   si32(_loc10_,_loc2_ + 8);
                                                   si32(L__2E_str9,_loc2_ + 4);
                                                   _loc10_ = int(_loc4_ - 5);
                                                   si32(_loc10_,_loc2_);
                                                   ESP = _loc2_;
                                                   F_sprintf();
                                                   _loc2_ = int(_loc2_ + 16);
                                                   break;
                                                }
                                             }
                                          }
                                          _loc8_ = _loc8_ + 1;
                                          _loc9_ = int(_loc9_ + -1);
                                          continue;
                                       }
                                       break;
                                    }
                                    break;
                                 }
                                 break;
                              }
                              break;
                           }
                           break;
                        }
                     }
                     break;
                  }
                  if(_loc7_ != _loc8_)
                  {
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc12_,_loc2_ + 4);
                     si32(_loc11_,_loc2_);
                     si32(_loc7_,_loc2_ + 8);
                     si32(int(_loc8_ - _loc7_),_loc2_ + 12);
                     ESP = _loc2_;
                     F___printf_out();
                     _loc2_ = int(_loc2_ + 16);
                     _loc6_ = int(int(eax) + _loc6_);
                  }
                  _loc7_ = int(_loc8_ + 1);
                  _loc9_ = int(0 - _loc9_);
                  _loc2_ = int(_loc2_ - 16);
                  si32(_loc10_,_loc2_);
                  ESP = _loc2_;
                  F_strlen();
                  _loc2_ = int(_loc2_ + 16);
                  _loc3_ = int(eax);
                  _loc2_ = int(_loc2_ - 16);
                  si32(_loc3_,_loc2_ + 12);
                  si32(_loc10_,_loc2_ + 8);
                  si32(_loc12_,_loc2_ + 4);
                  si32(_loc11_,_loc2_);
                  ESP = _loc2_;
                  F___printf_out();
                  _loc2_ = int(_loc2_ + 16);
                  _loc3_ = int(eax);
                  _loc6_ = int(_loc3_ + _loc6_);
               }
            }
         }
         else
         {
            _loc2_ = int(_loc2_ - 16);
            si32(2,_loc2_ + 12);
            si32(L__2E_str1,_loc2_ + 8);
            si32(_loc12_,_loc2_ + 4);
            si32(_loc11_,_loc2_);
            ESP = _loc2_;
            F___printf_out();
            _loc2_ = int(_loc2_ + 16);
            _loc12_ = int(eax);
         }
      }
      eax = _loc12_;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
