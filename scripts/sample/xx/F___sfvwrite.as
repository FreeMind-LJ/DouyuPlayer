package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.si32;
   import sample.xx_vwrite_2E_o_3A_BD63D30C_2D_ECDF_2D_4A50_2D_B7C0_2D_DD2C5EC9D682.*;
   import avm2.intrinsics.memory.si16;
   
   public function F___sfvwrite() : void
   {
      var _loc4_:* = 0;
      var _loc14_:* = 0;
      var _loc3_:* = 0;
      var _loc10_:* = 0;
      var _loc15_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc16_:* = 0;
      var _loc13_:* = 0;
      var _loc11_:* = 0;
      var _loc12_:* = 0;
      var _loc1_:int = 0;
      var _loc8_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc3_ = li32(_loc4_ + 4);
      _loc16_ = li32(_loc3_ + 8);
      _loc15_ = 0;
      if(_loc16_ != 0)
      {
         _loc14_ = li32(_loc4_);
         _loc15_ = li16(_loc14_ + 12);
         _loc16_ = _loc15_ & 8;
         if(_loc16_ != 0)
         {
            _loc16_ = li32(_loc14_ + 16);
            if(_loc16_ == 0)
            {
               _loc16_ = _loc15_ & 512;
               if(_loc16_ == 0)
               {
               }
            }
            addr117:
            _loc16_ = _loc15_ & 2;
            _loc13_ = li32(_loc3_);
            _loc12_ = li32(_loc13_ + 4);
            _loc11_ = li32(_loc13_);
            if(_loc16_ != 0)
            {
               _loc13_ = int(_loc13_ + 12);
               while(true)
               {
                  while(_loc12_ != 0)
                  {
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc11_,_loc2_ + 4);
                     si32(_loc14_,_loc2_);
                     _loc15_ = 1024;
                     if(uint(_loc12_) <= uint(_loc15_))
                     {
                        _loc15_ = _loc12_;
                     }
                     si32(_loc15_,_loc2_ + 8);
                     ESP = _loc2_;
                     F__swrite();
                     _loc2_ = int(_loc2_ + 16);
                     _loc10_ = int(eax);
                     if(_loc10_ >= 1)
                     {
                        _loc16_ = li32(_loc3_ + 8);
                        var _loc9_:int = _loc16_ - _loc10_;
                        si32(_loc9_,_loc3_ + 8);
                        _loc12_ = int(_loc12_ - _loc10_);
                        _loc11_ = int(_loc11_ + _loc10_);
                        _loc15_ = 0;
                        if(_loc16_ != _loc10_)
                        {
                           continue;
                        }
                     }
                     else
                     {
                        addr1073:
                        _loc16_ = li16(_loc14_ + 12);
                        _loc16_ = _loc16_ | 64;
                        si16(_loc16_,_loc14_ + 12);
                        _loc15_ = -1;
                     }
                  }
                  _loc12_ = li32(_loc13_);
                  _loc11_ = li32(_loc13_ - 4);
                  _loc13_ = int(_loc13_ + 8);
               }
            }
            else
            {
               _loc16_ = _loc15_ & 65535;
               _loc16_ = _loc16_ & 1;
               if(_loc16_ == 0)
               {
                  _loc13_ = int(_loc13_ + 12);
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc12_ != 0)
                        {
                           _loc15_ = li16(_loc14_ + 12);
                           _loc16_ = _loc15_ & 16896;
                           if(_loc16_ == 16896)
                           {
                              _loc16_ = li32(_loc14_ + 8);
                              if(uint(_loc16_) < uint(_loc12_))
                              {
                                 _loc16_ = li32(_loc14_ + 16);
                                 var _loc5_:int = _loc12_ + 128;
                                 si32(_loc5_,_loc14_ + 8);
                                 _loc10_ = int(li32(_loc14_) - _loc16_);
                                 _loc9_ = _loc10_ + _loc12_;
                                 _loc5_ = _loc9_ + 128;
                                 si32(_loc5_,_loc14_ + 20);
                                 _loc2_ = int(_loc2_ - 16);
                                 si32(int(_loc9_ + 129),_loc2_ + 4);
                                 si32(_loc16_,_loc2_);
                                 ESP = _loc2_;
                                 F_reallocf();
                                 _loc2_ = int(_loc2_ + 16);
                                 _loc15_ = int(eax);
                                 si32(_loc15_,_loc14_ + 16);
                                 if(_loc15_ != 0)
                                 {
                                    _loc16_ = int(_loc15_ + _loc10_);
                                    si32(_loc16_,_loc14_);
                                    _loc15_ = li16(_loc14_ + 12);
                                 }
                                 §§goto(addr1073);
                              }
                           }
                           _loc10_ = li32(_loc14_ + 8);
                           _loc16_ = _loc15_ & 512;
                           if(_loc16_ != 0)
                           {
                              _loc15_ = _loc12_;
                              if(uint(_loc10_) <= uint(_loc12_))
                              {
                                 _loc15_ = _loc10_;
                              }
                              _loc10_ = _loc12_;
                              if(_loc15_ >= 1)
                              {
                                 _loc2_ = int(_loc2_ - 16);
                                 si32(_loc11_,_loc2_ + 4);
                                 si32(li32(_loc14_),_loc2_);
                                 si32(_loc15_,_loc2_ + 8);
                                 ESP = _loc2_;
                                 Fmemcpy();
                                 _loc2_ = int(_loc2_ + 16);
                                 _loc16_ = li32(_loc14_ + 8);
                                 _loc16_ = int(_loc16_ - _loc15_);
                                 si32(_loc16_,_loc14_ + 8);
                                 _loc16_ = li32(_loc14_);
                                 _loc16_ = int(_loc16_ + _loc15_);
                                 si32(_loc16_,_loc14_);
                                 _loc10_ = _loc12_;
                              }
                           }
                           else
                           {
                              _loc15_ = li32(_loc14_);
                              if(uint(_loc15_) > uint(li32(_loc14_ + 16)))
                              {
                                 if(uint(_loc10_) < uint(_loc12_))
                                 {
                                    _loc2_ = int(_loc2_ - 16);
                                    si32(_loc11_,_loc2_ + 4);
                                    si32(_loc15_,_loc2_);
                                    si32(_loc10_,_loc2_ + 8);
                                    ESP = _loc2_;
                                    Fmemcpy();
                                    _loc2_ = int(_loc2_ + 16);
                                    _loc16_ = li32(_loc14_);
                                    _loc16_ = int(_loc16_ + _loc10_);
                                    si32(_loc16_,_loc14_);
                                    _loc2_ = int(_loc2_ - 16);
                                    si32(_loc14_,_loc2_);
                                    ESP = _loc2_;
                                    F___fflush();
                                    _loc2_ = int(_loc2_ + 16);
                                    _loc16_ = int(eax);
                                    if(_loc16_ != 0)
                                    {
                                       §§goto(addr1073);
                                    }
                                 }
                              }
                              _loc10_ = li32(_loc14_ + 20);
                              if(uint(_loc10_) <= uint(_loc12_))
                              {
                                 _loc2_ = int(_loc2_ - 16);
                                 si32(_loc10_,_loc2_ + 8);
                                 si32(_loc11_,_loc2_ + 4);
                                 si32(_loc14_,_loc2_);
                                 ESP = _loc2_;
                                 F__swrite();
                                 _loc2_ = int(_loc2_ + 16);
                                 _loc10_ = int(eax);
                                 if(_loc10_ < 1)
                                 {
                                    §§goto(addr1073);
                                 }
                              }
                              else
                              {
                                 _loc2_ = int(_loc2_ - 16);
                                 si32(_loc11_,_loc2_ + 4);
                                 si32(_loc15_,_loc2_);
                                 si32(_loc12_,_loc2_ + 8);
                                 ESP = _loc2_;
                                 Fmemcpy();
                                 _loc2_ = int(_loc2_ + 16);
                                 _loc16_ = li32(_loc14_ + 8);
                                 _loc16_ = int(_loc16_ - _loc12_);
                                 si32(_loc16_,_loc14_ + 8);
                                 _loc16_ = li32(_loc14_);
                                 _loc16_ = int(_loc16_ + _loc12_);
                                 si32(_loc16_,_loc14_);
                                 _loc10_ = _loc12_;
                              }
                           }
                           _loc16_ = li32(_loc3_ + 8);
                           _loc9_ = _loc16_ - _loc10_;
                           si32(_loc9_,_loc3_ + 8);
                           _loc12_ = int(_loc12_ - _loc10_);
                           _loc11_ = int(_loc11_ + _loc10_);
                           _loc15_ = 0;
                           if(_loc16_ != _loc10_)
                           {
                              continue;
                           }
                           break;
                        }
                        _loc12_ = li32(_loc13_);
                        _loc11_ = li32(_loc13_ - 4);
                        _loc13_ = int(_loc13_ + 8);
                        continue loop2;
                     }
                  }
               }
               else
               {
                  _loc13_ = int(_loc13_ + 12);
                  _loc1_ = 0;
                  loop0:
                  while(true)
                  {
                     _loc10_ = 0;
                     while(true)
                     {
                        if(_loc12_ != 0)
                        {
                           if(_loc10_ == 0)
                           {
                              _loc2_ = int(_loc2_ - 16);
                              si32(_loc12_,_loc2_ + 8);
                              si32(10,_loc2_ + 4);
                              si32(_loc11_,_loc2_);
                              ESP = _loc2_;
                              F_memchr();
                              _loc2_ = int(_loc2_ + 16);
                              _loc15_ = int(eax);
                              if(_loc15_ != 0)
                              {
                                 _loc16_ = int(_loc15_ + 1);
                                 _loc1_ = _loc16_ - _loc11_;
                                 _loc10_ = 1;
                              }
                              else
                              {
                                 _loc1_ = _loc12_ + 1;
                                 _loc10_ = 1;
                              }
                           }
                           _loc6_ = _loc1_;
                           if(uint(_loc1_) > uint(_loc12_))
                           {
                              _loc6_ = _loc12_;
                           }
                           _loc7_ = li32(_loc14_ + 20);
                           _loc15_ = li32(_loc14_);
                           _loc16_ = li32(_loc14_ + 16);
                           if(uint(_loc15_) > uint(_loc16_))
                           {
                              _loc8_ = int(_loc7_ + li32(_loc14_ + 8));
                              if(_loc6_ > _loc8_)
                              {
                                 _loc2_ = int(_loc2_ - 16);
                                 si32(_loc11_,_loc2_ + 4);
                                 si32(_loc15_,_loc2_);
                                 si32(_loc8_,_loc2_ + 8);
                                 ESP = _loc2_;
                                 Fmemcpy();
                                 _loc2_ = int(_loc2_ + 16);
                                 _loc16_ = li32(_loc14_);
                                 _loc16_ = int(_loc16_ + _loc8_);
                                 si32(_loc16_,_loc14_);
                                 _loc2_ = int(_loc2_ - 16);
                                 si32(_loc14_,_loc2_);
                                 ESP = _loc2_;
                                 F___fflush();
                                 _loc2_ = int(_loc2_ + 16);
                                 _loc16_ = int(eax);
                                 if(_loc16_ != 0)
                                 {
                                    break;
                                 }
                              }
                              addr1004:
                              if(_loc1_ == _loc8_)
                              {
                                 _loc2_ = int(_loc2_ - 16);
                                 si32(_loc14_,_loc2_);
                                 ESP = _loc2_;
                                 F___fflush();
                                 _loc10_ = 0;
                                 _loc2_ = int(_loc2_ + 16);
                                 _loc16_ = int(eax);
                                 if(_loc16_ != 0)
                                 {
                                    break;
                                 }
                              }
                              _loc1_ = _loc1_ - _loc8_;
                              _loc16_ = li32(_loc3_ + 8);
                              _loc9_ = _loc16_ - _loc8_;
                              si32(_loc9_,_loc3_ + 8);
                              _loc12_ = int(_loc12_ - _loc8_);
                              _loc11_ = int(_loc11_ + _loc8_);
                              _loc15_ = 0;
                              if(_loc16_ != _loc8_)
                              {
                                 continue;
                              }
                           }
                           if(_loc7_ <= _loc6_)
                           {
                              _loc2_ = int(_loc2_ - 16);
                              si32(_loc7_,_loc2_ + 8);
                              si32(_loc11_,_loc2_ + 4);
                              si32(_loc14_,_loc2_);
                              ESP = _loc2_;
                              F__swrite();
                              _loc2_ = int(_loc2_ + 16);
                              _loc8_ = int(eax);
                              if(_loc8_ >= 1)
                              {
                              }
                              break;
                           }
                           _loc2_ = int(_loc2_ - 16);
                           si32(_loc11_,_loc2_ + 4);
                           si32(_loc15_,_loc2_);
                           si32(_loc6_,_loc2_ + 8);
                           ESP = _loc2_;
                           Fmemcpy();
                           _loc2_ = int(_loc2_ + 16);
                           _loc16_ = li32(_loc14_ + 8);
                           _loc16_ = int(_loc16_ - _loc6_);
                           si32(_loc16_,_loc14_ + 8);
                           _loc16_ = li32(_loc14_);
                           _loc16_ = int(_loc16_ + _loc6_);
                           si32(_loc16_,_loc14_);
                           _loc8_ = _loc6_;
                           §§goto(addr1004);
                        }
                        else
                        {
                           _loc12_ = li32(_loc13_);
                           _loc11_ = li32(_loc13_ - 4);
                           _loc13_ = int(_loc13_ + 8);
                           continue loop0;
                        }
                     }
                     §§goto(addr1073);
                  }
               }
            }
         }
         _loc2_ = int(_loc2_ - 16);
         si32(_loc14_,_loc2_);
         ESP = _loc2_;
         F___swsetup();
         _loc15_ = -1;
         _loc2_ = int(_loc2_ + 16);
         _loc16_ = int(eax);
         if(_loc16_ == 0)
         {
            _loc15_ = li16(_loc14_ + 12);
            §§goto(addr117);
         }
      }
      eax = _loc15_;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
