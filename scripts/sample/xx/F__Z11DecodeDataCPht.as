package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si8;
   
   public function F__Z11DecodeDataCPht() : void
   {
      var _loc1_:* = 0;
      var _loc7_:* = 0;
      var _loc3_:* = 0;
      var _loc6_:int = 0;
      var _loc5_:* = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      _loc3_ = li32(_loc1_ + 4);
      var _loc4_:* = _loc3_ << 16;
      _loc5_ = _loc4_ >> 16;
      _loc6_ = 36;
      _loc7_ = li32(_loc1_);
      if(_loc5_ <= 18)
      {
         if(_loc5_ <= 8)
         {
            if(_loc5_ <= 3)
            {
               if(_loc5_ <= 1)
               {
                  if(_loc3_ != 0)
                  {
                     if(_loc3_ != 1)
                     {
                        addr3454:
                        while(true)
                        {
                           _loc4_ = int(_loc7_ - _loc6_);
                           var _loc8_:* = li8(_loc4_ + 36);
                           _loc8_ = _loc8_ ^ -27;
                           _loc8_ = int(_loc8_ + -27);
                           _loc8_ = _loc8_ ^ -45;
                           var _loc9_:* = _loc8_ << 1;
                           _loc8_ = _loc8_ & 255;
                           var _loc10_:* = int(_loc8_ >>> 7);
                           _loc9_ = _loc10_ | _loc9_;
                           _loc9_ = _loc9_ << 3;
                           _loc8_ = int(_loc8_ >>> 4);
                           _loc8_ = _loc8_ & 7;
                           _loc8_ = _loc9_ | _loc8_;
                           _loc9_ = int(_loc8_ + -79);
                           _loc8_ = _loc9_ << 1;
                           _loc9_ = _loc9_ & 128;
                           _loc9_ = int(_loc9_ >>> 7);
                           _loc8_ = _loc8_ | _loc9_;
                           si8(_loc8_,_loc4_ + 36);
                           _loc6_ = _loc6_ + -1;
                           if(_loc6_ != 0)
                           {
                              continue;
                           }
                        }
                     }
                     else
                     {
                        while(true)
                        {
                           _loc4_ = int(_loc7_ - _loc6_);
                           _loc8_ = li8(_loc4_ + 36);
                           _loc9_ = int(_loc8_ >>> 7);
                           _loc10_ = _loc8_ << 1;
                           _loc9_ = _loc10_ | _loc9_;
                           _loc9_ = _loc9_ << 1;
                           _loc10_ = int(_loc8_ >>> 6);
                           _loc10_ = _loc10_ & 1;
                           _loc9_ = _loc9_ | _loc10_;
                           _loc9_ = _loc9_ << 4;
                           _loc8_ = int(_loc8_ >>> 2);
                           _loc8_ = _loc8_ & 15;
                           _loc8_ = _loc9_ | _loc8_;
                           _loc8_ = int(_loc8_ + 117);
                           _loc8_ = _loc8_ ^ 2;
                           _loc9_ = int(_loc8_ + 69);
                           _loc8_ = _loc9_ << 3;
                           _loc9_ = _loc9_ & 224;
                           _loc9_ = int(_loc9_ >>> 5);
                           _loc8_ = _loc8_ | _loc9_;
                           si8(_loc8_,_loc4_ + 36);
                           _loc6_ = _loc6_ + -1;
                           if(_loc6_ != 0)
                           {
                              continue;
                           }
                        }
                     }
                  }
                  else
                  {
                     while(true)
                     {
                        _loc4_ = int(_loc7_ - _loc6_);
                        _loc8_ = li8(_loc4_ + 36);
                        _loc8_ = int(_loc8_ + 101);
                        _loc8_ = _loc8_ ^ 160;
                        si8(_loc8_,_loc4_ + 36);
                        _loc6_ = _loc6_ + -1;
                        if(_loc6_ != 0)
                        {
                           continue;
                        }
                     }
                  }
               }
               else if(_loc3_ != 2)
               {
                  if(_loc3_ != 3)
                  {
                     §§goto(addr3454);
                  }
                  else
                  {
                     while(true)
                     {
                        _loc4_ = int(_loc7_ - _loc6_);
                        _loc9_ = li8(_loc4_ + 36);
                        _loc8_ = int(_loc9_ >>> 7);
                        _loc9_ = _loc9_ << 1;
                        _loc8_ = _loc9_ | _loc8_;
                        _loc8_ = int(_loc8_ + 9);
                        _loc8_ = _loc8_ ^ -92;
                        _loc9_ = int(_loc8_ + 104);
                        _loc8_ = _loc9_ << 6;
                        _loc9_ = _loc9_ & 252;
                        _loc9_ = int(_loc9_ >>> 2);
                        _loc8_ = _loc9_ | _loc8_;
                        si8(_loc8_,_loc4_ + 36);
                        _loc6_ = _loc6_ + -1;
                        if(_loc6_ != 0)
                        {
                           continue;
                        }
                     }
                  }
               }
               else
               {
                  while(true)
                  {
                     _loc4_ = int(_loc7_ - _loc6_);
                     _loc8_ = li8(_loc4_ + 36);
                     _loc8_ = _loc8_ ^ -98;
                     _loc8_ = int(_loc8_ + -22);
                     _loc9_ = _loc8_ << 1;
                     _loc8_ = _loc8_ & 255;
                     _loc10_ = int(_loc8_ >>> 7);
                     _loc9_ = _loc9_ | _loc10_;
                     _loc9_ = _loc9_ << 2;
                     _loc8_ = int(_loc8_ >>> 5);
                     _loc8_ = _loc8_ & 3;
                     _loc8_ = _loc9_ | _loc8_;
                     _loc8_ = int(_loc8_ + 21);
                     si8(_loc8_,_loc4_ + 36);
                     _loc6_ = _loc6_ + -1;
                     if(_loc6_ != 0)
                     {
                        continue;
                     }
                  }
               }
            }
            else if(_loc5_ <= 5)
            {
               if(_loc3_ != 4)
               {
                  if(_loc3_ != 5)
                  {
                     §§goto(addr3454);
                  }
                  else
                  {
                     while(true)
                     {
                        _loc4_ = int(_loc7_ - _loc6_);
                        _loc8_ = li8(_loc4_ + 36);
                        _loc8_ = int(_loc8_ + 127);
                        _loc9_ = _loc8_ << 1;
                        _loc8_ = _loc8_ & 255;
                        _loc10_ = int(_loc8_ >>> 7);
                        _loc9_ = _loc9_ | _loc10_;
                        _loc9_ = _loc9_ << 6;
                        _loc8_ = int(_loc8_ >>> 1);
                        _loc8_ = _loc8_ & 63;
                        _loc8_ = _loc9_ | _loc8_;
                        _loc9_ = _loc8_ ^ -32;
                        _loc8_ = _loc9_ << 6;
                        _loc9_ = _loc9_ & 252;
                        _loc9_ = int(_loc9_ >>> 2);
                        _loc8_ = _loc9_ | _loc8_;
                        _loc9_ = int(_loc8_ + 40);
                        _loc8_ = _loc9_ << 4;
                        _loc9_ = _loc9_ & 240;
                        _loc9_ = int(_loc9_ >>> 4);
                        _loc8_ = _loc8_ | _loc9_;
                        si8(_loc8_,_loc4_ + 36);
                        _loc6_ = _loc6_ + -1;
                        if(_loc6_ != 0)
                        {
                           continue;
                        }
                     }
                  }
               }
               else
               {
                  while(true)
                  {
                     _loc4_ = int(_loc7_ - _loc6_);
                     _loc8_ = li8(_loc4_ + 36);
                     _loc9_ = _loc8_ ^ -76;
                     _loc8_ = _loc9_ << 7;
                     _loc9_ = _loc9_ & 254;
                     _loc9_ = int(_loc9_ >>> 1);
                     _loc8_ = _loc8_ | _loc9_;
                     _loc8_ = _loc8_ ^ 49;
                     _loc8_ = int(_loc8_ + 102);
                     _loc8_ = _loc8_ ^ -107;
                     _loc9_ = int(_loc8_ + 123);
                     _loc8_ = _loc9_ << 1;
                     _loc9_ = _loc9_ & 128;
                     _loc9_ = int(_loc9_ >>> 7);
                     _loc8_ = _loc9_ | _loc8_;
                     si8(_loc8_,_loc4_ + 36);
                     _loc6_ = _loc6_ + -1;
                     if(_loc6_ != 0)
                     {
                        continue;
                     }
                  }
               }
            }
            else if(_loc3_ != 6)
            {
               if(_loc3_ != 7)
               {
                  if(_loc3_ != 8)
                  {
                     §§goto(addr3454);
                  }
                  else
                  {
                     while(true)
                     {
                        _loc4_ = int(_loc7_ - _loc6_);
                        _loc8_ = li8(_loc4_ + 36);
                        _loc8_ = int(_loc8_ + -5);
                        _loc10_ = _loc8_ << 1;
                        _loc9_ = _loc8_ & 255;
                        var _loc11_:int = _loc9_ >>> 7;
                        _loc10_ = _loc10_ | _loc11_;
                        _loc10_ = _loc10_ << 6;
                        _loc9_ = int(_loc9_ >>> 1);
                        _loc9_ = _loc9_ & 48;
                        _loc9_ = _loc10_ | _loc9_;
                        _loc9_ = _loc9_ & 240;
                        _loc9_ = int(_loc9_ >>> 4);
                        _loc8_ = _loc8_ << 3;
                        _loc8_ = _loc8_ & -16;
                        _loc8_ = _loc9_ | _loc8_;
                        _loc8_ = int(_loc8_ + 9);
                        _loc9_ = _loc8_ ^ 76;
                        _loc8_ = _loc9_ << 5;
                        _loc9_ = _loc9_ & 248;
                        _loc9_ = int(_loc9_ >>> 3);
                        _loc8_ = _loc8_ | _loc9_;
                        si8(_loc8_,_loc4_ + 36);
                        _loc6_ = _loc6_ + -1;
                        if(_loc6_ != 0)
                        {
                           continue;
                        }
                     }
                  }
               }
               else
               {
                  while(true)
                  {
                     _loc4_ = int(_loc7_ - _loc6_);
                     _loc8_ = li8(_loc4_ + 36);
                     _loc10_ = int(_loc8_ >>> 1);
                     _loc9_ = _loc8_ << 7;
                     _loc9_ = _loc9_ | _loc10_;
                     _loc9_ = _loc9_ & 240;
                     _loc9_ = int(_loc9_ >>> 4);
                     _loc8_ = _loc8_ << 3;
                     _loc8_ = _loc8_ & 2032;
                     _loc8_ = _loc9_ | _loc8_;
                     _loc9_ = int(_loc8_ + -106);
                     _loc8_ = _loc9_ << 5;
                     _loc9_ = _loc9_ & 248;
                     _loc9_ = int(_loc9_ >>> 3);
                     _loc8_ = _loc8_ | _loc9_;
                     _loc8_ = int(_loc8_ + -12);
                     _loc8_ = _loc8_ ^ 173;
                     si8(_loc8_,_loc4_ + 36);
                     _loc6_ = _loc6_ + -1;
                     if(_loc6_ != 0)
                     {
                        continue;
                     }
                  }
               }
            }
            else
            {
               while(true)
               {
                  _loc4_ = int(_loc7_ - _loc6_);
                  _loc8_ = li8(_loc4_ + 36);
                  _loc8_ = int(_loc8_ + -103);
                  _loc9_ = _loc8_ ^ -60;
                  _loc8_ = _loc9_ << 1;
                  _loc9_ = _loc9_ & 128;
                  _loc9_ = int(_loc9_ >>> 7);
                  _loc8_ = _loc8_ | _loc9_;
                  _loc9_ = _loc8_ ^ 79;
                  _loc8_ = _loc9_ << 1;
                  _loc9_ = _loc9_ & 128;
                  _loc9_ = int(_loc9_ >>> 7);
                  _loc8_ = _loc9_ | _loc8_;
                  si8(_loc8_,_loc4_ + 36);
                  _loc6_ = _loc6_ + -1;
                  if(_loc6_ != 0)
                  {
                     continue;
                  }
               }
            }
         }
         else if(_loc5_ <= 13)
         {
            if(_loc5_ <= 10)
            {
               if(_loc3_ != 9)
               {
                  if(_loc3_ != 10)
                  {
                     §§goto(addr3454);
                  }
                  else
                  {
                     while(true)
                     {
                        _loc4_ = int(_loc7_ - _loc6_);
                        _loc8_ = li8(_loc4_ + 36);
                        _loc9_ = int(_loc8_ + -91);
                        _loc8_ = _loc9_ << 3;
                        _loc9_ = _loc9_ & 224;
                        _loc9_ = int(_loc9_ >>> 5);
                        _loc8_ = _loc8_ | _loc9_;
                        _loc9_ = int(_loc8_ + -63);
                        _loc8_ = _loc9_ << 3;
                        _loc9_ = _loc9_ & 224;
                        _loc9_ = int(_loc9_ >>> 5);
                        _loc8_ = _loc9_ | _loc8_;
                        _loc8_ = int(_loc8_ + 23);
                        _loc8_ = _loc8_ ^ 173;
                        _loc8_ = int(_loc8_ + -78);
                        si8(_loc8_,_loc4_ + 36);
                        _loc6_ = _loc6_ + -1;
                        if(_loc6_ != 0)
                        {
                           continue;
                        }
                     }
                  }
               }
               else
               {
                  while(true)
                  {
                     _loc4_ = int(_loc7_ - _loc6_);
                     _loc8_ = li8(_loc4_ + 36);
                     _loc10_ = int(_loc8_ >>> 4);
                     _loc9_ = _loc8_ << 4;
                     _loc9_ = _loc9_ | _loc10_;
                     _loc9_ = _loc9_ & 254;
                     _loc9_ = int(_loc9_ >>> 1);
                     _loc8_ = _loc8_ << 3;
                     _loc8_ = _loc8_ & 1920;
                     _loc8_ = _loc9_ | _loc8_;
                     _loc9_ = _loc8_ ^ -83;
                     _loc8_ = _loc9_ << 4;
                     _loc9_ = _loc9_ & 240;
                     _loc9_ = int(_loc9_ >>> 4);
                     _loc8_ = _loc8_ | _loc9_;
                     _loc9_ = int(_loc8_ + -7);
                     _loc8_ = _loc9_ << 1;
                     _loc9_ = _loc9_ & 128;
                     _loc9_ = int(_loc9_ >>> 7);
                     _loc8_ = _loc8_ | _loc9_;
                     si8(_loc8_,_loc4_ + 36);
                     _loc6_ = _loc6_ + -1;
                     if(_loc6_ != 0)
                     {
                        continue;
                     }
                  }
               }
            }
            else if(_loc3_ != 11)
            {
               if(_loc3_ != 12)
               {
                  if(_loc3_ != 13)
                  {
                     §§goto(addr3454);
                  }
                  else
                  {
                     while(true)
                     {
                        _loc4_ = int(_loc7_ - _loc6_);
                        _loc9_ = li8(_loc4_ + 36);
                        _loc8_ = _loc9_ << 2;
                        _loc9_ = int(_loc9_ >>> 6);
                        _loc8_ = _loc9_ | _loc8_;
                        _loc9_ = int(_loc8_ + 105);
                        _loc8_ = _loc9_ << 7;
                        _loc9_ = _loc9_ & 254;
                        _loc9_ = int(_loc9_ >>> 1);
                        _loc8_ = _loc8_ | _loc9_;
                        _loc8_ = _loc8_ ^ -38;
                        _loc8_ = int(_loc8_ + 49);
                        _loc9_ = _loc8_ << 7;
                        _loc10_ = _loc8_ & 240;
                        _loc10_ = int(_loc10_ >>> 1);
                        _loc9_ = _loc9_ | _loc10_;
                        _loc9_ = _loc9_ & 248;
                        _loc9_ = int(_loc9_ >>> 3);
                        _loc8_ = _loc8_ << 4;
                        _loc8_ = _loc8_ & 224;
                        _loc8_ = _loc9_ | _loc8_;
                        si8(_loc8_,_loc4_ + 36);
                        _loc6_ = _loc6_ + -1;
                        if(_loc6_ != 0)
                        {
                           continue;
                        }
                     }
                  }
               }
               else
               {
                  while(true)
                  {
                     _loc4_ = int(_loc7_ - _loc6_);
                     _loc9_ = li8(_loc4_ + 36);
                     _loc8_ = int(_loc9_ >>> 1);
                     _loc9_ = _loc9_ << 7;
                     _loc8_ = _loc9_ | _loc8_;
                     _loc8_ = _loc8_ ^ -31;
                     _loc8_ = int(_loc8_ + 25);
                     _loc8_ = _loc8_ ^ -107;
                     _loc9_ = _loc8_ << 1;
                     _loc8_ = _loc8_ & 255;
                     _loc10_ = int(_loc8_ >>> 7);
                     _loc9_ = _loc10_ | _loc9_;
                     _loc9_ = _loc9_ << 3;
                     _loc8_ = int(_loc8_ >>> 4);
                     _loc8_ = _loc8_ & 7;
                     _loc8_ = _loc9_ | _loc8_;
                     si8(_loc8_,_loc4_ + 36);
                     _loc6_ = _loc6_ + -1;
                     if(_loc6_ != 0)
                     {
                        continue;
                     }
                  }
               }
            }
            else
            {
               while(true)
               {
                  _loc4_ = int(_loc7_ - _loc6_);
                  _loc8_ = li8(_loc4_ + 36);
                  _loc9_ = _loc8_ ^ -7;
                  _loc8_ = _loc9_ << 6;
                  _loc9_ = _loc9_ & 252;
                  _loc9_ = int(_loc9_ >>> 2);
                  _loc8_ = _loc9_ | _loc8_;
                  _loc9_ = int(_loc8_ + 96);
                  _loc8_ = _loc9_ << 6;
                  _loc9_ = _loc9_ & 252;
                  _loc9_ = int(_loc9_ >>> 2);
                  _loc8_ = _loc8_ | _loc9_;
                  _loc9_ = int(_loc8_ + -127);
                  _loc8_ = _loc9_ << 4;
                  _loc9_ = _loc9_ & 240;
                  _loc9_ = int(_loc9_ >>> 4);
                  _loc8_ = _loc8_ | _loc9_;
                  si8(_loc8_,_loc4_ + 36);
                  _loc6_ = _loc6_ + -1;
                  if(_loc6_ != 0)
                  {
                     continue;
                  }
               }
            }
         }
         else if(_loc5_ <= 15)
         {
            if(_loc3_ != 14)
            {
               if(_loc3_ != 15)
               {
                  §§goto(addr3454);
               }
               else
               {
                  while(true)
                  {
                     _loc4_ = int(_loc7_ - _loc6_);
                     _loc8_ = li8(_loc4_ + 36);
                     _loc8_ = int(_loc8_ + -64);
                     _loc9_ = _loc8_ ^ -119;
                     _loc8_ = _loc9_ << 6;
                     _loc9_ = _loc9_ & 252;
                     _loc9_ = int(_loc9_ >>> 2);
                     _loc8_ = _loc9_ | _loc8_;
                     si8(_loc8_,_loc4_ + 36);
                     _loc6_ = _loc6_ + -1;
                     if(_loc6_ != 0)
                     {
                        continue;
                     }
                  }
               }
            }
            else
            {
               while(true)
               {
                  _loc4_ = int(_loc7_ - _loc6_);
                  _loc9_ = li8(_loc4_ + 36);
                  _loc8_ = int(_loc9_ >>> 5);
                  _loc9_ = _loc9_ << 3;
                  _loc8_ = _loc9_ | _loc8_;
                  _loc9_ = int(_loc8_ + 34);
                  _loc8_ = _loc9_ << 2;
                  _loc9_ = _loc9_ & 192;
                  _loc9_ = int(_loc9_ >>> 6);
                  _loc8_ = _loc9_ | _loc8_;
                  _loc8_ = _loc8_ ^ 63;
                  _loc9_ = int(_loc8_ + 127);
                  _loc8_ = _loc9_ << 7;
                  _loc9_ = _loc9_ & 254;
                  _loc9_ = int(_loc9_ >>> 1);
                  _loc8_ = _loc9_ | _loc8_;
                  _loc8_ = int(_loc8_ + 7);
                  si8(_loc8_,_loc4_ + 36);
                  _loc6_ = _loc6_ + -1;
                  if(_loc6_ != 0)
                  {
                     continue;
                  }
               }
            }
         }
         else if(_loc3_ != 16)
         {
            if(_loc3_ != 17)
            {
               if(_loc3_ != 18)
               {
                  §§goto(addr3454);
               }
               else
               {
                  while(true)
                  {
                     _loc4_ = int(_loc7_ - _loc6_);
                     _loc8_ = li8(_loc4_ + 36);
                     _loc9_ = _loc8_ << 2;
                     _loc10_ = int(_loc8_ >>> 6);
                     _loc9_ = _loc10_ | _loc9_;
                     _loc9_ = _loc9_ << 5;
                     _loc8_ = int(_loc8_ >>> 1);
                     _loc8_ = _loc8_ & 31;
                     _loc8_ = _loc9_ | _loc8_;
                     _loc9_ = int(_loc8_ + -63);
                     _loc8_ = _loc9_ << 5;
                     _loc9_ = _loc9_ & 248;
                     _loc9_ = int(_loc9_ >>> 3);
                     _loc8_ = _loc9_ | _loc8_;
                     _loc8_ = _loc8_ ^ 54;
                     _loc9_ = int(_loc8_ + 54);
                     _loc8_ = _loc9_ << 1;
                     _loc9_ = _loc9_ & 128;
                     _loc9_ = int(_loc9_ >>> 7);
                     _loc8_ = _loc8_ | _loc9_;
                     si8(_loc8_,_loc4_ + 36);
                     _loc6_ = _loc6_ + -1;
                     if(_loc6_ != 0)
                     {
                        continue;
                     }
                  }
               }
            }
            else
            {
               while(true)
               {
                  _loc4_ = int(_loc7_ - _loc6_);
                  _loc8_ = li8(_loc4_ + 36);
                  _loc9_ = int(_loc8_ + -26);
                  _loc8_ = _loc9_ << 2;
                  _loc9_ = _loc9_ & 192;
                  _loc9_ = int(_loc9_ >>> 6);
                  _loc8_ = _loc8_ | _loc9_;
                  _loc9_ = int(_loc8_ + 49);
                  _loc8_ = _loc9_ << 7;
                  _loc9_ = _loc9_ & 254;
                  _loc9_ = int(_loc9_ >>> 1);
                  _loc8_ = _loc9_ | _loc8_;
                  _loc8_ = _loc8_ ^ 219;
                  si8(_loc8_,_loc4_ + 36);
                  _loc6_ = _loc6_ + -1;
                  if(_loc6_ != 0)
                  {
                     continue;
                  }
               }
            }
         }
         else
         {
            while(true)
            {
               _loc4_ = int(_loc7_ - _loc6_);
               _loc9_ = li8(_loc4_ + 36);
               _loc8_ = _loc9_ << 1;
               _loc9_ = int(_loc9_ >>> 7);
               _loc8_ = _loc9_ | _loc8_;
               _loc8_ = _loc8_ ^ -107;
               _loc8_ = int(_loc8_ + 87);
               _loc9_ = _loc8_ << 3;
               _loc8_ = _loc8_ & 255;
               _loc10_ = int(_loc8_ >>> 5);
               _loc9_ = _loc10_ | _loc9_;
               _loc9_ = _loc9_ << 2;
               _loc8_ = int(_loc8_ >>> 3);
               _loc8_ = _loc8_ & 3;
               _loc8_ = _loc9_ | _loc8_;
               _loc8_ = int(_loc8_ + 75);
               si8(_loc8_,_loc4_ + 36);
               _loc6_ = _loc6_ + -1;
               if(_loc6_ != 0)
               {
                  continue;
               }
            }
         }
      }
      else if(_loc5_ <= 28)
      {
         if(_loc5_ <= 23)
         {
            if(_loc5_ <= 20)
            {
               if(_loc3_ != 19)
               {
                  if(_loc3_ != 20)
                  {
                     §§goto(addr3454);
                  }
                  else
                  {
                     while(true)
                     {
                        _loc4_ = int(_loc7_ - _loc6_);
                        _loc9_ = li8(_loc4_ + 36);
                        _loc8_ = _loc9_ << 6;
                        _loc9_ = int(_loc9_ >>> 2);
                        _loc8_ = _loc9_ | _loc8_;
                        _loc9_ = int(_loc8_ + 79);
                        _loc8_ = _loc9_ << 7;
                        _loc9_ = _loc9_ & 254;
                        _loc9_ = int(_loc9_ >>> 1);
                        _loc8_ = _loc8_ | _loc9_;
                        _loc8_ = _loc8_ ^ 169;
                        _loc8_ = int(_loc8_ + 35);
                        _loc8_ = _loc8_ ^ 5;
                        _loc8_ = int(_loc8_ + -106);
                        si8(_loc8_,_loc4_ + 36);
                        _loc6_ = _loc6_ + -1;
                        if(_loc6_ != 0)
                        {
                           continue;
                        }
                     }
                  }
               }
               else
               {
                  while(true)
                  {
                     _loc4_ = int(_loc7_ - _loc6_);
                     _loc8_ = li8(_loc4_ + 36);
                     _loc9_ = int(_loc8_ + -38);
                     _loc8_ = _loc9_ << 6;
                     _loc9_ = _loc9_ & 252;
                     _loc9_ = int(_loc9_ >>> 2);
                     _loc8_ = _loc9_ | _loc8_;
                     _loc8_ = int(_loc8_ + 53);
                     _loc8_ = _loc8_ ^ -119;
                     _loc9_ = int(_loc8_ + -91);
                     _loc8_ = _loc9_ << 6;
                     _loc9_ = _loc9_ & 252;
                     _loc9_ = int(_loc9_ >>> 2);
                     _loc8_ = _loc8_ | _loc9_;
                     si8(_loc8_,_loc4_ + 36);
                     _loc6_ = _loc6_ + -1;
                     if(_loc6_ != 0)
                     {
                        continue;
                     }
                  }
               }
            }
            else if(_loc3_ != 21)
            {
               if(_loc3_ != 22)
               {
                  if(_loc3_ != 23)
                  {
                     §§goto(addr3454);
                  }
                  else
                  {
                     while(true)
                     {
                        _loc4_ = int(_loc7_ - _loc6_);
                        _loc8_ = li8(_loc4_ + 36);
                        _loc10_ = int(_loc8_ >>> 1);
                        _loc9_ = _loc8_ << 7;
                        _loc9_ = _loc9_ | _loc10_;
                        _loc9_ = _loc9_ & 240;
                        _loc9_ = int(_loc9_ >>> 4);
                        _loc8_ = _loc8_ << 3;
                        _loc8_ = _loc8_ & 2032;
                        _loc8_ = _loc9_ | _loc8_;
                        _loc8_ = int(_loc8_ + -44);
                        _loc9_ = _loc8_ ^ -21;
                        _loc8_ = _loc9_ << 6;
                        _loc9_ = _loc9_ & 252;
                        _loc9_ = int(_loc9_ >>> 2);
                        _loc8_ = _loc8_ | _loc9_;
                        si8(_loc8_,_loc4_ + 36);
                        _loc6_ = _loc6_ + -1;
                        if(_loc6_ != 0)
                        {
                           continue;
                        }
                     }
                  }
               }
               else
               {
                  while(true)
                  {
                     _loc4_ = int(_loc7_ - _loc6_);
                     _loc8_ = li8(_loc4_ + 36);
                     _loc8_ = int(_loc8_ + 91);
                     _loc9_ = _loc8_ << 3;
                     _loc8_ = _loc8_ & 255;
                     _loc10_ = int(_loc8_ >>> 5);
                     _loc9_ = _loc9_ | _loc10_;
                     _loc9_ = _loc9_ << 2;
                     _loc8_ = int(_loc8_ >>> 3);
                     _loc8_ = _loc8_ & 3;
                     _loc8_ = _loc9_ | _loc8_;
                     _loc9_ = _loc8_ ^ -74;
                     _loc8_ = _loc9_ << 2;
                     _loc9_ = _loc9_ & 192;
                     _loc9_ = int(_loc9_ >>> 6);
                     _loc8_ = _loc8_ | _loc9_;
                     _loc9_ = int(_loc8_ + -54);
                     _loc8_ = _loc9_ << 6;
                     _loc9_ = _loc9_ & 252;
                     _loc9_ = int(_loc9_ >>> 2);
                     _loc8_ = _loc9_ | _loc8_;
                     si8(_loc8_,_loc4_ + 36);
                     _loc6_ = _loc6_ + -1;
                     if(_loc6_ != 0)
                     {
                        continue;
                     }
                  }
               }
            }
            else
            {
               while(true)
               {
                  _loc4_ = int(_loc7_ - _loc6_);
                  _loc8_ = li8(_loc4_ + 36);
                  _loc9_ = int(_loc8_ + 14);
                  _loc10_ = _loc9_ << 7;
                  _loc8_ = _loc9_ & 255;
                  _loc11_ = _loc8_ >>> 1;
                  _loc10_ = _loc10_ | _loc11_;
                  _loc10_ = _loc10_ & 248;
                  _loc10_ = int(_loc10_ >>> 3);
                  _loc9_ = _loc9_ << 4;
                  _loc9_ = _loc9_ & 96;
                  _loc9_ = _loc10_ | _loc9_;
                  _loc9_ = _loc9_ << 1;
                  _loc8_ = int(_loc8_ >>> 3);
                  _loc8_ = _loc8_ & 1;
                  _loc8_ = _loc9_ | _loc8_;
                  _loc8_ = _loc8_ ^ -32;
                  _loc9_ = int(_loc8_ + -14);
                  _loc8_ = _loc9_ << 4;
                  _loc9_ = _loc9_ & 240;
                  _loc9_ = int(_loc9_ >>> 4);
                  _loc8_ = _loc8_ | _loc9_;
                  si8(_loc8_,_loc4_ + 36);
                  _loc6_ = _loc6_ + -1;
                  if(_loc6_ != 0)
                  {
                     continue;
                  }
               }
            }
         }
         else if(_loc5_ <= 25)
         {
            if(_loc3_ != 24)
            {
               if(_loc3_ != 25)
               {
                  §§goto(addr3454);
               }
               else
               {
                  while(true)
                  {
                     _loc4_ = int(_loc7_ - _loc6_);
                     _loc8_ = li8(_loc4_ + 36);
                     _loc9_ = int(_loc8_ + 5);
                     _loc8_ = _loc9_ << 7;
                     _loc9_ = _loc9_ & 254;
                     _loc9_ = int(_loc9_ >>> 1);
                     _loc8_ = _loc8_ | _loc9_;
                     _loc9_ = _loc8_ ^ 114;
                     _loc8_ = _loc9_ << 4;
                     _loc9_ = _loc9_ & 240;
                     _loc9_ = int(_loc9_ >>> 4);
                     _loc8_ = _loc9_ | _loc8_;
                     _loc8_ = int(_loc8_ + -6);
                     si8(_loc8_,_loc4_ + 36);
                     _loc6_ = _loc6_ + -1;
                     if(_loc6_ != 0)
                     {
                        continue;
                     }
                  }
               }
            }
            else
            {
               while(true)
               {
                  _loc4_ = int(_loc7_ - _loc6_);
                  _loc8_ = li8(_loc4_ + 36);
                  _loc10_ = _loc8_ << 6;
                  _loc9_ = int(_loc8_ >>> 2);
                  _loc9_ = _loc9_ | _loc10_;
                  _loc9_ = _loc9_ & 254;
                  _loc9_ = int(_loc9_ >>> 1);
                  _loc8_ = _loc8_ << 5;
                  _loc8_ = _loc8_ & 8064;
                  _loc8_ = _loc9_ | _loc8_;
                  _loc9_ = int(_loc8_ + -36);
                  _loc8_ = _loc9_ << 6;
                  _loc9_ = _loc9_ & 252;
                  _loc9_ = int(_loc9_ >>> 2);
                  _loc8_ = _loc8_ | _loc9_;
                  _loc8_ = _loc8_ ^ 63;
                  _loc8_ = int(_loc8_ + 14);
                  si8(_loc8_,_loc4_ + 36);
                  _loc6_ = _loc6_ + -1;
                  if(_loc6_ != 0)
                  {
                     continue;
                  }
               }
            }
         }
         else if(_loc3_ != 26)
         {
            if(_loc3_ != 27)
            {
               if(_loc3_ != 28)
               {
                  §§goto(addr3454);
               }
               else
               {
                  while(true)
                  {
                     _loc4_ = int(_loc7_ - _loc6_);
                     _loc9_ = li8(_loc4_ + 36);
                     _loc8_ = _loc9_ << 2;
                     _loc9_ = int(_loc9_ >>> 6);
                     _loc8_ = _loc9_ | _loc8_;
                     _loc8_ = _loc8_ ^ -40;
                     _loc9_ = int(_loc8_ + 97);
                     _loc8_ = _loc9_ << 2;
                     _loc9_ = _loc9_ & 192;
                     _loc9_ = int(_loc9_ >>> 6);
                     _loc8_ = _loc8_ | _loc9_;
                     _loc8_ = int(_loc8_ + 26);
                     si8(_loc8_,_loc4_ + 36);
                     _loc6_ = _loc6_ + -1;
                     if(_loc6_ != 0)
                     {
                        continue;
                     }
                  }
               }
            }
            else
            {
               while(true)
               {
                  _loc4_ = int(_loc7_ - _loc6_);
                  _loc8_ = li8(_loc4_ + 36);
                  _loc10_ = int(_loc8_ >>> 7);
                  _loc9_ = _loc8_ << 1;
                  _loc9_ = _loc9_ | _loc10_;
                  _loc9_ = _loc9_ << 6;
                  _loc8_ = int(_loc8_ >>> 1);
                  _loc8_ = _loc8_ & 63;
                  _loc8_ = _loc9_ | _loc8_;
                  _loc8_ = int(_loc8_ + -12);
                  _loc8_ = _loc8_ ^ 23;
                  _loc8_ = int(_loc8_ + 76);
                  _loc8_ = _loc8_ ^ 20;
                  _loc8_ = int(_loc8_ + -116);
                  si8(_loc8_,_loc4_ + 36);
                  _loc6_ = _loc6_ + -1;
                  if(_loc6_ != 0)
                  {
                     continue;
                  }
               }
            }
         }
         else
         {
            while(true)
            {
               _loc4_ = int(_loc7_ - _loc6_);
               _loc9_ = li8(_loc4_ + 36);
               _loc8_ = _loc9_ << 6;
               _loc9_ = int(_loc9_ >>> 2);
               _loc8_ = _loc9_ | _loc8_;
               _loc8_ = _loc8_ ^ 27;
               _loc9_ = int(_loc8_ + -8);
               _loc8_ = _loc9_ << 1;
               _loc9_ = _loc9_ & 128;
               _loc9_ = int(_loc9_ >>> 7);
               _loc8_ = _loc8_ | _loc9_;
               _loc8_ = int(_loc8_ + -84);
               si8(_loc8_,_loc4_ + 36);
               _loc6_ = _loc6_ + -1;
               if(_loc6_ != 0)
               {
                  continue;
               }
            }
         }
      }
      else if(_loc5_ <= 33)
      {
         if(_loc5_ <= 30)
         {
            if(_loc3_ != 29)
            {
               if(_loc3_ != 30)
               {
                  §§goto(addr3454);
               }
               else
               {
                  while(true)
                  {
                     _loc4_ = int(_loc7_ - _loc6_);
                     _loc8_ = li8(_loc4_ + 36);
                     _loc8_ = _loc8_ ^ 32;
                     _loc9_ = int(_loc8_ + -116);
                     _loc10_ = _loc9_ << 5;
                     _loc8_ = _loc9_ & 255;
                     _loc11_ = _loc8_ >>> 3;
                     _loc10_ = _loc11_ | _loc10_;
                     _loc10_ = _loc10_ & 248;
                     _loc10_ = int(_loc10_ >>> 3);
                     _loc9_ = _loc9_ << 2;
                     _loc9_ = _loc9_ & 32;
                     _loc9_ = _loc10_ | _loc9_;
                     _loc9_ = _loc9_ << 2;
                     _loc8_ = int(_loc8_ >>> 4);
                     _loc8_ = _loc8_ & 3;
                     _loc8_ = _loc9_ | _loc8_;
                     _loc8_ = int(_loc8_ + 49);
                     si8(_loc8_,_loc4_ + 36);
                     _loc6_ = _loc6_ + -1;
                     if(_loc6_ != 0)
                     {
                        continue;
                     }
                  }
               }
            }
            else
            {
               while(true)
               {
                  _loc4_ = int(_loc7_ - _loc6_);
                  _loc9_ = li8(_loc4_ + 36);
                  _loc8_ = int(_loc9_ >>> 3);
                  _loc9_ = _loc9_ << 5;
                  _loc8_ = _loc9_ | _loc8_;
                  _loc8_ = _loc8_ ^ 53;
                  _loc8_ = int(_loc8_ + 63);
                  si8(_loc8_,_loc4_ + 36);
                  _loc6_ = _loc6_ + -1;
                  if(_loc6_ != 0)
                  {
                     continue;
                  }
               }
            }
         }
         else if(_loc3_ != 31)
         {
            if(_loc3_ != 32)
            {
               if(_loc3_ != 33)
               {
                  §§goto(addr3454);
               }
               else
               {
                  while(true)
                  {
                     _loc4_ = int(_loc7_ - _loc6_);
                     _loc9_ = li8(_loc4_ + 36);
                     _loc8_ = _loc9_ << 7;
                     _loc9_ = int(_loc9_ >>> 1);
                     _loc8_ = _loc9_ | _loc8_;
                     _loc8_ = _loc8_ ^ 5;
                     _loc9_ = int(_loc8_ + -65);
                     _loc8_ = _loc9_ << 5;
                     _loc9_ = _loc9_ & 248;
                     _loc9_ = int(_loc9_ >>> 3);
                     _loc8_ = _loc8_ | _loc9_;
                     _loc8_ = int(_loc8_ + 49);
                     si8(_loc8_,_loc4_ + 36);
                     _loc6_ = _loc6_ + -1;
                     if(_loc6_ != 0)
                     {
                        continue;
                     }
                  }
               }
            }
            else
            {
               while(true)
               {
                  _loc4_ = int(_loc7_ - _loc6_);
                  _loc8_ = li8(_loc4_ + 36);
                  _loc8_ = int(_loc8_ + 56);
                  _loc9_ = _loc8_ << 1;
                  _loc8_ = _loc8_ & 255;
                  _loc10_ = int(_loc8_ >>> 7);
                  _loc9_ = _loc10_ | _loc9_;
                  _loc9_ = _loc9_ << 6;
                  _loc8_ = int(_loc8_ >>> 1);
                  _loc8_ = _loc8_ & 63;
                  _loc8_ = _loc9_ | _loc8_;
                  _loc8_ = int(_loc8_ + 18);
                  _loc8_ = _loc8_ ^ 68;
                  _loc8_ = int(_loc8_ + -48);
                  si8(_loc8_,_loc4_ + 36);
                  _loc6_ = _loc6_ + -1;
                  if(_loc6_ != 0)
                  {
                     continue;
                  }
               }
            }
         }
         else
         {
            while(true)
            {
               _loc4_ = int(_loc7_ - _loc6_);
               _loc8_ = li8(_loc4_ + 36);
               _loc8_ = _loc8_ ^ -63;
               _loc8_ = int(_loc8_ + -8);
               _loc9_ = _loc8_ << 1;
               _loc8_ = _loc8_ & 255;
               _loc10_ = int(_loc8_ >>> 7);
               _loc9_ = _loc9_ | _loc10_;
               _loc9_ = _loc9_ << 4;
               _loc8_ = int(_loc8_ >>> 3);
               _loc8_ = _loc8_ & 15;
               _loc8_ = _loc9_ | _loc8_;
               si8(_loc8_,_loc4_ + 36);
               _loc6_ = _loc6_ + -1;
               if(_loc6_ != 0)
               {
                  continue;
               }
            }
         }
      }
      else if(_loc5_ <= 35)
      {
         if(_loc3_ != 34)
         {
            if(_loc3_ != 35)
            {
               §§goto(addr3454);
            }
            else
            {
               while(true)
               {
                  _loc4_ = int(_loc7_ - _loc6_);
                  _loc8_ = li8(_loc4_ + 36);
                  _loc9_ = _loc8_ ^ -37;
                  _loc8_ = _loc9_ << 2;
                  _loc9_ = _loc9_ & 192;
                  _loc9_ = int(_loc9_ >>> 6);
                  _loc8_ = _loc8_ | _loc9_;
                  _loc8_ = int(_loc8_ + -110);
                  _loc9_ = _loc8_ ^ -55;
                  _loc8_ = _loc9_ << 4;
                  _loc9_ = _loc9_ & 240;
                  _loc9_ = int(_loc9_ >>> 4);
                  _loc8_ = _loc9_ | _loc8_;
                  _loc8_ = int(_loc8_ + -12);
                  _loc8_ = _loc8_ ^ 32;
                  si8(_loc8_,_loc4_ + 36);
                  _loc6_ = _loc6_ + -1;
                  if(_loc6_ != 0)
                  {
                     continue;
                  }
               }
            }
         }
         else
         {
            while(true)
            {
               _loc4_ = int(_loc7_ - _loc6_);
               _loc8_ = li8(_loc4_ + 36);
               _loc9_ = int(_loc8_ + 22);
               _loc8_ = _loc9_ << 7;
               _loc9_ = _loc9_ & 254;
               _loc9_ = int(_loc9_ >>> 1);
               _loc8_ = _loc9_ | _loc8_;
               _loc8_ = int(_loc8_ + 106);
               _loc9_ = _loc8_ << 7;
               _loc10_ = _loc8_ & 192;
               _loc10_ = int(_loc10_ >>> 1);
               _loc9_ = _loc9_ | _loc10_;
               _loc9_ = _loc9_ & 224;
               _loc9_ = int(_loc9_ >>> 5);
               _loc8_ = _loc8_ << 2;
               _loc8_ = _loc8_ & 248;
               _loc8_ = _loc9_ | _loc8_;
               _loc8_ = _loc8_ ^ 81;
               si8(_loc8_,_loc4_ + 36);
               _loc6_ = _loc6_ + -1;
               if(_loc6_ != 0)
               {
                  continue;
               }
            }
         }
      }
      else if(_loc3_ != 36)
      {
         if(_loc3_ != 37)
         {
            if(_loc3_ != 38)
            {
               §§goto(addr3454);
            }
            else
            {
               while(true)
               {
                  _loc4_ = int(_loc7_ - _loc6_);
                  _loc8_ = li8(_loc4_ + 36);
                  _loc8_ = _loc8_ ^ -71;
                  _loc8_ = int(_loc8_ + 21);
                  _loc9_ = _loc8_ ^ -53;
                  _loc8_ = _loc9_ << 7;
                  _loc9_ = _loc9_ & 254;
                  _loc9_ = int(_loc9_ >>> 1);
                  _loc8_ = _loc9_ | _loc8_;
                  si8(_loc8_,_loc4_ + 36);
                  _loc6_ = _loc6_ + -1;
                  if(_loc6_ != 0)
                  {
                     continue;
                  }
               }
            }
         }
         else
         {
            while(true)
            {
               _loc4_ = int(_loc7_ - _loc6_);
               _loc9_ = li8(_loc4_ + 36);
               _loc8_ = _loc9_ << 2;
               _loc9_ = int(_loc9_ >>> 6);
               _loc8_ = _loc9_ | _loc8_;
               _loc8_ = int(_loc8_ + 98);
               _loc9_ = _loc8_ ^ -22;
               _loc8_ = _loc9_ << 4;
               _loc9_ = _loc9_ & 240;
               _loc9_ = int(_loc9_ >>> 4);
               _loc8_ = _loc8_ | _loc9_;
               _loc8_ = _loc8_ ^ 56;
               _loc8_ = int(_loc8_ + 63);
               si8(_loc8_,_loc4_ + 36);
               _loc6_ = _loc6_ + -1;
               if(_loc6_ != 0)
               {
                  continue;
               }
            }
         }
      }
      else
      {
         while(true)
         {
            _loc4_ = int(_loc7_ - _loc6_);
            _loc9_ = li8(_loc4_ + 36);
            _loc8_ = int(_loc9_ >>> 7);
            _loc9_ = _loc9_ << 1;
            _loc8_ = _loc9_ | _loc8_;
            _loc8_ = int(_loc8_ + -69);
            _loc8_ = _loc8_ ^ 123;
            _loc8_ = int(_loc8_ + -12);
            _loc8_ = _loc8_ ^ 2;
            _loc9_ = int(_loc8_ + 56);
            _loc8_ = _loc9_ << 4;
            _loc9_ = _loc9_ & 240;
            _loc9_ = int(_loc9_ >>> 4);
            _loc8_ = _loc9_ | _loc8_;
            si8(_loc8_,_loc4_ + 36);
            _loc6_ = _loc6_ + -1;
            if(_loc6_ != 0)
            {
               continue;
            }
            break;
         }
      }
      _loc2_ = _loc1_;
      ESP = _loc2_;
   }
}
