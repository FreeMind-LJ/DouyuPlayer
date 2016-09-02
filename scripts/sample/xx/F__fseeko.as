package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import sample.xx_seek_2E_o_3A_F8D70C30_2D_767E_2D_41B8_2D_95EC_2D_0374C361DFF0.*;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.sxi16;
   import avm2.intrinsics.memory.si16;
   
   public function F__fseeko() : void
   {
      var _loc10_:* = 0;
      var _loc6_:* = 0;
      var _loc18_:* = 0;
      var _loc19_:* = 0;
      var _loc17_:* = 0;
      var _loc22_:* = 0;
      var _loc16_:* = 0;
      var _loc1_:* = 0;
      var _loc15_:* = 0;
      var _loc20_:* = 0;
      var _loc4_:* = 0;
      var _loc11_:* = 0;
      var _loc13_:* = 0;
      var _loc3_:* = 0;
      var _loc9_:* = 0;
      var _loc8_:* = 0;
      var _loc14_:int = 0;
      var _loc7_:* = 0;
      var _loc5_:* = int(ESP);
      _loc10_ = _loc5_;
      _loc5_ = int(_loc5_ - 112);
      _loc6_ = li32(_loc10_);
      _loc22_ = li32(_loc6_ + 40);
      if(_loc22_ == 0)
      {
         ESP = _loc5_;
         F___error();
         si32(29,int(eax));
         _loc20_ = -1;
      }
      else
      {
         _loc19_ = li32(_loc10_ + 8);
         _loc18_ = li32(_loc10_ + 4);
         _loc17_ = li32(_loc10_ + 16);
         _loc16_ = li32(_loc10_ + 12);
         if(_loc16_ != 0)
         {
            if(_loc16_ != 2)
            {
               if(_loc16_ == 1)
               {
                  _loc5_ = int(_loc5_ - 16);
                  _loc15_ = int(_loc10_ - 8);
                  si32(_loc15_,_loc5_ + 4);
                  si32(_loc6_,_loc5_);
                  ESP = _loc5_;
                  F__ftello();
                  _loc20_ = -1;
                  _loc5_ = int(_loc5_ + 16);
                  var _loc21_:* = int(eax);
                  if(_loc21_ == 0)
                  {
                     _loc21_ = _loc15_ | 4;
                     _loc1_ = li32(_loc21_);
                     if(_loc1_ <= -1)
                     {
                        ESP = _loc5_;
                        F___error();
                        si32(29,int(eax));
                        _loc20_ = -1;
                     }
                     else
                     {
                        _loc16_ = li32(_loc10_ - 8);
                        _loc20_ = 1;
                        _loc15_ = _loc20_;
                        if(_loc18_ != 0)
                        {
                           _loc15_ = 0;
                        }
                        if(_loc19_ >= 0)
                        {
                           _loc20_ = 0;
                        }
                        if(_loc19_ != 0)
                        {
                           _loc15_ = _loc20_;
                        }
                        if(_loc15_ == 0)
                        {
                           _loc20_ = 1;
                           _loc11_ = _loc20_;
                           if((uint(_loc18_ ^ -1)) < uint(_loc16_))
                           {
                              _loc11_ = 0;
                           }
                           _loc15_ = int(2147483647 - _loc19_);
                           if(_loc15_ < _loc1_)
                           {
                              _loc20_ = 0;
                           }
                           if(_loc15_ != _loc1_)
                           {
                              _loc11_ = _loc20_;
                           }
                           if(_loc11_ == 0)
                           {
                              ESP = _loc5_;
                              F___error();
                              si32(84,int(eax));
                              _loc20_ = -1;
                           }
                        }
                        _loc15_ = int(_loc16_ + _loc18_);
                        _loc11_ = 1;
                        _loc20_ = _loc11_;
                        if(uint(_loc15_) >= uint(_loc16_))
                        {
                           _loc20_ = 0;
                        }
                        if(uint(_loc15_) >= uint(_loc18_))
                        {
                           _loc11_ = _loc20_;
                        }
                        _loc21_ = int(_loc1_ + _loc19_);
                        _loc19_ = int(_loc21_ + _loc11_);
                        if(_loc19_ <= -1)
                        {
                           ESP = _loc5_;
                           F___error();
                           si32(22,int(eax));
                           _loc20_ = -1;
                        }
                        else
                        {
                           _loc1_ = 1;
                           _loc16_ = 0;
                           if(_loc17_ != 0)
                           {
                              _loc18_ = 1;
                              _loc20_ = -1;
                              _loc11_ = _loc18_;
                              if(_loc15_ <= _loc20_)
                              {
                                 _loc11_ = 0;
                              }
                              if(_loc19_ >= 0)
                              {
                                 _loc18_ = 0;
                              }
                              if(_loc19_ != 0)
                              {
                                 _loc11_ = _loc18_;
                              }
                              if(_loc11_ == 0)
                              {
                                 ESP = _loc5_;
                                 F___error();
                                 si32(84,int(eax));
                              }
                           }
                        }
                     }
                  }
               }
               else
               {
                  ESP = _loc5_;
                  F___error();
                  si32(22,int(eax));
                  _loc20_ = -1;
               }
            }
            addr413:
            _loc21_ = li32(_loc6_ + 16);
            if(_loc21_ == 0)
            {
               _loc5_ = int(_loc5_ - 16);
               si32(_loc6_,_loc5_);
               ESP = _loc5_;
               F___smakebuf();
               _loc5_ = int(_loc5_ + 16);
            }
            _loc18_ = li16(_loc6_ + 12);
            _loc21_ = _loc18_ & 2074;
            if(_loc21_ == 0)
            {
               _loc21_ = _loc18_ & 1024;
               if(_loc21_ == 0)
               {
                  if(_loc22_ == ___sseek)
                  {
                     _loc22_ = si16(li16(_loc6_ + 14));
                     if(_loc22_ >= 0)
                     {
                        _loc5_ = int(_loc5_ - 16);
                        _loc21_ = int(_loc10_ - 104);
                        si32(_loc21_,_loc5_ + 4);
                        si32(_loc22_,_loc5_);
                        ESP = _loc5_;
                        F__fstat();
                        _loc5_ = int(_loc5_ + 16);
                        _loc21_ = int(eax);
                        if(_loc21_ == 0)
                        {
                           _loc21_ = li16(_loc10_ - 96);
                           _loc21_ = _loc21_ & 61440;
                           if(_loc21_ == 32768)
                           {
                              _loc21_ = li32(_loc10_ - 40);
                              si32(_loc21_,_loc6_ + 76);
                              _loc21_ = li16(_loc6_ + 12);
                              _loc21_ = _loc21_ | 1024;
                              si16(_loc21_,_loc6_ + 12);
                           }
                        }
                     }
                  }
                  _loc21_ = li16(_loc6_ + 12);
                  _loc21_ = _loc21_ | 2048;
                  si16(_loc21_,_loc6_ + 12);
               }
               _loc22_ = _loc15_;
               _loc18_ = _loc19_;
               if(_loc16_ != 0)
               {
                  _loc5_ = int(_loc5_ - 16);
                  _loc21_ = int(_loc10_ - 104);
                  si32(_loc21_,_loc5_ + 4);
                  si32(si16(li16(_loc6_ + 14)),_loc5_);
                  ESP = _loc5_;
                  F__fstat();
                  _loc5_ = int(_loc5_ + 16);
                  _loc21_ = int(eax);
                  if(_loc21_ == 0)
                  {
                     _loc18_ = 1;
                     _loc22_ = _loc18_;
                     if(_loc15_ != 0)
                     {
                        _loc22_ = 0;
                     }
                     if(_loc19_ >= 0)
                     {
                        _loc18_ = 0;
                     }
                     if(_loc19_ != 0)
                     {
                        _loc22_ = _loc18_;
                     }
                     _loc18_ = li32(_loc10_ - 52);
                     _loc20_ = li32(_loc10_ - 56);
                     if(_loc22_ == 0)
                     {
                        _loc11_ = 1;
                        _loc22_ = _loc11_;
                        if(uint(_loc20_) > (uint(_loc15_ ^ -1)))
                        {
                           _loc22_ = 0;
                        }
                        _loc13_ = int(2147483647 - _loc19_);
                        if(_loc18_ > _loc13_)
                        {
                           _loc11_ = 0;
                        }
                        if(_loc18_ != _loc13_)
                        {
                           _loc22_ = _loc11_;
                        }
                        if(_loc22_ == 0)
                        {
                           ESP = _loc5_;
                           F___error();
                           si32(84,int(eax));
                           _loc20_ = -1;
                        }
                     }
                     _loc22_ = int(_loc20_ + _loc15_);
                     _loc11_ = 1;
                     _loc13_ = _loc11_;
                     if(uint(_loc22_) >= uint(_loc20_))
                     {
                        _loc13_ = 0;
                     }
                     if(uint(_loc22_) >= uint(_loc15_))
                     {
                        _loc11_ = _loc13_;
                     }
                     _loc21_ = int(_loc18_ + _loc19_);
                     _loc18_ = int(_loc21_ + _loc11_);
                     if(_loc18_ <= -1)
                     {
                        ESP = _loc5_;
                        F___error();
                        si32(22,int(eax));
                        _loc20_ = -1;
                     }
                     else if(_loc17_ != 0)
                     {
                        _loc13_ = 1;
                        _loc20_ = -1;
                        _loc11_ = _loc13_;
                        if(_loc22_ <= _loc20_)
                        {
                           _loc11_ = 0;
                        }
                        if(_loc18_ >= 0)
                        {
                           _loc13_ = 0;
                        }
                        if(_loc18_ != 0)
                        {
                           _loc11_ = _loc13_;
                        }
                        if(_loc11_ == 0)
                        {
                           ESP = _loc5_;
                           F___error();
                           si32(84,int(eax));
                        }
                     }
                  }
               }
               if(_loc1_ == 0)
               {
                  _loc5_ = int(_loc5_ - 16);
                  _loc21_ = int(_loc10_ - 8);
                  si32(_loc21_,_loc5_ + 4);
                  si32(_loc6_,_loc5_);
                  ESP = _loc5_;
                  F__ftello();
                  _loc5_ = int(_loc5_ + 16);
                  _loc21_ = int(eax);
                  if(_loc21_ == 0)
                  {
                  }
               }
               _loc11_ = li16(_loc6_ + 12);
               _loc21_ = _loc11_ & 8192;
               if(_loc21_ == 0)
               {
                  _loc1_ = li32(_loc6_ + 48);
                  if(_loc1_ != 0)
                  {
                     _loc20_ = li32(_loc6_ + 16);
                     _loc21_ = li32(_loc6_ + 56);
                     _loc14_ = _loc21_ - _loc20_;
                     _loc4_ = li32(_loc6_ + 4);
                     _loc7_ = li32(_loc10_ - 8);
                     _loc8_ = int(_loc4_ + _loc7_);
                     _loc9_ = 1;
                     _loc3_ = _loc9_;
                     if(uint(_loc8_) >= uint(_loc14_))
                     {
                        _loc3_ = 0;
                     }
                     _loc13_ = _loc9_;
                     if(uint(_loc8_) >= uint(_loc4_))
                     {
                        _loc13_ = 0;
                     }
                     if(uint(_loc8_) >= uint(_loc7_))
                     {
                        _loc9_ = _loc13_;
                     }
                     _loc21_ = int(_loc10_ - 8);
                     _loc21_ = _loc21_ | 4;
                     var _loc2_:* = li32(_loc21_);
                     var _loc12_:* = _loc4_ >> 31;
                     _loc12_ = int(_loc12_ + _loc2_);
                     _loc12_ = int(_loc12_ + _loc9_);
                     _loc13_ = int(_loc12_ - _loc3_);
                     si32(_loc13_,_loc21_);
                     _loc8_ = int(_loc8_ - _loc14_);
                     si32(_loc8_,_loc10_ - 8);
                     _loc21_ = li32(_loc6_ + 60);
                     _loc14_ = _loc14_ + _loc21_;
                  }
                  else
                  {
                     _loc20_ = li32(_loc6_ + 16);
                     _loc21_ = li32(_loc6_);
                     _loc14_ = _loc21_ - _loc20_;
                     _loc13_ = 1;
                     _loc8_ = li32(_loc10_ - 8);
                     if(uint(_loc8_) >= uint(_loc14_))
                     {
                        _loc13_ = 0;
                     }
                     _loc21_ = int(_loc10_ - 8);
                     _loc12_ = _loc21_ | 4;
                     _loc21_ = li32(_loc12_);
                     _loc13_ = int(_loc21_ - _loc13_);
                     si32(_loc13_,_loc12_);
                     _loc8_ = int(_loc8_ - _loc14_);
                     si32(_loc8_,_loc10_ - 8);
                     _loc21_ = li32(_loc6_ + 4);
                     _loc14_ = _loc21_ + _loc14_;
                  }
                  _loc9_ = 1;
                  _loc3_ = _loc9_;
                  if(uint(_loc22_) >= uint(_loc8_))
                  {
                     _loc3_ = 0;
                  }
                  if(_loc18_ >= _loc13_)
                  {
                     _loc9_ = 0;
                  }
                  if(_loc18_ != _loc13_)
                  {
                     _loc3_ = _loc9_;
                  }
                  if(_loc3_ == 0)
                  {
                     _loc3_ = int(_loc14_ + _loc8_);
                     _loc9_ = 1;
                     _loc4_ = _loc9_;
                     if(uint(_loc3_) >= uint(_loc14_))
                     {
                        _loc4_ = 0;
                     }
                     _loc7_ = _loc9_;
                     if(uint(_loc3_) >= uint(_loc8_))
                     {
                        _loc7_ = _loc4_;
                     }
                     _loc4_ = int(_loc13_ + _loc7_);
                     _loc13_ = _loc9_;
                     if(_loc4_ > _loc18_)
                     {
                        _loc13_ = 0;
                     }
                     if(uint(_loc3_) > uint(_loc22_))
                     {
                        _loc9_ = 0;
                     }
                     if(_loc4_ != _loc18_)
                     {
                        _loc9_ = _loc13_;
                     }
                     if(_loc9_ == 0)
                     {
                        _loc21_ = int(_loc22_ - _loc8_);
                        _loc12_ = int(_loc20_ + _loc21_);
                        si32(_loc12_,_loc6_);
                        _loc21_ = int(_loc14_ - _loc21_);
                        si32(_loc21_,_loc6_ + 4);
                        if(_loc1_ != 0)
                        {
                           if(_loc1_ != int(_loc6_ + 64))
                           {
                              _loc5_ = int(_loc5_ - 16);
                              si32(_loc1_,_loc5_);
                              ESP = _loc5_;
                              F_free();
                              _loc5_ = int(_loc5_ + 16);
                              _loc11_ = li16(_loc6_ + 12);
                           }
                           si32(0,_loc6_ + 48);
                        }
                        _loc21_ = _loc11_ & 65503;
                        si16(_loc21_,_loc6_ + 12);
                        _loc5_ = int(_loc5_ - 16);
                        si32(128,_loc5_ + 8);
                        _loc20_ = 0;
                        si32(_loc20_,_loc5_ + 4);
                        _loc21_ = int(_loc6_ + 104);
                        si32(_loc21_,_loc5_);
                        ESP = _loc5_;
                        Fmemset();
                        _loc5_ = int(_loc5_ + 16);
                     }
                  }
               }
               _loc21_ = li32(_loc6_ + 76);
               _loc21_ = int(0 - _loc21_);
               _loc12_ = _loc21_ >> 31;
               _loc12_ = _loc12_ & _loc18_;
               _loc2_ = int(_loc10_ - 8);
               _loc2_ = _loc2_ | 4;
               si32(_loc12_,_loc2_);
               _loc21_ = _loc21_ & _loc22_;
               si32(_loc21_,_loc10_ - 8);
               _loc5_ = int(_loc5_ - 16);
               _loc20_ = 0;
               si32(_loc20_,_loc5_ + 12);
               si32(_loc12_,_loc5_ + 8);
               si32(_loc21_,_loc5_ + 4);
               si32(_loc6_,_loc5_);
               ESP = _loc5_;
               F__sseek();
               _loc5_ = int(_loc5_ + 16);
               _loc12_ = int(eax);
               _loc21_ = int(edx);
               _loc21_ = _loc12_ & _loc21_;
               if(_loc21_ != -1)
               {
                  si32(_loc20_,_loc6_ + 4);
                  _loc21_ = li32(_loc6_ + 16);
                  si32(_loc21_,_loc6_);
                  _loc18_ = li32(_loc6_ + 48);
                  if(_loc18_ != 0)
                  {
                     if(_loc18_ != int(_loc6_ + 64))
                     {
                        _loc5_ = int(_loc5_ - 16);
                        si32(_loc18_,_loc5_);
                        ESP = _loc5_;
                        F_free();
                        _loc5_ = int(_loc5_ + 16);
                     }
                     si32(_loc20_,_loc6_ + 48);
                  }
                  _loc18_ = li32(_loc10_ - 8);
                  if(_loc22_ != _loc18_)
                  {
                     _loc5_ = int(_loc5_ - 16);
                     si32(_loc6_,_loc5_);
                     ESP = _loc5_;
                     F___srefill();
                     _loc5_ = int(_loc5_ + 16);
                     _loc21_ = int(eax);
                     if(_loc21_ == 0)
                     {
                        _loc22_ = int(_loc22_ - _loc18_);
                        _loc18_ = li32(_loc6_ + 4);
                        if(uint(_loc18_) >= uint(_loc22_))
                        {
                           _loc21_ = li32(_loc6_);
                           _loc21_ = int(_loc21_ + _loc22_);
                           si32(_loc21_,_loc6_);
                           _loc21_ = int(_loc18_ - _loc22_);
                           si32(_loc21_,_loc6_ + 4);
                        }
                     }
                  }
                  _loc21_ = li16(_loc6_ + 12);
                  _loc21_ = _loc21_ & 65503;
                  si16(_loc21_,_loc6_ + 12);
                  _loc5_ = int(_loc5_ - 16);
                  si32(128,_loc5_ + 8);
                  si32(_loc20_,_loc5_ + 4);
                  _loc21_ = int(_loc6_ + 104);
                  si32(_loc21_,_loc5_);
                  ESP = _loc5_;
                  Fmemset();
                  _loc5_ = int(_loc5_ + 16);
               }
            }
            _loc5_ = int(_loc5_ - 16);
            si32(_loc6_,_loc5_);
            ESP = _loc5_;
            F___sflush();
            _loc20_ = -1;
            _loc5_ = int(_loc5_ + 16);
            _loc21_ = int(eax);
            if(_loc21_ == 0)
            {
               _loc5_ = int(_loc5_ - 16);
               si32(_loc16_,_loc5_ + 12);
               si32(_loc15_,_loc5_ + 4);
               si32(_loc6_,_loc5_);
               si32(_loc19_,_loc5_ + 8);
               ESP = _loc5_;
               F__sseek();
               _loc5_ = int(_loc5_ + 16);
               _loc15_ = int(eax);
               _loc19_ = int(edx);
               _loc20_ = -1;
               if((_loc15_ & _loc19_) != -1)
               {
                  if(_loc17_ != 0)
                  {
                     _loc16_ = 1;
                     _loc20_ = -1;
                     _loc17_ = _loc16_;
                     if(_loc15_ <= _loc20_)
                     {
                        _loc17_ = 0;
                     }
                     if(_loc19_ >= 0)
                     {
                        _loc16_ = 0;
                     }
                     if(_loc19_ != 0)
                     {
                        _loc17_ = _loc16_;
                     }
                     if(_loc17_ == 0)
                     {
                        _loc21_ = li16(_loc6_ + 12);
                        _loc21_ = _loc21_ | 64;
                        si16(_loc21_,_loc6_ + 12);
                        ESP = _loc5_;
                        F___error();
                        si32(84,int(eax));
                     }
                  }
                  _loc17_ = li32(_loc6_ + 48);
                  if(_loc17_ != 0)
                  {
                     if(_loc17_ != int(_loc6_ + 64))
                     {
                        _loc5_ = int(_loc5_ - 16);
                        si32(_loc17_,_loc5_);
                        ESP = _loc5_;
                        F_free();
                        _loc5_ = int(_loc5_ + 16);
                     }
                     si32(0,_loc6_ + 48);
                  }
                  _loc21_ = li32(_loc6_ + 16);
                  si32(_loc21_,_loc6_);
                  _loc20_ = 0;
                  si32(_loc20_,_loc6_ + 4);
                  _loc21_ = li16(_loc6_ + 12);
                  _loc21_ = _loc21_ & 65503;
                  si16(_loc21_,_loc6_ + 12);
                  _loc5_ = int(_loc5_ - 16);
                  si32(128,_loc5_ + 8);
                  si32(_loc20_,_loc5_ + 4);
                  _loc21_ = int(_loc6_ + 104);
                  si32(_loc21_,_loc5_);
                  ESP = _loc5_;
                  Fmemset();
                  _loc5_ = int(_loc5_ + 16);
               }
            }
         }
         else if(_loc19_ <= -1)
         {
            ESP = _loc5_;
            F___error();
            si32(22,int(eax));
            _loc20_ = -1;
         }
         _loc21_ = int(_loc10_ - 8);
         _loc21_ = _loc21_ | 4;
         _loc1_ = 0;
         si32(_loc1_,_loc21_);
         si32(_loc1_,_loc10_ - 8);
         _loc15_ = _loc18_;
         §§goto(addr413);
      }
      eax = _loc20_;
      _loc5_ = _loc10_;
      ESP = _loc5_;
   }
}
